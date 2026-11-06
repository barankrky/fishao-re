package com.ax3.fishao.view.dialogs.club.pages.base.club_info
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem.ViewClubEmblem;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   
   public class ViewClubInfo extends ViewBase
   {
      
      private var _buttonLeave:FrameButtonWrapper;
      
      private var _buttonJoin:FrameButtonWrapper;
      
      private var _buttonUpgrade:FrameButtonWrapper;
      
      private var _viewEmblem:ViewClubEmblem;
      
      private var _labelUpgrade:TextFieldAutofitWrapper;
      
      private var _labelPointsValue:TextFieldAutofitWrapper;
      
      private var _labelMembersValue:TextFieldAutofitWrapper;
      
      private var _labelFishesValue:TextFieldAutofitWrapper;
      
      public function ViewClubInfo(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set points(param1:int) : void
      {
         this._labelPointsValue.text = param1.toString();
      }
      
      public function setMembers(param1:int, param2:int) : void
      {
         this._labelMembersValue.text = param1 + "/" + param2;
      }
      
      public function setFishes(param1:int, param2:int) : void
      {
         this._labelFishesValue.text = param1 + "/" + param2;
      }
      
      public function set emblemID(param1:int) : void
      {
         this._viewEmblem.emblemID = param1;
      }
      
      public function get buttonLeave() : FrameButtonWrapper
      {
         return this._buttonLeave;
      }
      
      public function get buttonJoin() : FrameButtonWrapper
      {
         return this._buttonJoin;
      }
      
      public function get buttonUpgrade() : FrameButtonWrapper
      {
         return this._buttonUpgrade;
      }
      
      public function get labelUpgrade() : TextFieldAutofitWrapper
      {
         return this._labelUpgrade;
      }
      
      private function init() : void
      {
         this.initButtons();
         this.initLabels();
         this._viewEmblem = new ViewClubEmblem(controller,Debug.assertProperty(this.source,"image"));
      }
      
      private function initLabels() : void
      {
         createAutofitLabel("labelPoints",EStringType.EST_CLUB_LABEL_POINTS);
         createAutofitLabel("labelMembers",EStringType.EST_CLUB_LABEL_MEMBERS);
         createAutofitLabel("labelFishes",EStringType.EST_CLUB_LABEL_FISHES);
         this._labelUpgrade = createAutofitLabel("labelUpgrade",EStringType.EST_CLUB_LABEL_UPGRADE_LEVEL);
         this._labelPointsValue = createAutofitLabel("labelPointsValue",null);
         this._labelMembersValue = createAutofitLabel("labelMembersValue",null);
         this._labelFishesValue = createAutofitLabel("labelFishesValue",null);
      }
      
      private function initButtons() : void
      {
         this._buttonLeave = createButton("buttonLeave");
         this._buttonLeave.label = I18n.get(EStringType.EST_CLUB_BUTTON_LEAVE);
         this._buttonJoin = createButton("buttonJoin");
         this._buttonJoin.label = I18n.get(EStringType.EST_CLUB_BUTTON_JOIN);
         this._buttonUpgrade = createButton("buttonUpgrade");
      }
   }
}

