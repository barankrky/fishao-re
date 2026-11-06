package com.ax3.fishao.locations
{
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.sound._c5aa52fca149ae6f0be6dc5b;
   import flash.geom.Point;
   
   public class _2961e1e6c0eaf071b25e5825 extends _eb33c79ced81d8f5ac0ea91d
   {
      
      private var _eef74ff427c416c8fb2ab370:Boolean;
      
      public function _2961e1e6c0eaf071b25e5825(param1:_c5aa52fca149ae6f0be6dc5b, param2:Point, param3:int)
      {
         super(param1,param2,param3);
         if(_position.x == (-1555140629 ^ -1137304921 ^ 0x2685CE90 ^ -972930013))
         {
            this._eef74ff427c416c8fb2ab370 = true;
         }
         else
         {
            this._eef74ff427c416c8fb2ab370 = false;
         }
      }
      
      override public function _cef954975145aca3fbaac5c0(param1:Point, param2:Boolean = false) : void
      {
         var _loc3_:int = -1332468317 ^ -1863103907 ^ 0x47F82F1E ^ 0x679F40E0;
         if(param2 || this._eef74ff427c416c8fb2ab370 && int(_lastPlayerPosition.y / (-829966680 ^ 0x07248A16 ^ -795533031 ^ 0x19361DAD)) != int(param1.y / (-1747938162 ^ 0x3AA54CDD ^ 0x4EBDBFCD ^ -473405548)) || int(_lastPlayerPosition.x / (0x3CFE6808 ^ 0x6269A9B7 ^ -1765325358 ^ -934247321)) != int(param1.x / (-1927611826 ^ 0x6A22AE95 ^ 0x6585575A ^ -2101542005)))
         {
            _lastPlayerPosition.x = param1.x;
            _lastPlayerPosition.y = param1.y;
            if(this._eef74ff427c416c8fb2ab370)
            {
               _loc3_ = Math.abs(_lastPlayerPosition.y - _position.y);
            }
            else
            {
               _loc3_ = Math.abs(_lastPlayerPosition.x - _position.x);
            }
            if(_loc3_ > _distance)
            {
               if(_sound != null)
               {
                  _sound.stop();
                  _3a8a2602dcf9bf49b62e62af._ba89be6a356850f04a6c2e06(_soundFile);
               }
            }
            else
            {
               if(_sound == null)
               {
                  _sound = _3a8a2602dcf9bf49b62e62af._8752baf0db9485e4cad4f4b4(_soundFile);
               }
               if(_sound != null)
               {
                  _sound.distanceVolume = (-1948780422 ^ -343791313 ^ -2125822114 ^ -518040054) - limit(_loc3_ / _distance,0x72384497 ^ -767539954 ^ -1036179430 ^ 0x62452983,-2079899890 ^ -261200100 ^ 0x2D4492EC ^ 0x592DCAFF);
               }
            }
         }
      }
   }
}

