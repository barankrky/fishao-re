package com.ax3.fishao.view.dialogs.club.pages.rankings.item
{
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem.ViewClubEmblem;
   
   public class ViewClubItemRankings extends ViewBase
   {
      
      private var _source:gViewClubItemRankings = new gViewClubItemRankings();
      
      private var _labelPosition:TextFieldAutofitWrapper;
      
      private var _labelName:TextFieldAutofitWrapper;
      
      private var _labelMembers:TextFieldAutofitWrapper;
      
      private var _labelCriteria:TextFieldAutofitWrapper;
      
      private var _viewEmblem:ViewClubEmblem;
      
      private var _viewHitArea:ViewBase;
      
      public function ViewClubItemRankings(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function set position(param1:int) : void
      {
         this._labelPosition.text = param1.toString();
      }
      
      public function set name(param1:String) : void
      {
         this._labelName.text = param1;
      }
      
      public function setMembers(param1:int, param2:int) : void
      {
         this._labelMembers.text = param1 + "/" + param2;
      }
      
      public function set criteria(param1:String) : void
      {
         this._labelCriteria.text = param1;
      }
      
      public function set emblemID(param1:int) : void
      {
         this._viewEmblem.emblemID = param1;
      }
      
      public function set isCurrent(param1:Boolean) : void
      {
         this._source.viewCurrent.visible = param1;
         if(param1)
         {
            this._labelName.source.textColor = 16777215;
            this._labelMembers.source.textColor = 16777215;
            this._labelCriteria.source.textColor = 16777215;
            this._labelPosition.source.filters = [];
         }
      }
      
      public function get viewHitArea() : ViewBase
      {
         return this._viewHitArea;
      }
      
      private function init() : void
      {
         this._viewHitArea = new ViewBase(controller,this._source.viewHitArea);
         this._viewHitArea.handleEvents(true);
         this._viewHitArea.source.alpha = 0.01;
         this._labelPosition = createAutofitLabel("labelPosition",null);
         this._labelName = createAutofitLabel("labelName",null);
         this._labelMembers = createAutofitLabel("labelMembers",null);
         this._labelCriteria = createAutofitLabel("labelCriteria",null);
         this._viewEmblem = new ViewClubEmblem(controller,this._source.viewEmblem);
      }
   }
}

