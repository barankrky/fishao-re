#!/usr/bin/env python3
"""Patch BiteProcessPanelAsset.update() to keep the minigame pointer centered.

The client's update() loop ends each tick with:

    _relativePos += _sail

Replacing that with `_relativePos = 50` (center of the bar, inside the green
zone) makes every tick count as a green-zone tick: `_progress` increments at
the normal rate, the bar fills visibly, and the game ends with `stopWithWin()`
after `_gameSize` ticks. Because the result is sent with the same timing as a
legitimate win, the server grants the fish.

Do not replace the whole method with `stopWithWin()`: sending
`FishingRsltReq` ~1.2 s after `FishingResp` is too early for the server and the
fish is not granted.

Byte pattern (FISHAO client 2.4.0):

    d0 d0 66 81 42 d0 66 80 42 a0 61 81 42
    ^  ^  ^        ^  ^        ^  ^
    |  |  |        |  |        |  setproperty _relativePos
    |  |  |        |  |        add
    |  |  |        |  getproperty _sail
    |  |  |        getlocal0
    |  |  getproperty _relativePos
    |  getlocal0
    getlocal0 (setproperty receiver)

The 5-byte `d0 66 80 42 a0` is replaced with:

    29 24 32 75 75   pop; pushbyte 50; convert_d; convert_d

Byte pattern (FISHAO client 2.5.1, obfuscated):

    d0 d0 66 86 42 d0 66 85 42 a0 61 86 42
    ^  ^  ^        ^  ^        ^  ^
    |  |  |        |  |        |  setproperty _relativePos
    |  |  |        |  |        add
    |  |  |        |  getproperty _sail
    |  |  |        getlocal0
    |  |  getproperty _relativePos
    |  getlocal0
    getlocal0 (setproperty receiver)

The whole 13-byte sequence is replaced with:

    d0 24 32 75 61 86 42 02 02 02 02 02 02
    getlocal0; pushbyte 50; convert_d; setproperty; nop x6

Usage:
    python tools/patch_hold_green.py clients/2.5.1/FlashFishaoGame.swf runtime/out/FlashFishaoGame.hold.swf
"""

import sys

from swf import SWF

PATTERN_240 = bytes.fromhex("d0d0668142d0668042a0618142")
REPLACEMENT_240 = bytes([0x29, 0x24, 0x32, 0x75, 0x75])  # pop; pushbyte 50; convert_d x2

PATTERN_251 = bytes.fromhex("d0d0668642d0668542a0618642")
REPLACEMENT_251 = bytes.fromhex("d0243275618642020202020202")  # _relativePos = 50 + nops


def main():
    if len(sys.argv) != 3:
        raise SystemExit("usage: patch_hold_green.py <in.swf> <out.swf>")
    src, dst = sys.argv[1], sys.argv[2]

    swf = SWF(src)
    tags = swf.abc_tags()

    for label, pattern, replacement in (
        ("2.4.0", PATTERN_240, REPLACEMENT_240),
        ("2.5.1", PATTERN_251, REPLACEMENT_251),
    ):
        for tag in tags:
            abc = bytearray(tag["data"])
            count = abc.count(pattern)
            if count == 0:
                continue
            if count != 1:
                raise SystemExit(f"{label} pattern found {count} times (expected 1)")

            off = abc.find(pattern)
            if label == "2.4.0":
                off += 5  # skip to the `d0 66 80 42 a0` part
            abc[off:off + len(replacement)] = replacement
            swf.body[tag["abc_start"]:tag["abc_start"] + len(abc)] = abc
            swf.save(dst, compressed=True)

            print(f"patched {label} _relativePos += _sail @ ABC+0x{off:x}")
            print("wrote", dst)
            return

    raise SystemExit("pattern found 0 times (expected 1 for 2.4.0 or 2.5.1)")


if __name__ == "__main__":
    main()
