package com.ax3.fishao.display
{
   import com.ax3.display.wrappers.impl.EnergyIndicatorWrapper;
   import com.ax3.display.wrappers.impl.FishbucksIndicatorWrapper;
   import com.ax3.display.wrappers.impl.FishcoinsIndicatorWrapper;
   import com.ax3.display.wrappers.impl.LevelIndicatorWrapper;
   import com.ax3.fishao.display.boosters.ControllerBoosters;
   import com.ax3.fishao.display.panels.BaitInformer;
   import com.ax3.fishao.display.panels.PlingPanel;
   import com.ax3.fishao.display.panels.RodInformer;
   import com.ax3.fishao.display.panels.inventory.fishingLine.ControllerButtonFishingLine;
   import com.ax3.fishao.display.settings.ControllerSettings;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage;
   
   public class GuiAsset extends Sprite
   {
      
      public var mainMenu:MainMenuWrapper;
      
      public var fishcoinsIndicator:FishcoinsIndicatorWrapper;
      
      public var fishbucksIndicator:FishbucksIndicatorWrapper;
      
      public var energyIndicator:EnergyIndicatorWrapper;
      
      public var levelIndicator:LevelIndicatorWrapper;
      
      public var plingPanel:PlingPanel;
      
      public var boatPanel:BoatControlPanel;
      
      protected var _controllerSettings:ControllerSettings;
      
      protected var _controllerBoosters:ControllerBoosters;
      
      private var _controllerFishingLine:ControllerButtonFishingLine;
      
      private var _informerRod:RodInformer = new RodInformer();
      
      private var _baitInformer:BaitInformer = new BaitInformer();
      
      protected var _stage:Stage;
      
      private var _asset:DisplayObjectContainer;
      
      protected var _locationDialog:LocationDialog;
      
      public function GuiAsset(param1:LocationDialog)
      {
         super();
         this._locationDialog = param1;
         this.init();
      }
      
      public function get controllerBoosters() : ControllerBoosters
      {
         return this._controllerBoosters;
      }
      
      public function get controllerSettings() : ControllerSettings
      {
         return this._controllerSettings;
      }
      
      public function get informerRod() : RodInformer
      {
         return this._informerRod;
      }
      
      public function get baitInformer() : BaitInformer
      {
         return this._baitInformer;
      }
      
      public function get controllerButtonFishingLine() : ControllerButtonFishingLine
      {
         return this._controllerFishingLine;
      }
      
      public function get asset() : DisplayObjectContainer
      {
         return this._asset;
      }
      
      protected function onAssetCreationComplete() : void
      {
      }
      
      private function init() : void
      {
         this._stage = GameSwf.stage;
         this._asset = new GAME_GUI();
         addChild(this._asset);
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this._informerRod.title.text = I18n.getUpper("Equipment");
         this._baitInformer.title.text = I18n.getUpper("Bait");
         this.boatPanel = new BoatControlPanel();
         this.boatPanel.titleText = I18n.getUpper("boatControlTitle");
         this._controllerFishingLine = new ControllerButtonFishingLine();
         this._controllerBoosters = new ControllerBoosters();
         addChild(this._controllerBoosters.view.source);
         this._controllerSettings = new ControllerSettings();
         addChild(this._controllerSettings.view.source);
         addChild(this._controllerFishingLine.view.source);
         addChild(this._informerRod);
         addChild(this._baitInformer);
         addChild(this.boatPanel);
      }
      
      public function destroy() : void
      {
         this._locationDialog = null;
      }
   }
}

