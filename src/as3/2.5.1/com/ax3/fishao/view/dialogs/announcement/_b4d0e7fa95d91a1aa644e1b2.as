package com.ax3.fishao.view.dialogs.announcement
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.display.popups._665c68e6c732fb052d549df8;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.dialogs.base._009582d19d1c5695c49f2ed8;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _b4d0e7fa95d91a1aa644e1b2 extends _009582d19d1c5695c49f2ed8
   {
      
      public var labelTitle:TextField;
      
      public var labelDescription:TextField;
      
      public var labelTime:TextField;
      
      public var buttonOk:FrameButtonWrapper;
      
      public var viewImage:DisplayObjectContainer;
      
      protected var _viewTextTitle:_73899a4de8f83c8d2c26f545;
      
      protected var _viewTextDescription:_665c68e6c732fb052d549df8;
      
      public function _b4d0e7fa95d91a1aa644e1b2()
      {
         super(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဲჽწႊ႑ႦყယႯႦႈဣკტၤႵ႐ဌၸა၉ႜဍ၈ჶႨၡၸႱၟ၀ၬ၁Ⴞသხჰ჻ါၺ","ეဗჀြჴႛၗဆჽၷဖွ။ၒႹာ"));
         _canClosedByEsc = false;
      }
      
      override protected function _d998e9465b31be9894488c29(param1:DisplayObjectContainer) : void
      {
         super._d998e9465b31be9894488c29(param1);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this._viewTextDescription = new _665c68e6c732fb052d549df8(this.labelDescription);
         this._viewTextTitle = new _73899a4de8f83c8d2c26f545(this.labelTitle);
         super._935ac2966ddad68dfc449202();
      }
   }
}

