package com.ax3.fishao.view.panels.user_popup
{
   import com.ax3.fishao.utils.UtilsDisplayObject;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.utils.removeFromParent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class ViewUserPopup extends ViewBase
   {
      
      private var _source:DisplayObjectContainer = new Sprite();
      
      private var _viewNotInClub:ViewUserPopupNotInClub;
      
      private var _viewInClub:ViewUserPopupInClub;
      
      private var _currentView:ViewUserPopupBase;
      
      public function ViewUserPopup(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function set isGuest(param1:Boolean) : void
      {
         this._viewInClub.isGuest = param1;
         this._viewNotInClub.isGuest = param1;
      }
      
      public function set userInClub(param1:Boolean) : void
      {
         var _loc2_:DisplayObject = this._viewNotInClub.source;
         var _loc3_:DisplayObject = this._viewInClub.source;
         if(param1)
         {
            removeFromParent(_loc2_);
            UtilsDisplayObject.tryAddToParent(_loc3_,this._source);
         }
         else
         {
            removeFromParent(_loc3_);
            UtilsDisplayObject.tryAddToParent(_loc2_,this._source);
         }
         this._currentView = param1 ? this._viewInClub : this._viewNotInClub;
      }
      
      public function set login(param1:String) : void
      {
         this._viewInClub.login = param1;
         this._viewNotInClub.login = param1;
      }
      
      public function set level(param1:int) : void
      {
         this._viewInClub.level = param1;
         this._viewNotInClub.level = param1;
      }
      
      public function set emblemID(param1:int) : void
      {
         this._viewInClub.emblemID = param1;
      }
      
      public function set clubName(param1:String) : void
      {
         this._viewInClub.clubName = param1;
      }
      
      public function set buttonCloseVisible(param1:Boolean) : void
      {
         this._viewNotInClub.buttonClose.visible = param1;
         this._viewInClub.buttonClose.visible = param1;
      }
      
      public function set buttonPmVisible(param1:Boolean) : void
      {
         this._viewNotInClub.buttonPmVisible = param1;
         this._viewInClub.buttonPmVisible = param1;
      }
      
      public function get currentView() : ViewUserPopupBase
      {
         return this._currentView;
      }
      
      private function init() : void
      {
         this.source.visible = false;
         this.source.alpha = 0;
         this._source.mouseChildren = true;
         this._viewNotInClub = new ViewUserPopupNotInClub(controller);
         this._viewInClub = new ViewUserPopupInClub(controller);
      }
   }
}

