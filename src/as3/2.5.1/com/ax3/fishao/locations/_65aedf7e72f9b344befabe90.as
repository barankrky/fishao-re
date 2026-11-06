package com.ax3.fishao.locations
{
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.utils.math.randomRange;
   import com.ax3.utils.sound._5f81675c98bd9838649ed3bd;
   import com.ax3.utils.sound._c5aa52fca149ae6f0be6dc5b;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class _65aedf7e72f9b344befabe90 extends _eb33c79ced81d8f5ac0ea91d
   {
      
      private var _7ac8d49dc050d015a9a0e160:int;
      
      private var _20d85e9c6939e0866bfc2595:int;
      
      private var _abc420999769d205b0bbe5c9:int;
      
      public function _65aedf7e72f9b344befabe90(param1:_c5aa52fca149ae6f0be6dc5b, param2:Point, param3:int, param4:int, param5:int)
      {
         super(param1,param2,param3);
         this._20d85e9c6939e0866bfc2595 = param4;
         this._abc420999769d205b0bbe5c9 = param5;
         this._4f1c59e1fab1cde8b679146e();
      }
      
      private function _4f1c59e1fab1cde8b679146e() : void
      {
         this._7ac8d49dc050d015a9a0e160 = getTimer() + randomRange(this._20d85e9c6939e0866bfc2595,this._abc420999769d205b0bbe5c9);
      }
      
      override protected function _fc9679c12bd140b58567f830() : void
      {
         var _loc1_:int = -1363291796 ^ 0x56392966 ^ 0x33BE26B8 ^ -145032884;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1073389300 ^ -1558683965 ^ -1027150877 ^ -1648626734))
            {
               case 0:
                  if(getTimer() >= this._7ac8d49dc050d015a9a0e160)
                  {
                     _loc1_ = 0x165B079A ^ -1856455885 ^ -1905315504 ^ 0x350CAA06;
                  }
                  else
                  {
                     _loc1_ = 0x75464232 ^ -212108233 ^ 0x176A6BEF ^ -1390972394;
                  }
                  break;
               case 1:
                  this._4f1c59e1fab1cde8b679146e();
                  _sound = _3a8a2602dcf9bf49b62e62af._8752baf0db9485e4cad4f4b4(_soundFile);
                  if(_sound is _5f81675c98bd9838649ed3bd)
                  {
                     _loc1_ = 0x6FF002D1 ^ -604563924 ^ -1256269033 ^ 0x3D79E817;
                  }
                  else
                  {
                     _loc1_ = 0x2AE7ED0C ^ 0x66CF0338 ^ 0x2D1461D8 ^ 0x5D5CA810;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  _sound.addEventListener(Event.SOUND_COMPLETE,this._e918e3fcd416d47b8a204946,false,0x685B2E65 ^ -314731700 ^ 0x7B9C928B ^ -17158238,true);
                  _loc1_ = -1888157768 ^ -1974787256 ^ -560272192 ^ -406513716;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _e918e3fcd416d47b8a204946(param1:Event) : void
      {
         var _loc2_:Object = param1.currentTarget;
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this._e918e3fcd416d47b8a204946);
         if(_sound != null)
         {
            _sound.stop();
            _sound = null;
         }
      }
   }
}

