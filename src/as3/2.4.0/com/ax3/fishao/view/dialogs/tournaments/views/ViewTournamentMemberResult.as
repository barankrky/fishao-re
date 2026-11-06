package com.ax3.fishao.view.dialogs.tournaments.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentPrizeType;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ViewTournamentMemberResult extends ViewBase
   {
      
      private static const DEFAULT_ICON_SIZE:int = 21;
      
      private static const DEFAULT_ICON_GAP:int = 5;
      
      private var _source:DisplayObjectContainer;
      
      private var _labelPosition:TextField;
      
      private var _labelLogin:TextField;
      
      private var _labelCriteria:TextField;
      
      private var _labelReward:TextField;
      
      private var _rewardIcons:Array;
      
      public function ViewTournamentMemberResult(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set position(param1:int) : void
      {
         var _loc2_:String = param1 == 0 ? "-" : param1.toString();
         this._labelPosition.text = _loc2_;
      }
      
      public function set login(param1:String) : void
      {
         this._labelLogin.text = param1;
      }
      
      public function set criteria(param1:String) : void
      {
         this._labelCriteria.text = param1;
      }
      
      public function set reward(param1:int) : void
      {
         if(param1 <= 0)
         {
            this._labelReward.visible = false;
         }
         else
         {
            this._labelReward.text = param1.toString();
            this.addRewardIcon(ETournamentPrizeType.ETPT_FISHCOINS);
         }
      }
      
      public function set trophy(param1:String) : void
      {
         this.addRewardIcon(param1);
      }
      
      private function init() : void
      {
         this._rewardIcons = [];
         this._labelPosition = Debug.assertProperty(this._source,"labelPosition",TextField);
         this._labelLogin = Debug.assertProperty(this._source,"labelLogin",TextField);
         this._labelCriteria = Debug.assertProperty(this._source,"labelCriteria",TextField);
         this._labelReward = Debug.assertProperty(this._source,"labelReward",TextField);
      }
      
      private function addRewardIcon(param1:String) : void
      {
         var _loc2_:MovieClip = null;
         _loc2_ = new gViewTournamentPrizeIcon();
         _loc2_.gotoAndStop(param1);
         _loc2_.width = DEFAULT_ICON_SIZE;
         _loc2_.height = DEFAULT_ICON_SIZE;
         _loc2_.x = this._labelReward.x + this._labelReward.textWidth + DEFAULT_ICON_GAP + this._rewardIcons.length * (DEFAULT_ICON_GAP + DEFAULT_ICON_SIZE);
         _loc2_.y = this._labelReward.y + (this._labelReward.height - DEFAULT_ICON_SIZE) / 2;
         this._rewardIcons.push(_loc2_);
         this._source.addChild(_loc2_);
      }
      
      override public function cleanup() : void
      {
         if(this._source.parent != null)
         {
            this._source.parent.removeChild(this._source);
         }
         super.cleanup();
      }
   }
}

