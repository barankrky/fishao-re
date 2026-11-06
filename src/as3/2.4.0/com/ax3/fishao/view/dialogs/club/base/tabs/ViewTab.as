package com.ax3.fishao.view.dialogs.club.base.tabs
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.UtilsColor;
   import com.ax3.fishao.utils.UtilsDisplayObject;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem.ViewClubEmblem;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import protocol.api.clubs.page.EClubPageType;
   
   public class ViewTab extends ViewBase
   {
      
      private var _source:MovieClip;
      
      private var _icons:MovieClip;
      
      private var _viewEmblem:ViewClubEmblem;
      
      private var _sourceNotifications:DisplayObject;
      
      private var _labelNotifications:TextFieldAutofitWrapper;
      
      public function ViewTab(param1:Controller, param2:MovieClip, param3:String)
      {
         this._source = param2;
         super(param1,this._source);
         this.init(param3);
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1)
         {
            this._source.gotoAndStop(2);
            UtilsDisplayObject.toFront(this._source);
         }
         else
         {
            this._source.gotoAndStop(1);
            UtilsDisplayObject.toBack(this._source);
         }
         this._icons.x = param1 ? 15 : 10;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         if(param1)
         {
            this._source.filters = [];
         }
         else
         {
            this._source.filters = [UtilsColor.getFilter(-256)];
            UtilsDisplayObject.toBack(this._source);
         }
      }
      
      public function set notificationsCount(param1:int) : void
      {
         this._sourceNotifications.visible = param1 > 0;
         this._labelNotifications.text = param1.toString();
      }
      
      private function init(param1:String) : void
      {
         this._icons = Debug.assertProperty(this._source,"icons");
         this._icons.gotoAndStop(param1);
         this.isActive = false;
         this.isEnabled = true;
         this._viewEmblem = new ViewClubEmblem(controller,Debug.assertProperty(this._icons,"image"));
         this._sourceNotifications = Debug.assertProperty(this.source,"viewNotifications");
         this._labelNotifications = createAutofitLabel("label",null,this._sourceNotifications);
      }
      
      public function showEmblem(param1:int) : void
      {
         this._icons.gotoAndStop(EClubPageType.ECPT_INFO);
         this._viewEmblem.emblemID = param1;
      }
   }
}

