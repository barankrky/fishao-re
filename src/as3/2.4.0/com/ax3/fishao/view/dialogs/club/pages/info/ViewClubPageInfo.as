package com.ax3.fishao.view.dialogs.club.pages.info
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows.ViewPagination;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class ViewClubPageInfo extends ViewBase
   {
      
      private var _viewInfo:DisplayObjectContainer;
      
      private var _labelDescription:TextField;
      
      private var _viewPagination:ViewPagination;
      
      public function ViewClubPageInfo(param1:Controller, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get viewPagination() : ViewPagination
      {
         return this._viewPagination;
      }
      
      public function get viewInfo() : DisplayObjectContainer
      {
         return this._viewInfo;
      }
      
      public function set description(param1:String) : void
      {
         this._labelDescription.text = param1;
      }
      
      private function init() : void
      {
         this._viewInfo = Debug.assertProperty(this.source,"viewInfo");
         this._labelDescription = Debug.assertProperty(this.source,"labelDescription");
         this._viewPagination = new ViewPagination(this.controller,Debug.assertProperty(this.source,"viewPagination"));
         createAutofitLabel("labelDescriptionTitle",EStringType.EST_CLUB_DESCRIPTION_TITLE);
         createAutofitLabel("labelMembers",EStringType.EST_CLUB_COLUMN_CLUB_MEMBERS,Debug.assertProperty(this.source,"tableTitleMembers"));
      }
   }
}

