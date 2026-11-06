package com.ax3.fishao.display.dialogs
{
   import com.ax3.fishao.EResourceID;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.model.InventoryModel;
   import com.ax3.fishao.model.RodUtil;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.model.info.UserResource;
   import com.ax3.fishao.model.vo.ShopItemVO;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.features.EUserFeature;
   import com.ax3.fishao.view.dialogs.features.ManagerFeatures;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.empty;
   import flash.events.Event;
   import protocol.sr.BuyResourceErrorResp;
   import protocol.sr.GetDataResp;
   
   public class ShopSwfDialog extends ShopSwfDialogAsset
   {
      
      private var _managerFeatures:ManagerFeatures;
      
      public function ShopSwfDialog()
      {
         super();
      }
      
      private static function filterShinyFeatureItems(param1:Vector.<ShopItemVO>) : Vector.<ShopItemVO>
      {
         var _loc2_:ShopItemVO = null;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1[_loc3_];
            if(_loc2_.type.id == ResourceType.SHINY_POTION.id && !GameSwf.instance.managerFeatures.isFeatureEnabled(EUserFeature.EUF_SHINY_FISH))
            {
               param1.splice(_loc3_,1);
            }
            else
            {
               _loc3_++;
            }
         }
         return param1;
      }
      
      private static function filterMonsterFishRewards(param1:Vector.<ShopItemVO>) : Vector.<ShopItemVO>
      {
         var _loc2_:ShopItemVO = null;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1[_loc3_];
            if(_loc2_.type == ResourceType.CLOTHE && _loc2_.id == 507)
            {
               param1.splice(_loc3_,1);
            }
            else
            {
               _loc3_++;
            }
         }
         return param1;
      }
      
      private static function filterLocationTreeCaveFeatureItems(param1:Vector.<ShopItemVO>) : Vector.<ShopItemVO>
      {
         var _loc2_:ShopItemVO = null;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1[_loc3_];
            if(_loc2_.type == ResourceType.BAIT && _loc2_.id == 45 && !GameSwf.instance.managerFeatures.isFeatureEnabled(EUserFeature.EUF_LOCATION_TREE_CAVE))
            {
               param1.splice(_loc3_,1);
            }
            else
            {
               _loc3_++;
            }
         }
         return param1;
      }
      
      private static function filterLocationLuckyRaftSpecialBaits(param1:Vector.<ShopItemVO>) : Vector.<ShopItemVO>
      {
         var _loc2_:ShopItemVO = null;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1[_loc3_];
            if(_loc2_.type == ResourceType.BAIT && (_loc2_.id == 49 || _loc2_.id == 50 || _loc2_.id == 51 || _loc2_.id == 52))
            {
               param1.splice(_loc3_,1);
            }
            else
            {
               _loc3_++;
            }
         }
         return param1;
      }
      
      private static function getQualitySting(param1:int) : String
      {
         if(param1 > 0)
         {
            return String(param1);
         }
         return I18n.get("infinityRodQuality");
      }
      
      private function onBuyComplete(param1:ServerResp = null) : void
      {
         var _loc2_:MessageDialog = null;
         if(param1 is BuyResourceErrorResp)
         {
            _loc2_ = app.dialogFactory.getMessageDialog();
            _loc2_.buttons = MessageDialog.OK_BUTTON;
            _loc2_.closeOnOk = true;
            _loc2_.setText(I18n.get("shopBuyFailed"));
            _loc2_.show();
            this.updateLimitedRodAmount();
         }
         else
         {
            this.updateLimitedRodAmount();
         }
      }
      
      private function onRodsAmountToBuyLeftResp(param1:GetDataResp) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Vector.<ShopItemVO> = null;
         var _loc4_:ShopItemVO = null;
         if(param1.data.hasOwnProperty("amountOfRodsToBuyLeft"))
         {
            _loc2_ = parseInt(param1.data.amountOfRodsToBuyLeft);
            _loc3_ = getAllRodItems();
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.id == RodUtil.FISHAO_ROD_ID)
               {
                  _loc4_.amount = _loc2_;
                  _loc4_.description = I18n.template("rod_desc_" + _loc4_.id,{"amount":_loc4_.amount});
               }
            }
            if(tabs != null && tabs.currentTab == TAB_ID_RODS)
            {
               list.updateData();
            }
         }
      }
      
      override public function show() : void
      {
         tabChildren = false;
         super.show();
         this._managerFeatures = GameSwf.instance.managerFeatures;
         this.addRods();
         this.addBaits();
         this.addExtra();
      }
      
      protected function addRods() : void
      {
         var _loc1_:Object = null;
         var _loc2_:ShopItemVO = null;
         var _loc3_:Number = NaN;
         var _loc4_:Vector.<Object> = app.rodsDict.getAll();
         var _loc5_:Vector.<ShopItemVO> = new Vector.<ShopItemVO>();
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.price_fishcoins > 0 && _loc1_.appear_in_shop == 1)
            {
               _loc2_ = new ShopItemVO();
               _loc2_.id = _loc1_.id;
               _loc2_.type = ResourceType.ROD;
               _loc2_.name = I18n.get("rod_" + _loc1_.id);
               _loc2_.description = I18n.get("rod_desc_" + _loc1_.id);
               _loc2_.priceFishcoins = _loc1_.price_fishcoins;
               _loc2_.priceFishbucks = _loc1_.price_fishbucks;
               _loc2_.param1 = I18n.get(RodUtil.getRodStringByLength(_loc1_.length));
               _loc2_.param2 = I18n.formatDistance(_loc1_.quality_power);
               _loc2_.param3 = getQualitySting(_loc1_.quality_duration);
               _loc2_.amount = -1;
               _loc3_ = parseInt(_loc1_.player_level_req);
               _loc2_.playerLevelReq = _loc3_;
               if(_loc3_ > app.user.level)
               {
                  _loc2_.blockReason = I18n.template("reach_level",{"level":_loc3_});
               }
               if(_loc1_.hasOwnProperty("colors") && !empty(_loc1_.colors))
               {
                  _loc2_.colors = ShopItemColor.parseColors(_loc1_.colors);
               }
               _loc2_.imageUrl = FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(ResourceType.ROD.name,_loc2_.id));
               _loc5_.push(_loc2_);
            }
         }
         _loc5_.sort(ShopItemVO.sortItemsFunc);
         setRodItems(_loc5_);
      }
      
      protected function addBaits() : void
      {
         var _loc1_:Object = null;
         var _loc2_:ShopItemVO = null;
         var _loc3_:Number = NaN;
         var _loc4_:Vector.<Object> = app.baitsDict.getAll();
         var _loc5_:Vector.<ShopItemVO> = new Vector.<ShopItemVO>();
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.price_fishcoins > 0)
            {
               _loc2_ = new ShopItemVO();
               _loc2_.id = _loc1_.id;
               _loc2_.type = ResourceType.BAIT;
               _loc2_.name = I18n.get("bait_" + _loc1_.id);
               _loc2_.description = I18n.get("bait_desc_" + _loc1_.id);
               _loc2_.priceFishcoins = _loc1_.price_fishcoins;
               _loc2_.priceFishbucks = _loc1_.price_fishbucks;
               _loc2_.param1 = I18n.get("bait_category_" + _loc1_.category);
               _loc2_.param2 = getQualitySting(_loc1_.quality_duration);
               _loc2_.param3 = null;
               _loc3_ = parseInt(_loc1_.player_level_req);
               _loc2_.playerLevelReq = _loc3_;
               if(_loc3_ > app.user.level)
               {
                  _loc2_.blockReason = I18n.template("reach_level",{"level":_loc3_});
               }
               _loc2_.imageUrl = FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(ResourceType.BAIT.name,_loc2_.id));
               _loc5_.push(_loc2_);
            }
         }
         _loc5_ = filterLocationTreeCaveFeatureItems(_loc5_);
         _loc5_ = this.filterLocationPirateCaveFeatureItems(_loc5_);
         _loc5_ = filterLocationLuckyRaftSpecialBaits(_loc5_);
         _loc5_.sort(ShopItemVO.sortItemsFunc);
         setBaitItems(_loc5_);
      }
      
      protected function addExtra() : void
      {
         var _loc1_:Object = null;
         var _loc2_:ShopItemVO = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:Vector.<Object> = app.resourcesDict.getAll();
         var _loc7_:Vector.<Object> = app.looksDict.getAll();
         var _loc8_:Vector.<Object> = app.extraFloatsDict.getAll();
         var _loc9_:Vector.<Object> = _loc6_.concat(_loc7_).concat(_loc8_);
         var _loc10_:Vector.<ShopItemVO> = new Vector.<ShopItemVO>();
         for each(_loc1_ in _loc9_)
         {
            if(_loc1_.price_fishcoins > 0)
            {
               _loc2_ = new ShopItemVO();
               if(_loc1_.type_id == null)
               {
                  if(_loc1_.param == null)
                  {
                     _loc2_.name = I18n.get("float_" + _loc1_.id);
                     _loc1_.type_id = ResourceType.FLOAT.id;
                  }
                  else
                  {
                     _loc2_.name = I18n.get("looks_" + _loc1_.id);
                     _loc1_.type_id = ResourceType.CLOTHE.id;
                  }
               }
               else
               {
                  _loc2_.name = I18n.get("other_" + _loc1_.id);
               }
               _loc2_.id = _loc1_.id;
               _loc3_ = {};
               if(_loc1_.param != null && String(_loc1_.param) != "")
               {
                  _loc3_ = JSON.parse(String(_loc1_.param));
               }
               _loc4_ = {};
               if(_loc1_.req != null && _loc1_.req != "")
               {
                  _loc4_ = JSON.parse(String(_loc1_.req));
                  if(_loc4_.player_level_req != null)
                  {
                     _loc5_ = parseInt(_loc4_.player_level_req);
                     _loc2_.playerLevelReq = _loc5_;
                     if(_loc5_ > app.user.level)
                     {
                        _loc2_.blockReason = I18n.template("reach_level",{"level":_loc5_});
                     }
                  }
               }
               if(_loc1_.type_id == ResourceType.FISH_RADAR.id)
               {
                  _loc2_.type = ResourceType.FISH_RADAR;
                  _loc2_.param1 = I18n.get("fishRadar_accuracy_" + _loc3_.accuracy);
                  _loc2_.param2 = _loc3_.duration_min;
                  _loc2_.param3 = null;
               }
               else if(_loc1_.type_id == ResourceType.LUCK_POTION.id)
               {
                  _loc2_.type = ResourceType.LUCK_POTION;
                  _loc2_.param1 = I18n.get("shop_param1_luck_potion" + _loc3_.desc_type);
                  _loc2_.param2 = _loc3_.duration_min;
                  _loc2_.param3 = null;
               }
               else if(_loc1_.type_id == ResourceType.MAGIC_WATCH.id)
               {
                  _loc2_.type = ResourceType.MAGIC_WATCH;
                  _loc2_.param1 = _loc3_.percent + "%";
                  _loc2_.param2 = _loc3_.duration_min;
                  _loc2_.param3 = null;
               }
               else if(_loc1_.type_id == ResourceType.EXP_BOOSTER.id)
               {
                  _loc2_.type = ResourceType.EXP_BOOSTER;
                  _loc2_.param1 = "x" + _loc3_.exp_multiple;
                  _loc2_.param2 = _loc3_.duration_min;
                  _loc2_.param3 = null;
               }
               else if(_loc1_.type_id == ResourceType.SHINY_POTION.id)
               {
                  _loc2_.type = ResourceType.SHINY_POTION;
                  _loc2_.param1 = "x" + _loc3_.chance_multiply;
                  _loc2_.param2 = _loc3_.duration_min;
                  _loc2_.param3 = null;
               }
               else if(_loc1_.type_id == ResourceType.POWER_BOOSTER.id)
               {
                  _loc2_.type = ResourceType.POWER_BOOSTER;
                  _loc2_.param1 = (_loc3_.power_multiply - 1) * 100 + "%";
                  _loc2_.param2 = _loc3_.duration_min;
                  _loc2_.param3 = null;
               }
               else if(_loc1_.type_id == ResourceType.CLOTHE.id)
               {
                  _loc2_.type = ResourceType.CLOTHE;
                  _loc2_.param1 = null;
                  _loc2_.param2 = null;
                  _loc2_.param3 = null;
               }
               else
               {
                  if(_loc1_.type_id != ResourceType.FLOAT.id)
                  {
                     continue;
                  }
                  _loc2_.type = ResourceType.FLOAT;
                  _loc2_.param1 = null;
                  _loc2_.param2 = null;
                  _loc2_.param3 = null;
               }
               _loc2_.name = I18n.get(_loc2_.type.name + "_" + _loc2_.id);
               _loc2_.description = I18n.get(_loc2_.type.name + "_desc_" + _loc1_.id);
               _loc2_.priceFishcoins = _loc1_.price_fishcoins;
               _loc2_.priceFishbucks = _loc1_.price_fishbucks;
               _loc2_.imageUrl = FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(_loc2_.type.name,_loc2_.id));
               _loc10_.push(_loc2_);
            }
         }
         _loc10_ = filterShinyFeatureItems(_loc10_);
         _loc10_ = filterMonsterFishRewards(_loc10_);
         _loc10_.sort(ShopItemVO.sortItemsFunc);
         setExtraItems(_loc10_);
      }
      
      private function filterExistItems(param1:Vector.<ShopItemVO>) : Vector.<ShopItemVO>
      {
         var _loc2_:ShopItemVO = null;
         var _loc3_:int = 0;
         var _loc4_:UserResource = null;
         var _loc5_:Vector.<ShopItemVO> = new Vector.<ShopItemVO>(0);
         var _loc6_:InventoryModel = app.user.inventory;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.id;
            switch(_loc2_.type)
            {
               case ResourceType.CLOTHE:
               case ResourceType.FLOAT:
                  _loc4_ = _loc6_.getResource(_loc2_.id,_loc2_.type.id);
                  if(_loc4_ == null)
                  {
                     _loc5_.push(_loc2_);
                  }
                  break;
               case ResourceType.ROD:
                  if(_loc3_ == EResourceID.ER_ROD_FISHAO)
                  {
                     if(!_loc6_.isRodExist(EResourceID.ER_ROD_FISHAO))
                     {
                        _loc5_.push(_loc2_);
                     }
                  }
                  else
                  {
                     _loc5_.push(_loc2_);
                  }
                  break;
               case ResourceType.BAIT:
                  if(_loc3_ == EResourceID.ER_BAIT_STAR_LURE || _loc3_ == EResourceID.ER_BAIT_MONKFISH_LURE || _loc3_ == EResourceID.ER_BAIT_PELICAN_LURE)
                  {
                     if(!_loc6_.isBaitExist(EResourceID.ER_ROD_FISHAO))
                     {
                        _loc5_.push(_loc2_);
                     }
                  }
                  else
                  {
                     _loc5_.push(_loc2_);
                  }
                  break;
               default:
                  _loc5_.push(_loc2_);
            }
         }
         return _loc5_;
      }
      
      override protected function buyHandler(param1:ShopItemVO, param2:int) : void
      {
         var _loc3_:String = null;
         super.buyHandler(param1,param2);
         if(param1.selectedColor != null)
         {
            _loc3_ = param1.selectedColor.name;
         }
         if(param2 == ResourceType.FISHCOINS.id)
         {
            if(app.user.fishcoins >= param1.priceFishcoins)
            {
               FishaoFscModelManager.paymentExtension.buyProduct(param1.type.id,param1.id,param2,_loc3_,Preloader.waitForResponse(this.onBuyComplete));
            }
            else
            {
               GameSwf.instance.showBuyFishcoinsDialog();
            }
         }
         else if(param2 == ResourceType.FISHBUCKS.id)
         {
            if(app.user.fishbucks >= param1.priceFishbucks)
            {
               FishaoFscModelManager.paymentExtension.buyProduct(param1.type.id,param1.id,param2,_loc3_,Preloader.waitForResponse(this.onBuyComplete));
            }
            else
            {
               GameSwf.instance.showBuyFishbucksDialog();
            }
         }
      }
      
      private function filterLocationPirateCaveFeatureItems(param1:Vector.<ShopItemVO>) : Vector.<ShopItemVO>
      {
         var _loc2_:ShopItemVO = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.type == ResourceType.BAIT && (_loc2_.id == 46 || _loc2_.id == 47 || _loc2_.id == 48) && !this._managerFeatures.isFeatureEnabled(EUserFeature.EUF_LOCATION_PIRATE_CAVE))
            {
               _loc2_.blockReason = I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_BLOCK_REASON_PIRATE_CAVE);
            }
         }
         return param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         app.user.onFishcoinsChange(this.updateUserCurrency);
         app.user.onFishbucksChange(this.updateUserCurrency);
         this.updateUserCurrency();
         this.updateLimitedRodAmount();
      }
      
      private function updateLimitedRodAmount() : void
      {
         FishaoFscModelManager.paymentExtension.getRodsAmountToBuyLeft(Preloader.waitForResponse(this.onRodsAmountToBuyLeftResp));
      }
      
      private function updateUserCurrency(param1:Event = null) : void
      {
         fishbucksIndicator.setFishBucks = app.user.fishbucks;
         fishcoinsIndicator.setFishCoins = app.user.fishcoins;
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         app.user.removeOnFishcoinsChange(this.updateUserCurrency);
         app.user.removeOnFishbucksChange(this.updateUserCurrency);
      }
   }
}

