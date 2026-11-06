package com.ax3.fishao.display.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.FishbucksIndicatorWrapper;
   import com.ax3.display.wrappers.impl.FishcoinsIndicatorWrapper;
   import com.ax3.events.VariableChangeEvent;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.StringUtil;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class BreedingStatusSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var title:DialogTitleWrapper;
      
      public var fish_name:TextField;
      
      public var time_left:TextField;
      
      public var success_chance:TextField;
      
      public var stars:MovieClip;
      
      public var minus_minutes:TextField;
      
      public var plus_chance:TextField;
      
      public var chance_percent:TextField;
      
      public var time_left_timer:TextField;
      
      public var addChanceButton:FrameButtonWrapper;
      
      public var subTimeButton:FrameButtonWrapper;
      
      public var fishcoinsIndicator:FishcoinsIndicatorWrapper;
      
      public var fishbucksIndicator:FishbucksIndicatorWrapper;
      
      public function BreedingStatusSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "breeding_status.swf";
         super(_loc1_);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this.closeButton.handler = this.onCloseClick;
         this.title.text = I18n.get("breedingStatusDialog_title");
         this.time_left.text = I18n.get("breedingStatusDialog_time_left") + ":";
         this.success_chance.text = I18n.get("breedingStatusDialog_success_chance") + ":";
         this.minus_minutes.text = "-15 " + I18n.get("minutes") + "?";
         this.plus_chance.text = "+5% " + I18n.get("chance") + "?";
         this.fishcoinsIndicator.addButton.handler = GameSwf.instance.showBuyFishcoinsDialog;
         this.fishbucksIndicator.addButton.handler = GameSwf.instance.showBuyFishbucksDialog;
         this.fishbucksIndicator.setFishBucks = app.user.fishbucks;
         this.fishcoinsIndicator.setFishCoins = app.user.fishcoins;
         this.fishcoinsIndicator.label.text = StringUtil.getSmartShortNumber(app.user.fishcoins).toString();
         this.fishbucksIndicator.label.text = StringUtil.getSmartShortNumber(app.user.fishbucks).toString();
         app.user.onFishbucksChange(this.onFishbucksChange);
         app.user.onFishcoinsChange(this.onFishcoinsChange);
         super.onAssetCreationComplete();
      }
      
      protected function onCloseClick(param1:MouseEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         app.user.removeOnFishbucksChange(this.onFishbucksChange);
         app.user.removeOnFishcoinsChange(this.onFishcoinsChange);
         super.close();
      }
      
      private function onFishbucksChange(param1:VariableChangeEvent) : void
      {
         this.fishbucksIndicator.setFishBucks = int(param1.newValue);
      }
      
      private function onFishcoinsChange(param1:VariableChangeEvent) : void
      {
         this.fishcoinsIndicator.setFishCoins = int(param1.newValue);
      }
   }
}

