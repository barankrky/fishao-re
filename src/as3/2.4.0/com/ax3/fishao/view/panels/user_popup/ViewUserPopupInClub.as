package com.ax3.fishao.view.panels.user_popup
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem.ViewClubEmblem;
   
   public class ViewUserPopupInClub extends ViewUserPopupBase
   {
      
      private var _source:gViewUserInfoTooltipInClub = new gViewUserInfoTooltipInClub();
      
      private var _viewEmblem:ViewClubEmblem;
      
      public function ViewUserPopupInClub(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function set emblemID(param1:int) : void
      {
         this._viewEmblem.emblemID = param1;
      }
      
      public function set clubName(param1:String) : void
      {
         this._viewEmblem.initTooltip();
         this._viewEmblem.tooltipText = param1;
      }
      
      override public function get viewEmblem() : ViewBase
      {
         return this._viewEmblem;
      }
      
      private function init() : void
      {
         this._viewEmblem = new ViewClubEmblem(controller,this._source.viewEmblem);
         this._viewEmblem.handleEvents(true);
      }
   }
}

