package com.ax3.fishao.locations.base
{
   import com.ax3.fishao.locations.aquayama._ebf8a819d6b9763d3314defe;
   import com.ax3.fishao.locations.club_area._1905259467717136435ce7db;
   import com.ax3.fishao.locations.cool_mountain._f6ad18ca9af23c7fc3c4d6f8;
   import com.ax3.fishao.locations.decorationMarket._b28b8f38ab58a6efb3567720;
   import com.ax3.fishao.locations.furniture_factory._79f62ae7f3b54f8ffcd369e4;
   import com.ax3.fishao.locations.laketown._c009b8789f8ccb5349817635;
   import com.ax3.fishao.locations.littleRio._724bde8233eeef5b09511d8c;
   import com.ax3.fishao.locations.lostValley._8adc057f33fef8ab2d5dd0d2;
   import com.ax3.fishao.locations.lucky_raft._38df3f4f44c1d1f3ed036ac3;
   import com.ax3.fishao.locations.marshville._6c9355ed2a14a0afdaa3f32b;
   import com.ax3.fishao.locations.mystic_desert._e35a33892d68d4d25cabe353;
   import com.ax3.fishao.locations.palmIsland._1b141b5c2c59d77012d7d70f;
   import com.ax3.fishao.locations.panheiraBeach._c2fd3cf9215a962ef6341b2c;
   import com.ax3.fishao.locations.pirateCave._3d43cf5e9b232a13933e3336;
   import com.ax3.fishao.locations.privateHouse._87a2b64ec17c6fb7cbdd79f4;
   import com.ax3.fishao.locations.rio._de00f89231bcfcd042af6bc5;
   import com.ax3.fishao.locations.thombani_town._21afd67bad2d696e950123cd;
   import com.ax3.fishao.locations.treeCave._b024a3c69c1b7bae4e3955b1;
   
   public class _b4cef8d838b2ff6c7a909a6e
   {
      
      public function _b4cef8d838b2ff6c7a909a6e()
      {
         super();
      }
      
      public static function _3536e00a076cf84463e9eaaa(param1:int) : _bd60f9ad6ef4aaf28041ce8f
      {
         var _loc2_:_bd60f9ad6ef4aaf28041ce8f = null;
         switch(param1)
         {
            case _24fc30cfc3c855ea21a231e8.LOCATION_1_LAKETOWN.id:
               §§push(0x13392D20 ^ 0x1C17388A ^ 0x12F0E23C ^ 0x1DDEF796);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_2_RIO.id:
               §§push(-1132091849 ^ -650673816 ^ 0x4BCF35EA ^ 0x2E7D12B4);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_3_PINHEIRA_BEACH.id:
               §§push(0x16D9516B ^ 0x58798C00 ^ -1096311148 ^ -267959299);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_4_COOL_MOUNTAIN.id:
               §§push(0x73AF3DCA ^ -493731801 ^ 0x3DCF9EB3 ^ -1393368227);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_5_MYSTIC_DESERT.id:
               §§push(-1310696842 ^ 0x3EC8FD85 ^ 0x4AC789BC ^ -974180789);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_7_AQUAYAMA.id:
               §§push(-245087513 ^ -1295002930 ^ 0x1751F6D3 ^ 0x54FA66FF);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_9_THOMBANI_TOWN.id:
               §§push(0x21E4E17E ^ 0x732F2A5A ^ 0x52D33440 ^ 0x18FF62);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_10_MARSHVILLE.id:
               §§push(0x7C2F49B1 ^ -1521518537 ^ 0x10864836 ^ -907642441);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_11_PALM_ISLAND.id:
               §§push(0x36640F3C ^ 0x1B76941F ^ -1655483296 ^ -1337864373);
               break;
            case _24fc30cfc3c855ea21a231e8.LOCATION_12_LUCKY_RAFT.id:
               §§push(-50453861 ^ -1391795505 ^ 0x5E0F44CC ^ 0x0FFB8491);
               break;
            case _24fc30cfc3c855ea21a231e8.CLUB_AREA.id:
               §§push(-924471818 ^ 0x619954A7 ^ 0x350FC4CB ^ -1670169200);
               break;
            default:
               §§push(0x624B8BA6 ^ 0x500A11B9 ^ -385674516 ^ -616396552);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = new _c009b8789f8ccb5349817635();
               break;
            case 1:
               _loc2_ = new _de00f89231bcfcd042af6bc5();
               break;
            case 2:
               _loc2_ = new _c2fd3cf9215a962ef6341b2c();
               break;
            case 3:
               _loc2_ = new _f6ad18ca9af23c7fc3c4d6f8();
               break;
            case 4:
               _loc2_ = new _e35a33892d68d4d25cabe353();
               break;
            case 5:
               _loc2_ = new _ebf8a819d6b9763d3314defe();
               break;
            case 6:
               _loc2_ = new _21afd67bad2d696e950123cd();
               break;
            case 7:
               _loc2_ = new _6c9355ed2a14a0afdaa3f32b();
               break;
            case 8:
               _loc2_ = new _1b141b5c2c59d77012d7d70f();
               break;
            case 9:
               _loc2_ = new _38df3f4f44c1d1f3ed036ac3();
               break;
            case 10:
               _loc2_ = new _1905259467717136435ce7db();
               break;
            default:
               _loc2_ = new _bd60f9ad6ef4aaf28041ce8f();
         }
         return _loc2_;
      }
      
      public static function _8f1693cd8a2a16fc0e136f32(param1:int) : _bd60f9ad6ef4aaf28041ce8f
      {
         var _loc2_:_bd60f9ad6ef4aaf28041ce8f = null;
         var _loc3_:int = param1 < (0x4044846A ^ 0x13A99755 ^ 0x3F461537 ^ 0x6CAB066C) ? int(param1 + (-136695006 ^ -540094560 ^ -185406380 ^ -588902222)) : param1;
         switch(_loc3_)
         {
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_1_DECORMARKET.id:
               §§push(-1894758949 ^ 0x69A3D787 ^ 0x240F0797 ^ -1027828277);
               break;
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_2_LITTLE_RIO.id:
               §§push(-2088111925 ^ -1223545285 ^ 0x34FA10D9 ^ 0x61CE28);
               break;
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_5_FURNITURE_FACTORY.id:
               §§push(0x35E1EE2E ^ 0x55AC5D3D ^ -1771506759 ^ -165330776);
               break;
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_7_LOST_VALLEY.id:
               §§push(-1732454239 ^ -1587611569 ^ 0x61CEFAEF ^ 0x582CDA02);
               break;
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_10_TREE_CAVE.id:
               §§push(0x24B48DC0 ^ 0x57981508 ^ 0x471E9A71 ^ 0x343202BD);
               break;
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_11_PIRATE_CAVE.id:
               §§push(0x4AA8A9F7 ^ -613372037 ^ 0x0E2A9D49 ^ -1611490368);
               break;
            case _24fc30cfc3c855ea21a231e8.PRIVATE_HOUSE.id:
               §§push(0x56E0F004 ^ 0x21EE20F6 ^ 0x3BB32BD8 ^ 0x4CBDFB2C);
               break;
            case _24fc30cfc3c855ea21a231e8.FRIENDS_PRIVATE_HOUSE.id:
               §§push(-1262304985 ^ -1793151625 ^ 0xC183BC ^ 0x211DEFEB);
               break;
            case _24fc30cfc3c855ea21a231e8.TOURNAMENT_4.id:
               §§push(-151249325 ^ 0x2CD52A5C ^ 0x32735B2F ^ -396726488);
               break;
            default:
               §§push(-2007918578 ^ -1940601426 ^ 0x49535888 ^ 0x4D560521);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = new _b28b8f38ab58a6efb3567720();
               break;
            case 1:
               _loc2_ = new _724bde8233eeef5b09511d8c();
               break;
            case 2:
               _loc2_ = new _79f62ae7f3b54f8ffcd369e4();
               break;
            case 3:
               _loc2_ = new _8adc057f33fef8ab2d5dd0d2();
               break;
            case 4:
               _loc2_ = new _b024a3c69c1b7bae4e3955b1();
               break;
            case 5:
               _loc2_ = new _3d43cf5e9b232a13933e3336();
               break;
            case 6:
            case 7:
               _loc2_ = new _87a2b64ec17c6fb7cbdd79f4();
               break;
            case 8:
               _loc2_ = new _1b141b5c2c59d77012d7d70f();
               break;
            default:
               _loc2_ = new _bd60f9ad6ef4aaf28041ce8f();
         }
         return _loc2_;
      }
   }
}

