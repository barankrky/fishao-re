package com.ax3.fishao.view.dialogs.fruits.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import flash.display.DisplayObjectContainer;
   
   public class _761ffec6a0a5dfb59e47c189 extends _59a0cd753094663c05cca48e
   {
      
      private var _c21d764a891e7ec47c63a014:DisplayObjectContainer = new gViewFruitItemSmall();
      
      public function _761ffec6a0a5dfb59e47c189(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._c21d764a891e7ec47c63a014);
         this.init();
      }
      
      override public function set amount(param1:int) : void
      {
         _labelAmountWrapper.text = param1.toString();
      }
      
      private function init() : void
      {
         _labelAmount = Debug.assertProperty(this._c21d764a891e7ec47c63a014,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揚揚挈挗揑捻揝揾捶掅挛掜挪措挃捾援挝探揻挒捳挚捬挮捒掫揤揱挹","捪挀捫挨探掿捳挛换挣捹捷揚捩挿掿"));
         _labelAmountWrapper = new _73899a4de8f83c8d2c26f545(_labelAmount);
      }
   }
}

