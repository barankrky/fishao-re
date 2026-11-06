#!/usr/bin/env python3
"""Minimal SWF container reader/writer used by the client patch tools.

Parses the tag stream far enough to find DoABC tags and can rewrite the
decompressed body while preserving the original compression (CWS/zlib).
"""

import struct
import zlib

TAG_DO_ABC = 82
TAG_DO_ABC_DEPRECATED = 72


def write_u30(v):
    """AVM2 variable-length 30-bit value (7 bits per byte, little-endian groups)."""
    out = bytearray()
    while True:
        byte = v & 0x7F
        v >>= 7
        if v:
            out.append(byte | 0x80)
        else:
            out.append(byte)
            return bytes(out)


class SWF:
    def __init__(self, path):
        raw = open(path, "rb").read()
        sig = raw[:3]
        if sig == b"CWS":
            self.version = raw[3]
            self.body = bytearray(zlib.decompress(raw[8:]))
            self.compressed = True
        elif sig == b"FWS":
            self.version = raw[3]
            self.body = bytearray(raw[8:])
            self.compressed = False
        else:
            raise ValueError("not a SWF: %r" % sig)
        self._parse_tags()

    def _parse_tags(self):
        b = self.body
        nbits = b[0] >> 3
        # 5-bit nbits + 4*nbits bits of rect data; nbits lives in the first byte
        pos = 1 + (4 * nbits + 7) // 8
        pos += 4  # frame rate (u16) + frame count (u16)
        self.tags_start = pos
        self.tags = []
        while pos + 2 <= len(b):
            code_len = struct.unpack_from("<H", b, pos)[0]
            pos += 2
            code = code_len >> 6
            length = code_len & 0x3F
            if length == 0x3F:
                length = struct.unpack_from("<I", b, pos)[0]
                pos += 4
            self.tags.append({"code": code, "data_off": pos, "length": length})
            pos += length
            if code == 0:  # End
                break

    def abc_tags(self):
        out = []
        for t in self.tags:
            if t["code"] not in (TAG_DO_ABC, TAG_DO_ABC_DEPRECATED):
                continue
            start = t["data_off"]
            flags = struct.unpack_from("<I", self.body, start)[0]
            pos = start + 4
            name_start = pos
            while self.body[pos] != 0:
                pos += 1
            name = self.body[name_start:pos].decode("utf-8", "replace")
            pos += 1  # NUL
            out.append({
                "name": name,
                "flags": flags,
                "abc_start": pos,
                "abc_end": start + t["length"],
                "data": bytes(self.body[pos:start + t["length"]]),
            })
        return out

    def prepend_abc(self, name, data, flags=0):
        """Insert a DoABC tag at the start of the tag stream and reparse."""
        payload = struct.pack("<I", flags) + name.encode("utf-8") + bytes([0]) + data
        if len(payload) >= 0x3F:
            tag = struct.pack("<H", (TAG_DO_ABC << 6) | 0x3F)
            tag += struct.pack("<I", len(payload))
        else:
            tag = struct.pack("<H", (TAG_DO_ABC << 6) | len(payload))
        tag += payload
        off = self.tags_start
        self.body[off:off] = tag
        self._parse_tags()

    def append_abc(self, name, data, flags=0):
        """Append a new DoABC tag before the End tag and reparse."""
        payload = struct.pack("<I", flags) + name.encode("utf-8") + bytes([0]) + data
        if len(payload) >= 0x3F:
            tag = struct.pack("<H", (TAG_DO_ABC << 6) | 0x3F)
            tag += struct.pack("<I", len(payload))
        else:
            tag = struct.pack("<H", (TAG_DO_ABC << 6) | len(payload))
        tag += payload

        end = self.tags[-1]
        if end["code"] != 0:
            raise ValueError("last tag is not End")
        off = end["data_off"] - 2  # End uses the short header
        self.body[off:off] = tag
        self._parse_tags()

    def save(self, path, compressed=True):
        header = bytearray()
        header += b"CWS" if compressed else b"FWS"
        header += bytes([self.version])
        header += struct.pack("<I", len(self.body) + 8)
        header += zlib.compress(bytes(self.body), 9) if compressed else bytes(self.body)
        open(path, "wb").write(bytes(header))
