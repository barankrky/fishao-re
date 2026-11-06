package com.ax3.fishao.requirements
{
   public class _f64d5035ede01b069be48bbf
   {
      
      public function _f64d5035ede01b069be48bbf()
      {
         super();
      }
      
      public static function _b8514e3989ca2f7992b2b976(param1:Object) : Array
      {
         var _loc2_:String = null;
         var _loc3_:_ddb70167c149bc90b647ba30 = null;
         var _loc4_:Array = [];
         for(_loc2_ in param1)
         {
            _loc3_ = null;
            var _loc7_:String = _loc2_;
            switch(_486f3b64ee967395c7114ca7.ERT_PLAYER_LEVEL === _loc7_ ? 0x24764F73 ^ -178905023 ^ 0x2A555F12 ^ -76206048 : (_486f3b64ee967395c7114ca7.ERT_PLAYER_SPENDINGS === _loc7_ ? -637081895 ^ 0x04EB0A1A ^ 0x4B91A2BE ^ -1787015556 : (_486f3b64ee967395c7114ca7.ERT_CATCH_FISH === _loc7_ ? 0x3FF544A3 ^ 0x5DE13BDF ^ 0x3F3CAD6F ^ 0x5D28D211 : (_486f3b64ee967395c7114ca7.ERT_FEATURE === _loc7_ ? 0x37454220 ^ 0x696AC1D2 ^ -414140504 ^ -1182845863 : (_486f3b64ee967395c7114ca7.ERT_CLUB_POINTS === _loc7_ ? -1357865079 ^ 0x2DEF83A5 ^ 0x3300DF98 ^ -1308638288 : (_486f3b64ee967395c7114ca7.ERT_CLUB_UNLOCK_BY_FISHCOINS === _loc7_ ? 0x38F4A394 ^ -580588755 ^ -81400978 ^ 0x1EB5A3D2 : -639275600 ^ 0x499B78AD ^ 0x3FE4D26C ^ -1348810889))))))
            {
               case 0:
                  _loc3_ = new _6cb06e4cc56785b1498c8737(param1[_loc2_]);
                  break;
               case 1:
                  _loc3_ = new _e5b7264c36ccdcf5642bb17d(param1[_loc2_]);
                  break;
               case 2:
                  _loc3_ = new _d78d60f7c516cc10b117f634(param1[_loc2_]);
                  break;
               case 3:
                  _loc3_ = new _d2ab5aeeb51bfbd0a7fb2919();
                  break;
               case 4:
                  _loc3_ = new _db402f1977e6d9d227c729aa(param1[_loc2_]);
                  break;
               case 5:
                  _loc3_ = new _200c41bbe68d5cdf5a0f8ad3(param1[_loc2_]);
            }
            if(_loc3_ != null)
            {
               _loc3_.type = _loc2_;
               _loc4_.push(_loc3_);
            }
         }
         return _loc4_;
      }
   }
}

