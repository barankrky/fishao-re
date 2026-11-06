package com.ax3.fishao.view.dialogs.club.pages.base.emblem
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows.ViewWithButtonsArrows;
   import flash.display.DisplayObjectContainer;
   
   public class ViewClubEmblemWithArrows extends ViewWithButtonsArrows
   {
      
      private var _viewEmblem:ViewClubEmblem;
      
      public function ViewClubEmblemWithArrows(param1:Controller, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      override protected function onPageChanged() : void
      {
         if(this.pageCurrent != -1)
         {
            this._viewEmblem.emblemID = this.pageCurrent;
         }
         super.onPageChanged();
      }
      
      private function init() : void
      {
         this._viewEmblem = new ViewClubEmblem(controller,Debug.assertProperty(this.source,"image"));
      }
   }
}

