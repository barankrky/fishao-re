package com.ax3.fishao.tutorial.helpers
{
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class _48295d9d6d9a3a424d2886ed extends _450aa236949c3aac4e3c79f5
   {
      
      private var _ad83d84bf83e18f4a28895a5:gViewTurorialArrow;
      
      private var _3ee00930744709dd2d14c50d:Function;
      
      public function _48295d9d6d9a3a424d2886ed()
      {
         super();
         this.init();
      }
      
      public static function _d95bc8ebedf961aa574d13ea(param1:DisplayObject, param2:Point = null) : Function
      {
         var result:Function = null;
         var view:DisplayObject = param1;
         var offset:Point = param2;
         if(offset == null)
         {
            var _temp_3:* = §§newactivation();
            var _temp_2:* = §§findproperty(Point);
            var _temp_1:* = -1339414621 ^ 0x4D1033A8 ^ -183067289 ^ 0x082C896C;
            offset = new Point(_temp_1,_temp_1);
         }
         result = function():Point
         {
            return view.localToGlobal(offset);
         };
         return result;
      }
      
      override protected function _b3c655b16ded936959ea78cd(param1:Event) : void
      {
         this.updateArrow();
      }
      
      private function init() : void
      {
         this._ad83d84bf83e18f4a28895a5 = new gViewTurorialArrow();
      }
      
      public function updateArrow() : void
      {
         if(this._ad83d84bf83e18f4a28895a5.parent == null)
         {
            return;
         }
         var _loc1_:Point = this._3ee00930744709dd2d14c50d() as Point;
         if(_loc1_ != null)
         {
            this._ad83d84bf83e18f4a28895a5.x = _loc1_.x;
            this._ad83d84bf83e18f4a28895a5.y = _loc1_.y;
         }
      }
      
      public function _1374d9ea563f44f5aedd5b29(param1:Function, param2:Number) : void
      {
         _754e2088813c7c737fc97294(param1);
         this._e2dc7bfe294f5d88c4d9aa9d();
         this._3ee00930744709dd2d14c50d = param1;
         this._ad83d84bf83e18f4a28895a5.rotation = param2;
         _0737efdbd5337ba3fbc64b2e.TUTORIAL_LAYER.addChild(this._ad83d84bf83e18f4a28895a5);
         this._b3c655b16ded936959ea78cd(null);
      }
      
      public function _e2dc7bfe294f5d88c4d9aa9d() : void
      {
         var _loc1_:int = -522369622 ^ 0x7DF6E2C6 ^ 0x20987C23 ^ 0x75C0BE04;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x6F8CE20D ^ 0x645DFEC4 ^ 0x29EB06B6 ^ -364282058))
            {
               case 0:
                  this._ad83d84bf83e18f4a28895a5.parent.removeChild(this._ad83d84bf83e18f4a28895a5);
                  _loc1_ = -530866949 ^ 0x2BF5E66D ^ -37478284 ^ -31899734;
                  break;
               case 1:
                  this._3ee00930744709dd2d14c50d = null;
                  return;
               case 2:
                  if(this._ad83d84bf83e18f4a28895a5.parent != null)
                  {
                     _loc1_ = -1609470937 ^ -553016716 ^ 0x5E12881C ^ -377937146;
                  }
                  else
                  {
                     _loc1_ = -1076589103 ^ 0x7F41926A ^ -91465414 ^ -227925047;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

