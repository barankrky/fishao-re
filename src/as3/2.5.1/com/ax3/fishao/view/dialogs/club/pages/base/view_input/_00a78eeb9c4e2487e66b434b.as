package com.ax3.fishao.view.dialogs.club.pages.base.view_input
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.Sprite;
   import flash.events.FocusEvent;
   import flash.text.TextField;
   
   public class _00a78eeb9c4e2487e66b434b extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _2c23a0bf596184a1429654be:TextField;
      
      private var _e9d87c4d5384b002db342de6:Function;
      
      private var _37be4258610e38270eceeefd:String;
      
      public function _00a78eeb9c4e2487e66b434b(param1:_988093efdfa36e13bfd6c6cf, param2:TextField)
      {
         super(param1,new Sprite());
         this._2c23a0bf596184a1429654be = param2;
         this.init();
      }
      
      public function set callbackOnTextChanged(param1:Function) : void
      {
         this._e9d87c4d5384b002db342de6 = param1;
      }
      
      public function get label() : TextField
      {
         return this._2c23a0bf596184a1429654be;
      }
      
      private function _88327dd4ac18b8e5a3eef042(param1:FocusEvent) : void
      {
         this._37be4258610e38270eceeefd = this._2c23a0bf596184a1429654be.text;
      }
      
      private function _d4b6da87e75c9563627ab552(param1:FocusEvent) : void
      {
         var _loc2_:int = -935684421 ^ -628542420 ^ 0x7550CE85 ^ -1777384351;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1486667001 ^ -1428441740 ^ -774224324 ^ 0x2D8E983E))
            {
               case 0:
                  this._e9d87c4d5384b002db342de6();
                  _loc2_ = -1454727689 ^ -488286955 ^ 0x74B590D6 ^ -822710202;
                  break;
               case 1:
                  if(this._e9d87c4d5384b002db342de6 != null)
                  {
                     _loc2_ = -955369947 ^ -1762226788 ^ 0x4685B3C1 ^ -426696695;
                  }
                  else
                  {
                     _loc2_ = -255553103 ^ 0x6F7101FD ^ 0x0D3AF365 ^ 0x63634B5B;
                  }
                  break;
               case 2:
                  if(this._37be4258610e38270eceeefd == this._2c23a0bf596184a1429654be.text)
                  {
                     _loc2_ = 0x1E592EA4 ^ 0x3EE18AE2 ^ -1709335399 ^ 0x4B4910AA;
                  }
                  else
                  {
                     _loc2_ = -726389342 ^ -1974164943 ^ 0x6B072061 ^ -1005877374;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._2c23a0bf596184a1429654be.addEventListener(FocusEvent.FOCUS_OUT,this._d4b6da87e75c9563627ab552);
         this._2c23a0bf596184a1429654be.addEventListener(FocusEvent.FOCUS_IN,this._88327dd4ac18b8e5a3eef042);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._2c23a0bf596184a1429654be.removeEventListener(FocusEvent.FOCUS_OUT,this._d4b6da87e75c9563627ab552);
         this._2c23a0bf596184a1429654be.removeEventListener(FocusEvent.FOCUS_IN,this._88327dd4ac18b8e5a3eef042);
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

