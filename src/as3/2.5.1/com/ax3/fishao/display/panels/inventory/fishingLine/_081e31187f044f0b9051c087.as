package com.ax3.fishao.display.panels.inventory.fishingLine
{
   import com.ax3.fishao.display.panels.inventory.base._4dfa7fce32de2ad031f2e3da;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.fishingLine.views._e941142f5b5aee8b174d134f;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   
   public class _081e31187f044f0b9051c087 extends _4dfa7fce32de2ad031f2e3da
   {
      
      private var _d9d9a86dcb88a3042b5293bb:_8bce41992390d5a4c2649c06 = new _8bce41992390d5a4c2649c06();
      
      private var _79d1d0284a59629a915bba51:_e941142f5b5aee8b174d134f;
      
      public function _081e31187f044f0b9051c087(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._d9d9a86dcb88a3042b5293bb);
         this.init();
      }
      
      public function set color(param1:String) : void
      {
         this._79d1d0284a59629a915bba51.color = param1;
      }
      
      public function _0991684a9b4e5ef27c138835(param1:uint, param2:uint) : void
      {
         this._d9d9a86dcb88a3042b5293bb.lineLength = param2;
         this._d9d9a86dcb88a3042b5293bb.lineLevel = param1;
      }
      
      private function init() : void
      {
         UtilsTextField.setBoldFont(this._d9d9a86dcb88a3042b5293bb.title);
         this._d9d9a86dcb88a3042b5293bb.viewCount.visible = false;
         this._d9d9a86dcb88a3042b5293bb.mouseChildren = false;
         this._d9d9a86dcb88a3042b5293bb.buttonMode = true;
         this._79d1d0284a59629a915bba51 = new _e941142f5b5aee8b174d134f(controller,new gViewReel());
         this.image = this._79d1d0284a59629a915bba51.source;
         this._d9d9a86dcb88a3042b5293bb.title.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_UI_BUTTON_FISHING_LINE);
      }
   }
}

