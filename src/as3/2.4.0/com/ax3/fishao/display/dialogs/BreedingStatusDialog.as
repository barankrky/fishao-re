package com.ax3.fishao.display.dialogs
{
   import com.ax3.display.autoscalable.ScaledBitmapProgressive;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.breeding.ManagerBreeding;
   import com.ax3.fishao.view.dialogs.breeding.model.BreedingFish;
   import com.ax3.utils.math.limit;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class BreedingStatusDialog extends BreedingStatusSwfDialogAsset
   {
      
      public static const BREEDING_STATUS_DIALOG_CLOSED:String = "breedingstatusdialogclosed";
      
      private var _fish:FishInfoVO;
      
      private var finishTimeMillis:Number;
      
      private var _chance:Number;
      
      private var timer:Timer = new Timer(1000);
      
      private var _managerBreeding:ManagerBreeding;
      
      private var _breedingFish:BreedingFish;
      
      public function BreedingStatusDialog()
      {
         super();
         this._managerBreeding = GameSwf.instance.managerBreeding;
         this._breedingFish = this._managerBreeding.currentlyBreeding;
         this._fish = app.fishDict.get(this._breedingFish.id) as FishInfoVO;
         this.chance = this._breedingFish.succesRate;
         this.secondsLeft = this._breedingFish.timeLeft;
      }
      
      public function set fish(param1:FishInfoVO) : void
      {
         this._fish = param1;
      }
      
      public function set secondsLeft(param1:Number) : void
      {
         var _loc2_:Date = new Date();
         this.finishTimeMillis = _loc2_.getTime() + param1 * 1000;
      }
      
      public function set chance(param1:Number) : void
      {
         this._chance = Math.round(param1 * 100);
      }
      
      public function get secondsLeft() : Number
      {
         var _loc1_:Date = new Date();
         var _loc2_:Number = Math.round((this.finishTimeMillis - _loc1_.getTime()) / 1000);
         return _loc2_ > 0 ? _loc2_ : 0;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         var _loc1_:int = 0;
         var _loc2_:ScaledBitmapProgressive = null;
         _loc1_ = 0;
         _loc2_ = null;
         fish_name.text = this._fish.displayName;
         var _loc3_:int = 630;
         _loc1_ = 115;
         _loc2_ = new ScaledBitmapProgressive();
         var _loc4_:Number = 325;
         _loc2_.width = _loc4_;
         _loc2_.height = _loc1_;
         app.resourceManager.replaceBitmapDataFromURL(_loc2_,FishaoBitmapLoader.convertImageNameURL("fishes/fish_" + int(_loc4_) + "px_" + this._fish.id));
         _loc2_.x = (_loc3_ - _loc2_.width) * 0.5 + 45;
         _loc2_.y = (_loc1_ - _loc2_.height) * 0.5 + 135;
         _loc2_.smoothing = true;
         addChild(_loc2_);
         stars.gotoAndStop(this._fish.rating + 1);
         chance_percent.text = this._chance + "%";
         time_left_timer.text = I18n.formatTimestampToClockView(this.secondsLeft);
         this.timer.addEventListener(TimerEvent.TIMER,this.updateTime);
         this.timer.start();
         var _loc5_:Number = this._fish.breedingCost / this._fish.breedingSuccessRate;
         var _loc6_:int = Math.ceil(_loc5_ * ManagerBreeding.fishIncreaseChanceMultiplierFishcoins);
         addChanceButton.label = _loc6_.toString();
         subTimeButton.label = "25";
         this.updateButtons();
         addChanceButton.handler = this.addChance;
         subTimeButton.handler = this.reduceTime;
         super.onAssetCreationComplete();
      }
      
      private function updateButtons() : void
      {
         if(this._chance < 100)
         {
            addChanceButton.enable();
         }
         else
         {
            addChanceButton.disable();
         }
         if(this.finishTimeMillis > 0)
         {
            subTimeButton.enable();
         }
         else
         {
            subTimeButton.disable();
         }
      }
      
      private function onBreedingChanceResp(param1:* = null) : void
      {
         if(this._chance < 100)
         {
            this._chance = limit(this._chance + 5,0,100);
         }
         chance_percent.text = this._chance + "%";
         this.updateButtons();
      }
      
      private function onReduceTime(param1:* = null) : void
      {
         this.finishTimeMillis -= 15 * 60 * 1000;
         this.updateButtons();
      }
      
      override protected function onCloseClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(BREEDING_STATUS_DIALOG_CLOSED));
         super.onCloseClick(param1);
      }
      
      private function updateTime(param1:*) : void
      {
         var _loc2_:LocationDialogPrivateHouse = null;
         var _loc3_:Number = this.secondsLeft;
         if(_loc3_ == 0)
         {
            this.timer.stop();
            this.timer.removeEventListener(TimerEvent.TIMER,this.updateTime);
            if(GameSwf.currentLocationDialog is LocationDialogPrivateHouse)
            {
               _loc2_ = GameSwf.currentLocationDialog as LocationDialogPrivateHouse;
               this.close();
               _loc2_.checkBreedingResult();
               return;
            }
         }
         time_left_timer.text = I18n.formatTimestampToClockView(_loc3_);
      }
      
      private function reduceTime(param1:* = null) : void
      {
         if(app.user.fishbucks < 25)
         {
            GameSwf.instance.showBuyFishbucksDialog();
            return;
         }
         subTimeButton.disable();
         this._managerBreeding.decreaseBreedingTime(this.onReduceTime);
      }
      
      private function addChance(param1:* = null) : void
      {
         if(app.user.fishcoins < this._fish.increaseBreedingChancePrice)
         {
            GameSwf.instance.showBuyFishcoinsDialog();
            return;
         }
         addChanceButton.disable();
         this._managerBreeding.increaseBreedingChance(this.onBreedingChanceResp);
      }
   }
}

