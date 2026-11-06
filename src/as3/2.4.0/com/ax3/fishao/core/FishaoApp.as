package com.ax3.fishao.core
{
   import com.ax3.config.ApplicationConfig;
   import com.ax3.core.App;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.managers.PerformanceManager;
   import com.ax3.fishao.mediators.FishboxLevelUpMediator;
   import com.ax3.fishao.model.CountrieseDict;
   import com.ax3.fishao.model.DecorationItemsModel;
   import com.ax3.fishao.model.ModeratorModel;
   import com.ax3.fishao.model.ResourceDict;
   import com.ax3.fishao.model.TimezonesDict;
   import com.ax3.fishao.model.UserModel;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.model.character.clothes.Body;
   import com.ax3.fishao.model.character.clothes.Hair;
   import com.ax3.fishao.model.character.clothes.Hat;
   import com.ax3.fishao.model.character.clothes.Icon;
   import com.ax3.fishao.model.character.clothes.Lower;
   import com.ax3.fishao.model.character.clothes.Shoes;
   import com.ax3.fishao.model.character.clothes.Suit;
   import com.ax3.fishao.model.character.clothes.Upper;
   import com.ax3.fishao.model.pling.PlingModel;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.model.vo.PrivateHouseInteriorItemVO;
   import com.ax3.fishao.utils.FishaoDialogFactory;
   import com.ax3.utils.MemoryController;
   import com.ax3.utils.math.randomRange;
   import com.junkbyte.console.Cc;
   import flash.system.System;
   
   public class FishaoApp extends App
   {
      
      public var dialogFactory:FishaoDialogFactory;
      
      public var char:CharViewConfig;
      
      public var user:UserModel;
      
      public var sid:String;
      
      public var plings:PlingModel;
      
      public var rodsDict:ResourceDict;
      
      public var baitsDict:ResourceDict;
      
      public var clothesDict:ResourceDict;
      
      public var extraFloatsDict:ResourceDict;
      
      public var fishDict:FishResourceDict;
      
      public var privateHouseInteriorItemDict:ResourceDict;
      
      public var countries:CountrieseDict;
      
      public var moderatorModel:ModeratorModel;
      
      public var performanceManager:PerformanceManager;
      
      public var timezones:TimezonesDict;
      
      public var memoryController:MemoryController;
      
      public var resourcesDict:ResourceDict;
      
      public var looksDict:ResourceDict;
      
      public var fossils:ResourceDict;
      
      public var fruits:ResourceDict;
      
      public var decorationItemsModel:DecorationItemsModel = new DecorationItemsModel();
      
      public var fishboxLevelUpMediator:FishboxLevelUpMediator;
      
      public function FishaoApp(param1:ApplicationConfig)
      {
         super(param1);
         this.dialogFactory = new FishaoDialogFactory(dialogManager);
         this.rodsDict = new ResourceDict(Config.RODS_DATA_URL);
         this.baitsDict = new ResourceDict(Config.BAITS_DATA_URL);
         this.extraFloatsDict = new ResourceDict(Config.EXTRA_FLOATS_DATA_URL);
         this.fishDict = new FishResourceDict(Config.FISH_DATA_URL,FishInfoVO);
         this.countries = new CountrieseDict(Config.COUNTRIES_URL);
         this.timezones = new TimezonesDict(Config.TIMEZONES_URL);
         this.clothesDict = new ResourceDict(Config.CLOTHES_DATA_URL);
         this.privateHouseInteriorItemDict = new ResourceDict(Config.PRIVATE_HOUSE_INTERIOR_ITEM_DATA_URL,PrivateHouseInteriorItemVO);
         this.char = new CharViewConfig(new Body(1,3),new Upper(1,Math.floor(Math.random() * 16) + 1),new Lower(1,Math.floor(Math.random() * 17) + 1),new Hair(1,Math.floor(Math.random() * 12) + 1),new Hat(CharViewConfig.NO_HAT,1),new Shoes(2,1),new Icon(CharViewConfig.NO_ICON,1),new Suit(CharViewConfig.NO_SUIT,1));
         this.user = new UserModel();
         this.plings = new PlingModel();
         this.moderatorModel = new ModeratorModel();
         this.performanceManager = new PerformanceManager();
         this.memoryController = new MemoryController(5 * 1000,1024 * 1024 * 1000,1024 * 1024 * 1500,10 * 1000,3,this.onMemoryCritical,this.onMemoryWarning);
         this.resourcesDict = new ResourceDict(Config.RESOURCES_DATA_URL);
         this.looksDict = new ResourceDict(Config.LOOKS_DATA_URL);
         this.fossils = new ResourceDict(Config.FOSSILS_DATA_URL);
         var _loc2_:String = Config.SERVER + "data/fruits.json?r=" + randomRange(0,10000);
         this.fruits = new ResourceDict(_loc2_);
         this.fishboxLevelUpMediator = new FishboxLevelUpMediator();
      }
      
      private function onMemoryCritical() : void
      {
         Cc.error("Critical memory overflow!" + System.totalMemory);
      }
      
      private function onMemoryWarning() : void
      {
      }
   }
}

