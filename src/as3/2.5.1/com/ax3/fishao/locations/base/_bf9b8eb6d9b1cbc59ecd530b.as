package com.ax3.fishao.locations.base
{
   import com.ax3.fishao.locations.aquayama._4fe4be035fa328f89afd1c4a;
   import com.ax3.fishao.locations.club_area._d5b5fd2cb7b428793abaa639;
   import com.ax3.fishao.locations.cool_mountain._321d3879e4b12bf5e331f274;
   import com.ax3.fishao.locations.decorationMarket._08482ab86896c1348bb9eecb;
   import com.ax3.fishao.locations.furniture_factory._b970dad26ff2859afdd7f7a1;
   import com.ax3.fishao.locations.laketown._0e14f7c98fc1c2c3dcc27b03;
   import com.ax3.fishao.locations.littleRio._892788fcb4927ed060a0840f;
   import com.ax3.fishao.locations.lostValley._6dcf275ab893b1917ee97aa7;
   import com.ax3.fishao.locations.lucky_raft._efc5e8b39b7563e3b0665cc1;
   import com.ax3.fishao.locations.marshville._47d6b9f0039348f0d7ed7877;
   import com.ax3.fishao.locations.mystic_desert._b00e8def08f33e57da74e1d0;
   import com.ax3.fishao.locations.palmIsland._f4067a57d9559198586ce9c8;
   import com.ax3.fishao.locations.panheiraBeach._9b061a21adeefb2577bb6401;
   import com.ax3.fishao.locations.pirateCave._cf1b8d4916fb1556f76161a9;
   import com.ax3.fishao.locations.privateHouse._c24229eda44b942058106fae;
   import com.ax3.fishao.locations.rio._a08941853c581750ff3fb5de;
   import com.ax3.fishao.locations.thombani_town._72b7916f96a02652eda103ee;
   import com.ax3.fishao.locations.tournaments._cbfd5ba249b6014b04893ab8;
   import com.ax3.fishao.locations.tournaments._e44f79359aa6a2a83cf1f27f;
   import com.ax3.fishao.locations.treeCave._a72299d428e2b0dc5296914a;
   
   public class _bf9b8eb6d9b1cbc59ecd530b
   {
      
      public function _bf9b8eb6d9b1cbc59ecd530b()
      {
         super();
      }
      
      public static function _5070baf12fd8bfbd594a567c(param1:int, param2:_4039c287ddb4ef46ab65ab0e) : _67f8febc099eaa05c48aa41e
      {
         var _loc3_:_67f8febc099eaa05c48aa41e = null;
         switch(param1)
         {
            case _24fc30cfc3c855ea21a231e8.LOCATION_1_LAKETOWN.id:
               §§push(0x2A2B9FBF ^ -1564465930 ^ 0x693C95AD ^ -505991452);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_2_RIO.id:
               §§push(0x5C532A49 ^ -1739143878 ^ -1417240647 ^ 0x6F8370CB);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_3_PINHEIRA_BEACH.id:
               §§push(-152111396 ^ -1563822298 ^ 0x0A36DDA2 ^ 0x5E11DC5A);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_4_COOL_MOUNTAIN.id:
               §§push(-620006439 ^ 0x5988BD23 ^ 0x58096418 ^ -628446495);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_5_MYSTIC_DESERT.id:
               §§push(0x67C14B6C ^ -1072062521 ^ 0x6A8EF6D8 ^ -849993097);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_7_AQUAYAMA.id:
               §§push(0x5769C79C ^ -1695778369 ^ 0x14D043C0 ^ -648675866);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_9_THOMBANI_TOWN.id:
               §§push(0x4127D1E3 ^ 0x6C6D7F32 ^ 0x1EC6FCC9 ^ 0x338C521E);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_10_MARSHVILLE.id:
               §§push(-712371514 ^ 0x45A3CC2D ^ 0x3E1161DA ^ -1372012746);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_11_PALM_ISLAND.id:
               §§push(-428146158 ^ 0x474EE123 ^ 0x38AB5A6C ^ -1717651115);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_12_LUCKY_RAFT.id:
               §§push(-780381883 ^ 0x184C7546 ^ -77335630 ^ 0x3253D7B8);
               break;
            default:
               §§push(-1360387347 ^ -1824790 ^ -174131506 ^ -1534004285);
         }
         switch(§§pop())
         {
            case 0:
               _loc3_ = new _0e14f7c98fc1c2c3dcc27b03(param2);
               break;
            case 1:
               _loc3_ = new _a08941853c581750ff3fb5de(param2);
               break;
            case 2:
               _loc3_ = new _9b061a21adeefb2577bb6401(param2);
               break;
            case 3:
               _loc3_ = new _321d3879e4b12bf5e331f274(param2);
               break;
            case 4:
               _loc3_ = new _b00e8def08f33e57da74e1d0(param2);
               break;
            case 5:
               _loc3_ = new _4fe4be035fa328f89afd1c4a(param2);
               break;
            case 6:
               _loc3_ = new _72b7916f96a02652eda103ee(param2);
               break;
            case 7:
               _loc3_ = new _47d6b9f0039348f0d7ed7877(param2);
               break;
            case 8:
               _loc3_ = new _f4067a57d9559198586ce9c8(param2);
               break;
            case 9:
               _loc3_ = new _efc5e8b39b7563e3b0665cc1(param2);
               break;
            default:
               _loc3_ = new _67f8febc099eaa05c48aa41e(param2);
         }
         return _loc3_;
      }
      
      public static function _7e2836789902095431cad399(param1:int, param2:_4039c287ddb4ef46ab65ab0e) : _67f8febc099eaa05c48aa41e
      {
         var _loc3_:_67f8febc099eaa05c48aa41e = null;
         var _loc4_:int = param1 < (-1131433190 ^ 0x41513F52 ^ -1271411901 ^ 0x49E9476F) ? int(param1 + (0x75DFC76C ^ -713830848 ^ -535033741 ^ 0x40B0013B)) : param1;
         switch(_loc4_)
         {
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_1_DECORMARKET.id:
               §§push(-52779072 ^ 0x6993941F ^ -1457883128 ^ 0x3C534BD7);
               break;
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_2_LITTLE_RIO.id:
               §§push(0x7F9F1308 ^ -40558468 ^ -995009846 ^ 0x46BB69BF);
               break;
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_5_FURNITURE_FACTORY.id:
               §§push(-1696355718 ^ 0x7A00556C ^ -1085736416 ^ 0x5FAB0534);
               break;
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_7_LOST_VALLEY.id:
               §§push(0x6D00CDBB ^ -1228342409 ^ 0x2C8910DB ^ -146725356);
               break;
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_10_TREE_CAVE.id:
               §§push(0x06CB81FD ^ 0x14D7266B ^ -1184179136 ^ -1418298414);
               break;
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_11_PIRATE_CAVE.id:
               §§push(-1690318233 ^ -201158007 ^ 0x47FA77F1 ^ 0x28C72F1A);
               break;
            case _24fc30cfc3c855ea21a231e8.PRIVATE_HOUSE.id:
               §§push(0x1B2625FC ^ 0x6716517F ^ -1240349610 ^ -903761709);
               break;
            case _24fc30cfc3c855ea21a231e8.FRIENDS_PRIVATE_HOUSE.id:
               §§push(0x242E57F7 ^ 0x68BC8115 ^ 0x2A35125F ^ 0x66A7C4BA);
               break;
            case _24fc30cfc3c855ea21a231e8.TOURNAMENT_1.id:
               §§push(-335266125 ^ -507321877 ^ -1664928097 ^ -1861883441);
               break;
            case _24fc30cfc3c855ea21a231e8.TOURNAMENT_2.id:
               §§push(0x078F6351 ^ -223937975 ^ 0x2CC17358 ^ -639047095);
               break;
            case _24fc30cfc3c855ea21a231e8.TOURNAMENT_3.id:
               §§push(-2066175021 ^ 0x127E4A78 ^ -1383437572 ^ 0x3B2C8B5D);
               break;
            case _24fc30cfc3c855ea21a231e8.TOURNAMENT_4.id:
               §§push(0x63A98764 ^ 0x342646BC ^ 0x7ED4251E ^ 0x295BE4CD);
               break;
            case _24fc30cfc3c855ea21a231e8.CLUB_AREA.id:
               §§push(0x2F7F17D6 ^ 0x1EE30512 ^ -1833557250 ^ -1557516234);
               break;
            default:
               §§push(-965171115 ^ 0x1DE1E124 ^ 0x6E6818F7 ^ -1242476149);
         }
         switch(§§pop())
         {
            case 0:
               _loc3_ = new _08482ab86896c1348bb9eecb(param2);
               break;
            case 1:
               _loc3_ = new _892788fcb4927ed060a0840f(param2);
               break;
            case 2:
               _loc3_ = new _b970dad26ff2859afdd7f7a1(param2);
               break;
            case 3:
               _loc3_ = new _6dcf275ab893b1917ee97aa7(param2);
               break;
            case 4:
               _loc3_ = new _a72299d428e2b0dc5296914a(param2);
               break;
            case 5:
               _loc3_ = new _cf1b8d4916fb1556f76161a9(param2);
               break;
            case 6:
            case 7:
               _loc3_ = new _c24229eda44b942058106fae(param2);
               break;
            case 8:
            case 9:
            case 10:
               _loc3_ = new _cbfd5ba249b6014b04893ab8(param2);
               break;
            case 11:
               _loc3_ = new _e44f79359aa6a2a83cf1f27f(param2);
               break;
            case 12:
               _loc3_ = new _d5b5fd2cb7b428793abaa639(param2);
               break;
            default:
               _loc3_ = new _67f8febc099eaa05c48aa41e(param2);
         }
         return _loc3_;
      }
   }
}

