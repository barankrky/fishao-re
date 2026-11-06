package com.ax3.fishao.locations.privateHouse.interior.view
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class _94cc81c5cf19422705d8598d extends _04cce4e240ff9bea66c1b7f7
   {
      
      protected var _source:DisplayObjectContainer = new Sprite();
      
      public function _94cc81c5cf19422705d8598d(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._source);
         this.init();
      }
      
      private function init() : void
      {
      }
      
      public function _0ad9c1fdb902a66dc9200334(param1:DisplayObjectContainer) : void
      {
         param1.addChild(this._source);
      }
      
      public function load() : void
      {
      }
      
      public function _2470e86c95bcc4626cc127cf(param1:DisplayObjectContainer) : void
      {
         var _loc2_:int = 0x76B26E4A ^ 0x2CCCCF80 ^ 0x4C712158 ^ 0x6DE5132B;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5BCA96C2 ^ -1792618490 ^ -1411760116 ^ 0x1EDC9571))
            {
               case 0:
                  if(this._source.parent == param1)
                  {
                     _loc2_ = 0x5462E981 ^ -1199088457 ^ 0x3C2A720D ^ -1423616896;
                  }
                  else
                  {
                     _loc2_ = 0x7D285A4A ^ -1951468430 ^ 0x3643BA3D ^ -1154512963;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  param1.removeChild(this._source);
                  _loc2_ = -825572980 ^ 0x6B89D176 ^ 0x4D5770E8 ^ -1812008022;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

