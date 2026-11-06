package com.ax3.fishao.view.dialogs.tournaments.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentPrizeType;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ViewTournamentPrize extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _rewardType:String;
      
      private var _labelRewardBig:TextField;
      
      private var _labelRewardSmall:TextField;
      
      private var _viewIconFishcoins:DisplayObjectContainer;
      
      private var _viewTournamentPrizeIcon:MovieClip;
      
      private var _labelPosition:TextField;
      
      private var _iconGap:int;
      
      public function ViewTournamentPrize(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set rewardType(param1:String) : void
      {
         this._rewardType = param1;
         this.updateView();
      }
      
      public function set labelReward(param1:String) : void
      {
         this._labelRewardBig.text = param1;
         this._labelRewardSmall.text = param1;
         this.updateIconPosition();
      }
      
      public function get labelPosition() : TextField
      {
         return this._labelPosition;
      }
      
      private function init() : void
      {
         this._iconGap = 5;
         this._labelRewardBig = Debug.assertProperty(this._source,"labelRewardBig",TextField);
         this._labelRewardSmall = Debug.assertProperty(this._source,"labelRewardSmall",TextField);
         this._viewIconFishcoins = Debug.assertProperty(this._source,"viewIconFishcoins");
         this._labelPosition = Debug.assertProperty(this._source,"labelPrizePlace",TextField);
         this._viewTournamentPrizeIcon = Debug.assertProperty(this._source,"viewTournamentPrizeIcon",MovieClip);
      }
      
      private function updateView() : void
      {
         switch(this._rewardType)
         {
            case ETournamentPrizeType.ETPT_BOAT_ON_SEA:
            case ETournamentPrizeType.ETPT_LAKE_RUN:
            case ETournamentPrizeType.ETPT_RACE:
            case ETournamentPrizeType.ETPT_MORAY:
               this._labelRewardBig.visible = false;
               this._labelRewardSmall.visible = true;
               this._viewIconFishcoins.visible = true;
               break;
            case ETournamentPrizeType.ETPT_FISHCOINS:
               this._labelRewardBig.visible = true;
               this._labelRewardSmall.visible = false;
               this._viewIconFishcoins.visible = false;
               break;
            default:
               Debug.assert(false,"Unsupported rewardType on updateView in ViewTournamentPrize: " + this._rewardType);
         }
         this._viewTournamentPrizeIcon.gotoAndStop(this._rewardType);
      }
      
      private function updateIconPosition() : void
      {
         var _loc1_:Number = (this._labelRewardSmall.width - this._labelRewardSmall.textWidth) / 2;
         this._viewIconFishcoins.x = int(this._labelRewardSmall.x + _loc1_ - this._viewIconFishcoins.width - this._iconGap);
      }
   }
}

