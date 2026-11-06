package com.ax3.fishao.view.dialogs.club.pages.recommended.item
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem.ViewClubEmblem;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   
   public class ViewClubItemRecommended extends ViewBase
   {
      
      private var _source:gViewClubsItemRecommended = new gViewClubsItemRecommended();
      
      private var _buttonJoin:FrameButtonWrapper;
      
      private var _labelName:TextFieldAutofitWrapper;
      
      private var _labelMembers:TextFieldAutofitWrapper;
      
      private var _labelPoints:TextFieldAutofitWrapper;
      
      private var _viewHitArea:ViewBase;
      
      private var _viewEmblem:ViewClubEmblem;
      
      public function ViewClubItemRecommended(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonJoin() : FrameButtonWrapper
      {
         return this._buttonJoin;
      }
      
      public function get viewHitArea() : ViewBase
      {
         return this._viewHitArea;
      }
      
      public function set name(param1:String) : void
      {
         this._labelName.text = param1;
      }
      
      public function set points(param1:int) : void
      {
         this._labelPoints.text = param1.toString();
      }
      
      public function setMembers(param1:int, param2:int) : void
      {
         this._labelMembers.text = param1 + "/" + param2;
      }
      
      public function set emblemID(param1:int) : void
      {
         this._viewEmblem.emblemID = param1;
      }
      
      private function init() : void
      {
         this._buttonJoin = createButton("buttonJoin");
         this._buttonJoin.label = I18n.get(EStringType.EST_CLUB_BUTTON_JOIN);
         this._labelName = createAutofitLabel("labelName",null);
         this._labelMembers = createAutofitLabel("labelMembers",null);
         this._labelPoints = createAutofitLabel("labelPoints",null);
         this._viewHitArea = new ViewBase(controller,Debug.assertProperty(this.source,"viewHitArea"));
         this._viewHitArea.handleEvents(true);
         this._viewHitArea.source.alpha = 0.01;
         this._viewEmblem = new ViewClubEmblem(controller,Debug.assertProperty(this.source,"viewEmblem"));
      }
   }
}

