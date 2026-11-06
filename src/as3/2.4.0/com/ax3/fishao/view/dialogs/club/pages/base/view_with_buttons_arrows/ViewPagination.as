package com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows
{
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import flash.display.DisplayObjectContainer;
   
   public class ViewPagination extends ViewWithButtonsArrows
   {
      
      private var _label:TextFieldAutofitWrapper;
      
      public function ViewPagination(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      override protected function onPageChanged() : void
      {
         super.onPageChanged();
         var _loc1_:int = 0;
         if(this.pagesTotal > 0)
         {
            _loc1_ = this.pageCurrent + 1;
         }
         this._label.text = _loc1_ + " " + I18n.get("of") + " " + this.pagesTotal;
      }
      
      private function init() : void
      {
         this._label = createAutofitLabel("label","0/0");
      }
   }
}

