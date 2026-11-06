package com.ax3.fishao.view.wrappers.communication.helpers.base
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.types._5fcc10a7fc801b97496e91aa;
   import com.ax3.fishao.view.wrappers.communication.helpers._543214ab525e26907a7d23e8;
   import com.ax3.fishao.view.wrappers.communication.helpers.club._2435bccf6e0dd26873fb80bb;
   import com.ax3.fishao.view.wrappers.communication.helpers.club._272bccd354a9ae579124e000;
   import com.ax3.fishao.view.wrappers.communication.helpers.club._60b266702dacdf18eef417af;
   import com.ax3.fishao.view.wrappers.communication.helpers.club._692c4b56cdc38dcc90c9f2e1;
   import com.ax3.fishao.view.wrappers.communication.helpers.club._be3bc267a8ad81b901f26d1c;
   import com.ax3.fishao.view.wrappers.communication.helpers.club._db0ab48502305346f55b20a8;
   
   public class _b07da6df1dcbb1425c204a07
   {
      
      public function _b07da6df1dcbb1425c204a07()
      {
         super();
      }
      
      public static function _b12d66f5f98ea546d90fe27a(param1:String) : _a7dc8a3213f2486db7d1e5d8
      {
         var _loc2_:_a7dc8a3213f2486db7d1e5d8 = null;
         switch(param1)
         {
            case _5fcc10a7fc801b97496e91aa.EVENT_END:
               §§push(0x78C58427 ^ -942401222 ^ -1599013269 ^ 0x1FA16376);
               break;
            case _5fcc10a7fc801b97496e91aa.CLUB_TOURNAMENT_END:
               §§push(0x13E69A16 ^ -1789359309 ^ -660794013 ^ 0x5E230447);
               break;
            case _5fcc10a7fc801b97496e91aa.CLUB_GOAL_COMPLETED:
               §§push(0x5C0DA9 ^ 0x4B7E6FC5 ^ 0x196B99AA ^ 0x5249FBC4);
               break;
            case _5fcc10a7fc801b97496e91aa.CLUB_MEMBER_KICKED:
               §§push(0x102A478E ^ 0x0DEA69C7 ^ -853533481 ^ -790613347);
               break;
            case _5fcc10a7fc801b97496e91aa.CLUB_MEMBER_APPROVED:
               §§push(0x5CD353EA ^ 0x3938A2AF ^ -434523118 ^ -2081274541);
               break;
            case _5fcc10a7fc801b97496e91aa.CLUB_MEMBER_REJECTED:
               §§push(-913816673 ^ -1212624139 ^ -116075029 ^ -2027666300);
               break;
            case _5fcc10a7fc801b97496e91aa.CLUB_FISH_UNLOCKED:
               §§push(-699329765 ^ -953105880 ^ 0x2152EAA1 ^ 0x30333B94);
               break;
            default:
               §§push(-1442541161 ^ -534321262 ^ 0x1CDEDC5C ^ 0x56FCAA5E);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = new _543214ab525e26907a7d23e8();
               break;
            case 1:
               _loc2_ = new _272bccd354a9ae579124e000();
               break;
            case 2:
               _loc2_ = new _2435bccf6e0dd26873fb80bb();
               break;
            case 3:
               _loc2_ = new _db0ab48502305346f55b20a8();
               break;
            case 4:
               _loc2_ = new _be3bc267a8ad81b901f26d1c();
               break;
            case 5:
               _loc2_ = new _692c4b56cdc38dcc90c9f2e1();
               break;
            case 6:
               _loc2_ = new _60b266702dacdf18eef417af();
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
   }
}

