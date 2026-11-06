package com.ax3.fishao.view.wrappers
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.ConfirmFrameButtonWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class BreederRexFishItemWrapper extends EventDispatcher implements IAssetWrapper
   {
      
      public static const BREEDER_BUTTON_CLICK:String = "breeder_button_click";
      
      private var mc:MovieClip;
      
      private var fishNameText:TextField;
      
      private var breedDurationText:TextField;
      
      private var breedHours:TextField;
      
      private var breedNowText:TextField;
      
      private var breedChanceText:TextField;
      
      private var breedPercent:TextField;
      
      private var breedInstantText:TextField;
      
      private var breedCostFishbucks:int;
      
      private var breedCostFishcoins:int;
      
      private var buyButton:ConfirmFrameButtonWrapper;
      
      private var buyInstantButton:ConfirmFrameButtonWrapper;
      
      private var stars:MovieClip;
      
      private var _image:MovieClip;
      
      private var _imageRect:Rectangle;
      
      private var fish:FishInfoVO;
      
      public function BreederRexFishItemWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         this.mc = param1 as MovieClip;
         this.fishNameText = _loc2_.getChildByName("fish_name") as TextField;
         this.breedDurationText = _loc2_.getChildByName("breed_duration") as TextField;
         this.breedHours = _loc2_.getChildByName("breeding_hours") as TextField;
         this.breedNowText = _loc2_.getChildByName("breed_now") as TextField;
         this.breedChanceText = _loc2_.getChildByName("breed_chance") as TextField;
         this.breedPercent = _loc2_.getChildByName("breed_percent") as TextField;
         this.breedInstantText = _loc2_.getChildByName("breed_instant") as TextField;
         this.breedDurationText.text = I18n.get("breederRexFishDialog_breed_duration");
         this.breedNowText.text = I18n.get("breederRexFishDialog_breed_now");
         this.breedChanceText.text = I18n.get("breederRexFishDialog_breed_chance");
         this.breedInstantText.text = I18n.get("breederRexFishDialog_breed_instant");
         this.stars = _loc2_.getChildByName("stars") as MovieClip;
         this.buyButton = new ConfirmFrameButtonWrapper();
         this.buyButton.process(_loc2_.getChildByName("buyButton"));
         this.buyButton.handler = this.onBuyButtonClick;
         this.buyInstantButton = new ConfirmFrameButtonWrapper();
         this.buyInstantButton.process(_loc2_.getChildByName("buyInstantButton"));
         this.buyInstantButton.handler = this.onBuyInstantButtonClick;
         var _loc3_:MovieClip = _loc2_.getChildByName("image") as MovieClip;
         this._image = new MovieClip();
         this._image.x = _loc3_.x;
         this._image.y = _loc3_.y;
         this._imageRect = new Rectangle();
         this._imageRect.width = int(_loc3_.width);
         this._imageRect.height = int(_loc3_.height);
         ShiftWrapper.shiftDisplayObject(_loc3_,this._image);
      }
      
      public function setFish(param1:FishInfoVO) : void
      {
         this.fish = param1;
         this.fishNameText.text = param1.displayName;
         this.breedHours.text = param1.breedingDuration.toString() + " " + I18n.get("breederRexFishDialog_hours");
         this.breedPercent.text = Math.round(param1.breedingSuccessRateCurrent * 100).toString() + "%";
         this.breedCostFishbucks = param1.breedingCost;
         this.buyButton.label = this.breedCostFishbucks.toString();
         this.breedCostFishcoins = Math.round(3 * (param1.breedingCost / param1.breedingSuccessRate) / 80);
         this.buyInstantButton.label = this.breedCostFishcoins.toString();
         this.stars.gotoAndStop(param1.rating + 1);
         removeAllChildren(this._image);
         var _loc2_:ScaledBitmap = new ScaledBitmap(null);
         _loc2_.width = this._imageRect.width;
         _loc2_.height = this._imageRect.height;
         app.resourceManager.replaceBitmapDataFromURL(_loc2_,FishaoBitmapLoader.convertImageNameURL("fishes/fish_" + "180" + "px_" + param1.id));
         _loc2_.smoothing = true;
         this._image.addChild(_loc2_);
      }
      
      public function enableBuyButton() : void
      {
         this.buyButton.enable();
      }
      
      public function disableBuyButton() : void
      {
         this.buyButton.disable();
      }
      
      private function onBuyButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:MouseEvent = null;
         if(this.breedCostFishbucks <= app.user.fishbucks)
         {
            _loc2_ = new MouseEvent(BREEDER_BUTTON_CLICK);
            _loc2_.localX = this.fish.id;
            _loc2_.localY = 0;
            dispatchEvent(_loc2_);
         }
         else
         {
            GameSwf.instance.showBuyFishbucksDialog();
         }
      }
      
      private function onBuyInstantButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:MouseEvent = null;
         if(this.breedCostFishcoins <= app.user.fishcoins)
         {
            _loc2_ = new MouseEvent(BREEDER_BUTTON_CLICK);
            _loc2_.localX = this.fish.id;
            _loc2_.localY = 1;
            dispatchEvent(_loc2_);
         }
         else
         {
            GameSwf.instance.showBuyFishcoinsDialog();
         }
      }
      
      public function hide() : void
      {
         this.mc.visible = false;
      }
      
      public function show() : void
      {
         this.mc.visible = true;
      }
   }
}

