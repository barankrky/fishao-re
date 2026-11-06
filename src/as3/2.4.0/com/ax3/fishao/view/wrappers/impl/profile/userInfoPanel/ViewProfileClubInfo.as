package com.ax3.fishao.view.wrappers.impl.profile.userInfoPanel
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem.ViewClubEmblem;
   import flash.display.DisplayObjectContainer;
   
   public class ViewProfileClubInfo extends ViewBase
   {
      
      private var _labelName:TextFieldAutofitWrapper;
      
      private var _viewEmblem:ViewClubEmblem;
      
      public function ViewProfileClubInfo(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set emblemID(param1:int) : void
      {
         this._viewEmblem.emblemID = param1;
      }
      
      public function set name(param1:String) : void
      {
         this._labelName.text = param1;
      }
      
      public function get viewEmblem() : ViewClubEmblem
      {
         return this._viewEmblem;
      }
      
      private function init() : void
      {
         this._viewEmblem = new ViewClubEmblem(controller,Debug.assertProperty(this.source,"viewEmblem"));
         this._viewEmblem.handleEvents(true);
         this._labelName = createAutofitLabel("labelName",null);
      }
   }
}

