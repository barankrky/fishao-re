package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.dialog.DialogState;
   import com.ax3.events.VariableChangeEvent;
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.config.RodColorFilter;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.core.FishaoApp;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.display.dialogs.SequentTextFieldMediator;
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.locations.privateHouse.model.EPlayerPosition;
   import com.ax3.fishao.model.InventoryModel;
   import com.ax3.fishao.model.RodUtil;
   import com.ax3.fishao.model.SettingsModel;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.model.info.InventoryItem;
   import com.ax3.fishao.model.info.UserDecoration;
   import com.ax3.fishao.model.info.UserResource;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.resources.EResourceType;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.features.EUserFeature;
   import com.ax3.fishao.view.dialogs.features.ManagerFeatures;
   import com.ax3.fishao.view.dialogs.inventory.InventoryTabInfo;
   import com.ax3.fishao.view.wrappers.impl.InventoryItemWrapper;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils.empty;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextFieldAutoSize;
   import protocol.sr.GetDataResp;
   import protocol.sr.OpenFishboxResp;
   
   public class InventorySwfDialog extends InventorySwfDialogAsset
   {
      
      private static const ITEM_BITMAP_WIDTH:int = 76;
      
      private static const ITEM_BITMAP_HEIGHT:int = 76;
      
      private static const ITEMS_ON_PAGE:int = 10;
      
      private static const ITEMS_PER_ROW:int = 5;
      
      private var _page:int = 1;
      
      private var _items:Vector.<UserResource>;
      
      protected var _itemsViews:Array;
      
      private var _currentItem:InventoryItemWrapper;
      
      private var _selectTabNameOnLoad:String;
      
      private var _textsCategoryMediator:SequentTextFieldMediator;
      
      private var _textsExtraMediator:SequentTextFieldMediator;
      
      private var _isInfluencedOfLuckPotion:Boolean;
      
      private var _isInfluencedMagicWatch:Boolean;
      
      private var _isInfluencedFishRadar:Boolean;
      
      private var _isInfluencedOfExpBooster:Boolean;
      
      private var _isInfluencedOfShinyPotion:Boolean;
      
      private var _isInfluencedOfPowerBooster:Boolean;
      
      private var _messageDialog:MessageDialog;
      
      private var _managerFeatures:ManagerFeatures;
      
      public function InventorySwfDialog()
      {
         super();
         this.init();
      }
      
      private static function openFishboxCallback(param1:OpenFishboxResp) : void
      {
         FishaoFscModelManager.fscModel.removeRequestHandler(OpenFishboxResp,openFishboxCallback);
         var _loc2_:FishboxPrizesSwfDialog = app.dialogFactory.getFishboxPrizesSwfDialog();
         _loc2_.setData(param1.prizeJson);
         _loc2_.show();
      }
      
      public static function groupAndSortDecoVector(param1:Vector.<UserDecoration>) : Vector.<UserDecoration>
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:Vector.<UserDecoration> = new Vector.<UserDecoration>();
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            param1[_loc5_].quantity = 0;
            _loc2_ = false;
            _loc3_ = 0;
            while(_loc3_ < _loc4_.length)
            {
               if(param1[_loc5_].decoId == _loc4_[_loc3_].decoId)
               {
                  _loc4_[_loc3_].idList.push(param1[_loc5_].id);
                  ++_loc4_[_loc3_].quantity;
                  _loc2_ = true;
                  break;
               }
               _loc3_++;
            }
            if(!_loc2_)
            {
               _loc4_.push(param1[_loc5_]);
               _loc4_[_loc4_.length - 1].idList.push(param1[_loc5_].id);
               ++_loc4_[_loc4_.length - 1].quantity;
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      private static function getItemInfo(param1:String, param2:int, param3:int, param4:int, param5:int, param6:UserResource) : InventoryItem
      {
         var _loc7_:InventoryItem = null;
         switch(param1)
         {
            case ResourceType.OTHER.name:
            case ResourceType.FOSSIL.name:
            case ResourceType.FRUIT.name:
               _loc7_ = InventoryItem.createItemOtherType(param5,param2,param3,param4);
               break;
            case ResourceType.CLOTHE.name:
               _loc7_ = InventoryItem.createItemWithType(ResourceType.CLOTHE.id,param2,param3,param4);
               break;
            default:
               _loc7_ = InventoryItem.createItem(param1,param2,param3,param4,param5,param6);
         }
         Cc.logch("invBug","inventoryItem=" + _loc7_);
         return _loc7_;
      }
      
      protected function onButtonCloseClicked(param1:MouseEvent) : void
      {
         close();
      }
      
      protected function onUseDecorationItem(param1:* = null) : void
      {
         var _loc2_:LocationDialogPrivateHouse = GameSwf.currentLocationDialog as LocationDialogPrivateHouse;
         if(_loc2_ == null)
         {
            return;
         }
         select.disable();
         this.close();
         _loc2_.addDecorationFromInventory(this._currentItem.itemData.id,this._currentItem.itemData.infoId);
      }
      
      private function init() : void
      {
         this._managerFeatures = GameSwf.instance.managerFeatures;
         this._itemsViews = [];
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         super.onAssetLoadingComplete(param1);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         title.text = I18n.get("inventoryLabel");
         categoryText.autoSize = TextFieldAutoSize.LEFT;
         category.autoSize = TextFieldAutoSize.LEFT;
         extraText.autoSize = TextFieldAutoSize.LEFT;
         extra.autoSize = TextFieldAutoSize.LEFT;
         this._textsCategoryMediator = new SequentTextFieldMediator(categoryText,category);
         this._textsExtraMediator = new SequentTextFieldMediator(extraText,extra);
         viewFieldBg = _asset.getChildByName("viewFieldBg");
         noItemsText.text = I18n.get("no_items_to_show");
         noItemsText.visible = false;
         super.onAssetCreationComplete();
         closeBtn.handler = this.onButtonCloseClicked;
         bait.addEventListener(MouseEvent.CLICK,this.onTabClick);
         rods.addEventListener(MouseEvent.CLICK,this.onTabClick);
         other.addEventListener(MouseEvent.CLICK,this.onTabClick);
         looks.addEventListener(MouseEvent.CLICK,this.onTabClick);
         fish.addEventListener(MouseEvent.CLICK,this.onTabClick);
         decoration.addEventListener(MouseEvent.CLICK,this.onTabClick);
         fossils.addEventListener(MouseEvent.CLICK,this.onTabClick);
         leftPageButton.handler = this.onLeftPageClick;
         rightPageButton.handler = this.onRightPageClick;
         select.label = I18n.get("Select");
         select.handler = this.onSelectClick;
         if(!this._managerFeatures.isFeatureEnabled(EUserFeature.EUF_LOCATION_TREE_CAVE))
         {
            fossils.hide();
         }
         tabChildren = false;
         this.updateStartTab();
      }
      
      private function onLeftPageClick(param1:MouseEvent) : void
      {
         this.onPageClick(-1);
      }
      
      private function onRightPageClick(param1:MouseEvent) : void
      {
         this.onPageClick(1);
      }
      
      private function onPageClick(param1:int) : void
      {
         this._page += param1;
         this.updatePage();
      }
      
      protected function getInventoryTabInfo() : InventoryTabInfo
      {
         var result:InventoryTabInfo = new InventoryTabInfo();
         try
         {
            if(bait.active)
            {
               result.selectedItemId = app.user.baitInfoId;
               result.kind = ResourceType.BAIT.name;
               this._items = Vector.<UserResource>(app.user.inventory.baits);
            }
            else if(rods.active)
            {
               result.selectedItemId = app.user.userRodId;
               result.kind = ResourceType.ROD.name;
               this._items = Vector.<UserResource>(app.user.inventory.rods);
            }
            else if(other.active)
            {
               result.kind = ResourceType.OTHER.name;
               this._items = Vector.<UserResource>(app.user.inventory.other);
            }
            else if(looks.active)
            {
               result.kind = ResourceType.CLOTHE.name;
               this._items = Vector.<UserResource>(app.user.inventory.looks);
            }
            else if(fish.active)
            {
               result.kind = ResourceType.FISH.name;
               this._items = Vector.<UserResource>(app.user.inventory.fish);
            }
            else if(decoration.active)
            {
               result.kind = ResourceType.DECORATION.name;
               this._items = Vector.<UserResource>(groupAndSortDecoVector(app.user.inventory.decoration));
            }
            else if(fossils.active)
            {
               result.kind = ResourceType.FOSSIL.name;
               this._items = Vector.<UserResource>(app.user.inventory.fossils);
            }
         }
         catch(e:Error)
         {
            Cc.error(e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("inventory");
         }
         return result;
      }
      
      protected function updatePage(param1:Event = null) : void
      {
         var totalPages:int = 0;
         var tabInfo:InventoryTabInfo = null;
         var event:Event = param1;
         tabInfo = null;
         var offset:int = 0;
         var i:int = 0;
         var count:int = 0;
         var _tmpPage:int = 0;
         tabInfo = this.getInventoryTabInfo();
         this.showViewField(this._items.length > 0);
         totalPages = Math.ceil(this._items.length / ITEMS_ON_PAGE);
         try
         {
            if(this._page > totalPages)
            {
               this._page = 0;
            }
            if(this._page == 0 && tabInfo.selectedItemId != -1)
            {
               i = 0;
               while(i < this._items.length)
               {
                  if(this._items[i].id == tabInfo.selectedItemId)
                  {
                     this._page = Math.max(1,Math.ceil((i + 1) / ITEMS_ON_PAGE));
                     break;
                  }
                  i++;
               }
            }
            offset = (this._page - 1) * ITEMS_ON_PAGE;
            if(offset < 0)
            {
               offset = 0;
            }
            count = ITEMS_ON_PAGE;
            _tmpPage = this._page == 0 ? 1 : this._page;
            if(_tmpPage * ITEMS_ON_PAGE > this._items.length)
            {
               count = this._items.length % ITEMS_ON_PAGE;
            }
            while(_itemsPlaceholder.numChildren > count)
            {
               _itemsPlaceholder.removeChildAt(_itemsPlaceholder.numChildren - 1);
            }
         }
         catch(e:Error)
         {
            Cc.logch("inventory","_page",_page);
            Cc.logch("inventory","_items.length",_items != null ? _items.length : "null");
            Cc.logch("inventory","selectedItemId",tabInfo.selectedItemId);
            Cc.error(e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("inventory");
         }
         finally
         {
            Cc.logch("inventory","updatePage() - calculations");
         }
         this._currentItem = null;
         this.generateItems(tabInfo,count,offset);
         if(this._itemsViews.length > 0 && this._currentItem == null)
         {
            this._currentItem = this._itemsViews[0];
         }
         if(this._currentItem != null)
         {
            this.interactWithItem(this._currentItem);
         }
         else
         {
            throwIns.text = "";
            if(_itemsPlaceholder.numChildren <= 0)
            {
               this.displayExtendedInfo = false;
            }
         }
         this.updateButtonsNextPrev();
         if(this._page < 1)
         {
            this._page = 1;
         }
         pagesTextField.text = this._page + " " + I18n.get("of") + " " + totalPages;
      }
      
      private function generateItems(param1:InventoryTabInfo, param2:int, param3:int) : void
      {
         var tabInfo:InventoryTabInfo = param1;
         var count:int = param2;
         var offset:int = param3;
         var i:int = 0;
         var userResource:UserResource = null;
         var resourceId:int = 0;
         var itemInfo:InventoryItem = null;
         var displayItem:InventoryItemWrapper = null;
         this.tryToCleanupOldViews();
         this._itemsViews = [];
         try
         {
            i = 0;
            while(i < count)
            {
               userResource = this._items[i + offset];
               if(userResource is UserDecoration)
               {
                  resourceId = (userResource as UserDecoration).decoId;
               }
               else
               {
                  resourceId = userResource.id;
               }
               itemInfo = getItemInfo(tabInfo.kind,resourceId,userResource.quantity,userResource.hasOwnProperty("infoId") ? int(userResource["infoId"]) : int(userResource["id"]),userResource.type,userResource);
               if(userResource is UserDecoration)
               {
                  itemInfo.id = userResource.id;
               }
               displayItem = this.generateItemButton(itemInfo);
               displayItem.x = i % ITEMS_PER_ROW * (displayItem.width + 20);
               displayItem.y = Math.floor(i / ITEMS_PER_ROW) * (displayItem.height + 20);
               displayItem.addEventListener(MouseEvent.CLICK,this.onItemClick);
               displayItem.selected = displayItem.itemData.id == tabInfo.selectedItemId;
               displayItem.active = false;
               if(this._currentItem == null && displayItem.selected)
               {
                  this._currentItem = displayItem;
               }
               _itemsPlaceholder.addChild(displayItem);
               this._itemsViews.push(displayItem);
               i++;
            }
         }
         catch(e:Error)
         {
            Cc.error(e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("inventory2");
         }
         finally
         {
            Cc.logch("inventory","generateItems - added items if needed");
         }
      }
      
      private function tryToCleanupOldViews() : void
      {
         var _loc1_:InventoryItemWrapper = null;
         for each(_loc1_ in this._itemsViews)
         {
            _loc1_.active = false;
            if(_loc1_.parent != null)
            {
               _loc1_.parent.removeChild(_loc1_);
            }
         }
      }
      
      private function updateButtonsNextPrev() : void
      {
         var _loc1_:int = Math.ceil(this._items.length / ITEMS_ON_PAGE);
         if(_loc1_ == 0)
         {
            _loc1_ = 1;
         }
         if(this._items.length <= ITEMS_ON_PAGE)
         {
            leftPageButton.disable();
            rightPageButton.disable();
         }
         else
         {
            if(this._page <= 1)
            {
               leftPageButton.disable();
            }
            else
            {
               leftPageButton.enable();
            }
            if(this._page >= _loc1_)
            {
               rightPageButton.disable();
               this._page = _loc1_;
            }
            else
            {
               rightPageButton.enable();
            }
         }
      }
      
      protected function onSelectClick(param1:MouseEvent) : void
      {
         Cc.logch("inventory","onSelectClick()");
         Cc.explodech("inventory",this._currentItem.itemData,2);
         if(this._currentItem != null)
         {
            if(bait.active)
            {
               FishaoFscModelManager.updateExtension.chooseBait(this._currentItem.itemData.id);
            }
            else if(rods.active)
            {
               FishaoFscModelManager.updateExtension.chooseRod(this._currentItem.itemData.id);
            }
            close();
         }
      }
      
      private function onUseClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:SettingsModel = null;
         if(this._currentItem == null)
         {
            return;
         }
         if(this._currentItem.itemData.type == ResourceType.FISHBOX.id)
         {
            FishaoFscModelManager.fscModel.addRequestHandler(OpenFishboxResp,openFishboxCallback);
            FishaoFscModelManager.updateExtension.openFishbox();
         }
         else if(this._currentItem.itemData.type == ResourceType.LUCK_POTION.id || this._currentItem.itemData.type == ResourceType.MAGIC_WATCH.id || this._currentItem.itemData.type == ResourceType.FISH_RADAR.id || this._currentItem.itemData.type == ResourceType.EXP_BOOSTER.id || this._currentItem.itemData.type == ResourceType.SHINY_POTION.id || this._currentItem.itemData.type == ResourceType.POWER_BOOSTER.id)
         {
            _loc2_ = int(JSON.parse(String(app.resourcesDict.getProperty(this._currentItem.itemData.id,"param")))["duration_min"]);
            switch(this._currentItem.itemData.type)
            {
               case ResourceType.LUCK_POTION.id:
                  _loc3_ = I18n.get(ResourceType.LUCK_POTION.name + "_" + this._currentItem.itemData.id);
                  break;
               case ResourceType.MAGIC_WATCH.id:
                  _loc3_ = I18n.get(ResourceType.MAGIC_WATCH.name + "_" + this._currentItem.itemData.id);
                  break;
               case ResourceType.FISH_RADAR.id:
                  _loc3_ = I18n.get(ResourceType.FISH_RADAR.name + "_" + this._currentItem.itemData.id);
                  break;
               case ResourceType.EXP_BOOSTER.id:
                  _loc3_ = I18n.get(ResourceType.EXP_BOOSTER.name + "_" + this._currentItem.itemData.id);
                  break;
               case ResourceType.SHINY_POTION.id:
                  _loc3_ = I18n.get(ResourceType.SHINY_POTION.name + "_" + this._currentItem.itemData.id);
                  break;
               case ResourceType.POWER_BOOSTER.id:
                  _loc3_ = I18n.get(ResourceType.POWER_BOOSTER.name + "_" + this._currentItem.itemData.id);
            }
            this._messageDialog = app.dialogFactory.getMessageDialog();
            this._messageDialog.setText(I18n.get("useItemMessageText").replace("#ITEM#",_loc3_).replace("#MIN#",_loc2_),false);
            this._messageDialog.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.YES_BUTTON | MessageDialog.NO_BUTTON;
            this._messageDialog.closeOnOk = true;
            this._messageDialog.callbackYes = this.messageYesCallback;
            this._messageDialog.show();
         }
         else if(this._currentItem.itemData.type == ResourceType.CLOTHE.id)
         {
            InventoryModel.currentLookIdForCharEditor = this._currentItem.itemData.id;
            GameSwf.instance.showCharacterEditor(false,[]);
            close();
         }
         else if(this._currentItem.itemData.type == ResourceType.FLOAT.id)
         {
            _loc4_ = GameSwf.instance.gameSettings;
            _loc4_.float = this._currentItem.itemData.id;
            GameSwf.settings.saveSettings(_loc4_);
            close();
         }
      }
      
      private function messageYesCallback() : void
      {
         this._messageDialog.callbackYes = null;
         switch(this._currentItem.itemData.type)
         {
            case ResourceType.LUCK_POTION.id:
               FishaoFscModelManager.useItemsExtension.useLuckPotion(this._currentItem.itemData.id,null);
               break;
            case ResourceType.MAGIC_WATCH.id:
               FishaoFscModelManager.useItemsExtension.useMagicWatch(null);
               break;
            case ResourceType.FISH_RADAR.id:
               FishaoFscModelManager.useItemsExtension.useFishRadar(this._currentItem.itemData.id,null);
               break;
            case ResourceType.EXP_BOOSTER.id:
               FishaoFscModelManager.useItemsExtension.useExpBooster(this._currentItem.itemData.id,null);
               break;
            case ResourceType.SHINY_POTION.id:
               FishaoFscModelManager.useItemsExtension.useShinyBooster(this._currentItem.itemData.id,null);
               break;
            case ResourceType.POWER_BOOSTER.id:
               FishaoFscModelManager.useItemsExtension.usePowerBooster(this._currentItem.itemData.id,null);
         }
         close();
      }
      
      public function showAndSetTab(param1:String) : void
      {
         if(_state == DialogState.READY)
         {
            this.switchToTab(param1);
            this._selectTabNameOnLoad = null;
         }
         else
         {
            this._selectTabNameOnLoad = param1;
         }
         this.show();
      }
      
      public function switchToTab(param1:String) : void
      {
         Cc.logch("inventory","switchToTab(" + param1 + ")");
         this.setInactiveAll();
         noItemsText.text = I18n.get("no_items_to_show");
         switch(param1)
         {
            case EResourceType.BAIT_NAME:
               this._items = Vector.<UserResource>(app.user.inventory.baits);
               bait.active = true;
               app.user.inventory.addEventListener(InventoryModel.BAITS_CHANGE,this.updatePage);
               categoryText.text = I18n.get("inventory_extra");
               this._textsCategoryMediator.displace();
               break;
            case EResourceType.RODS_NAME:
               this._items = Vector.<UserResource>(app.user.inventory.rods);
               rods.active = true;
               app.user.inventory.addEventListener(InventoryModel.RODS_CHANGE,this.updatePage);
               break;
            case EResourceType.OTHER_NAME:
               this._items = Vector.<UserResource>(app.user.inventory.other);
               other.active = true;
               app.user.inventory.addEventListener(InventoryModel.OTHER_CHANGE,this.updatePage);
               break;
            case EResourceType.FISH_NAME:
               this._items = Vector.<UserResource>(app.user.inventory.fishNotZeeroCount);
               fish.active = true;
               app.user.inventory.addEventListener(InventoryModel.FISH_CHANGE,this.updatePage);
               noItemsText.text = I18n.get("inventoryNoFish");
               break;
            case EResourceType.LOOKS_NAME:
               this._items = Vector.<UserResource>(app.user.inventory.looks);
               looks.active = true;
               app.user.inventory.addEventListener(InventoryModel.LOOKS_CHANGE,this.updatePage);
               break;
            case EResourceType.DECORATION_NAME:
               this._items = Vector.<UserResource>(groupAndSortDecoVector(app.user.inventory.decoration));
               app.user.inventory.addEventListener(InventoryModel.DECORATION_CHANGE,this.updatePage);
               decoration.active = true;
               break;
            case EResourceType.FOSSILS_NAME:
               this._items = Vector.<UserResource>(app.user.inventory.fossils);
               fossils.active = true;
               app.user.inventory.addEventListener(InventoryModel.FOSSILS_CHANGE,this.updatePage);
         }
         this._page = 0;
         this.updatePage();
      }
      
      protected function onTabClick(param1:MouseEvent) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_049_UI_Switch_tab);
         this.switchToTab(param1.currentTarget.name);
      }
      
      private function setInactiveAll() : void
      {
         Cc.logch("inventory","setInactiveAll()");
         this._currentItem = null;
         bait.active = false;
         rods.active = false;
         other.active = false;
         looks.active = false;
         fish.active = false;
         decoration.active = false;
         fossils.active = false;
         this.removeListeners();
      }
      
      private function removeListeners() : void
      {
         app.user.inventory.removeEventListener(InventoryModel.BAITS_CHANGE,this.updatePage);
         app.user.inventory.removeEventListener(InventoryModel.RODS_CHANGE,this.updatePage);
         app.user.inventory.removeEventListener(InventoryModel.OTHER_CHANGE,this.updatePage);
         app.user.inventory.removeEventListener(InventoryModel.LOOKS_CHANGE,this.updatePage);
         app.user.inventory.removeEventListener(InventoryModel.FISH_CHANGE,this.updatePage);
         app.user.inventory.removeEventListener(InventoryModel.DECORATION_CHANGE,this.updatePage);
         app.user.inventory.removeEventListener(InventoryModel.FOSSILS_CHANGE,this.updatePage);
      }
      
      override public function show() : void
      {
         Cc.logch("inventory","show()");
         this.updateLimitedRodAmount();
      }
      
      private function updateLimitedRodAmount() : void
      {
         FishaoFscModelManager.paymentExtension.getRodsAmountToBuyLeft(Preloader.waitForResponse(this.onRodsAmountToBuyLeftResp));
      }
      
      private function onRodsAmountToBuyLeftResp(param1:GetDataResp) : void
      {
         var _loc2_:int = 0;
         if(param1.data.hasOwnProperty("amountOfRodsToBuyLeft"))
         {
            _loc2_ = parseInt(param1.data.amountOfRodsToBuyLeft);
            app.user.inventory.amountOfFishrodToBuyLeft = _loc2_;
         }
         if(isReady())
         {
            this.updatePage();
         }
         super.show();
      }
      
      protected function onItemClick(param1:MouseEvent) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_050_UI_Select_item);
         if(this._currentItem != null)
         {
            this._currentItem.active = false;
         }
         this._currentItem = InventoryItemWrapper(param1.currentTarget);
         this.interactWithItem(this._currentItem);
      }
      
      private function interactWithItem(param1:InventoryItemWrapper) : void
      {
         Cc.logch("inventory","interactWithItem()");
         Cc.explodech("inventory",param1.itemData,2);
         param1.active = true;
         param1.itemData.isSelected = param1.selected;
         this.displayExtendedInfo = true;
         this.setDataByItemId(param1.itemData);
      }
      
      private function setDataByItemId(param1:InventoryItem) : void
      {
         var _loc2_:CharViewConfig = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:ScaledBitmap = null;
         var _loc8_:Array = null;
         var _loc9_:FishInfoVO = null;
         var _loc10_:ColorMatrix = null;
         var _loc11_:ColorMatrixFilter = null;
         itemName.text = param1.name;
         if(param1.type == ResourceType.FISHBOX.id || param1.type == ResourceType.LUCK_POTION.id && (param1.id == ResourceType.ID_LUCK_POTION_1 || param1.id == ResourceType.ID_LUCK_POTION_2) || param1.type == ResourceType.MAGIC_WATCH.id || param1.type == ResourceType.FISH_RADAR.id || param1.type == ResourceType.EXP_BOOSTER.id && (param1.id == ResourceType.ID_EXP_BOOSTER_X2 || param1.id == ResourceType.ID_EXP_BOOSTER_X4) || param1.type == ResourceType.SHINY_POTION.id && (param1.id == ResourceType.ID_SHINY_POTION_1 || param1.id == ResourceType.ID_SHINY_POTION_2) || param1.type == ResourceType.POWER_BOOSTER.id && (param1.id == ResourceType.ID_POWER_BOOSTER_1 || param1.id == ResourceType.ID_POWER_BOOSTER_2) || param1.type == ResourceType.CLOTHE.id || param1.type == ResourceType.FLOAT.id)
         {
            select.label = I18n.get("Use");
            if(param1.type == ResourceType.CLOTHE.id)
            {
               _loc2_ = CharViewConfig.fromObject(FishaoApp(app).char);
               _loc3_ = param1.id % 100;
               _loc4_ = param1.id - _loc3_;
               _loc5_ = true;
               if(_loc4_ == ResourceType.HAIR_ID_OFFSET && (_loc2_.isMale() && _loc3_ > 50 || !_loc2_.isMale() && _loc3_ > 0 && _loc3_ < 50) || _loc4_ == ResourceType.SHOES_ID_OFFSET && (_loc2_.isMale() && _loc3_ > 50 || !_loc2_.isMale() && _loc3_ > 0 && _loc3_ < 50 && CharViewConfig.EXTRA_RUN_SHOES.indexOf(_loc3_ + 100) == ConstantsBase.INDEX_NONE) || Boolean(app.user.isModerator) && (_loc4_ == ResourceType.HAT_ID_OFFSET || _loc4_ == ResourceType.HAIR_ID_OFFSET))
               {
                  _loc5_ = false;
               }
            }
            if(param1.type == ResourceType.LUCK_POTION.id && !this._isInfluencedOfLuckPotion || param1.type == ResourceType.MAGIC_WATCH.id && !this._isInfluencedMagicWatch || param1.type == ResourceType.FISH_RADAR.id && !this._isInfluencedFishRadar || param1.type == ResourceType.EXP_BOOSTER.id && !this._isInfluencedOfExpBooster || param1.type == ResourceType.SHINY_POTION.id && !this._isInfluencedOfShinyPotion || param1.type == ResourceType.POWER_BOOSTER.id && !this._isInfluencedOfPowerBooster || param1.type == ResourceType.FISHBOX.id || param1.type == ResourceType.FLOAT.id || param1.type == ResourceType.CLOTHE.id && _loc5_)
            {
               select.handler = this.onUseClick;
               select.enable();
               select.tooltipConfig = null;
            }
            else
            {
               select.handler = null;
               select.disable();
               if(param1.type == ResourceType.LUCK_POTION.id || param1.type == ResourceType.MAGIC_WATCH.id || param1.type == ResourceType.FISH_RADAR.id || param1.type == ResourceType.EXP_BOOSTER.id || param1.type == ResourceType.SHINY_POTION.id || param1.type == ResourceType.POWER_BOOSTER.id)
               {
                  select.tooltipConfig = {"text":I18n.get("inventoryUseButtonTooltip")};
               }
            }
            select.show();
         }
         else if(param1.resourceType.id == ResourceType.DECORATION.id && GameSwf.currentLocationDialog.locationModel.absoluteId == LocationConfig.PRIVATE_HOUSE.id)
         {
            if((GameSwf.currentLocationDialog as LocationDialogPrivateHouse).playerPositionCurrent != EPlayerPosition.EPP_GARDEN)
            {
               select.label = I18n.get("Use");
               select.handler = this.onUseDecorationItem;
               select.show();
            }
         }
         else
         {
            select.label = I18n.get("Select");
            select.handler = this.onSelectClick;
            select.enable();
         }
         var _loc12_:Array = [];
         if(rods.active)
         {
            _loc6_ = app.rodsDict.get(param1.infoId);
            if(_loc6_ != null)
            {
               if(_loc6_.hasOwnProperty("length"))
               {
                  _loc12_.push({
                     "title":I18n.get("inventory_size"),
                     "value":I18n.get(RodUtil.getRodStringByLength(_loc6_["length"]))
                  });
               }
               if(_loc6_.hasOwnProperty("quality_power"))
               {
                  _loc12_.push({
                     "title":I18n.get("inventory_quality"),
                     "value":I18n.get("max_fish_property") + I18n.formatDistance(_loc6_["quality_power"])
                  });
               }
            }
         }
         else
         {
            if(!empty(param1.category))
            {
               _loc12_.push({
                  "title":I18n.get("inventory_category"),
                  "value":I18n.get("bait_category_" + param1.category)
               });
            }
            if(!empty(param1.extra))
            {
               _loc12_.push({
                  "title":I18n.get("inventory_extra"),
                  "value":param1.extra
               });
            }
         }
         if(_loc12_.length > 0)
         {
            categoryText.visible = true;
            category.visible = true;
            categoryText.text = _loc12_[0].title;
            category.text = _loc12_[0].value;
            this._textsCategoryMediator.displace();
         }
         else
         {
            categoryText.visible = false;
            category.visible = false;
         }
         if(_loc12_.length > 1)
         {
            extraText.visible = true;
            extra.visible = true;
            extraText.text = _loc12_[1].title;
            extra.text = _loc12_[1].value;
            this._textsExtraMediator.displace();
         }
         else
         {
            extraText.visible = false;
            extra.visible = false;
         }
         description.text = param1.description;
         if(param1.throwIns > 0)
         {
            throwIns.text = param1.throwIns.toString();
         }
         else
         {
            throwIns.text = "";
         }
         if(param1.type == ResourceType.OTHER.id && (param1.id == 2 || param1.id == 3 || param1.id == 4) && param1.throwIns <= 1)
         {
            throwIns.text = "";
         }
         throwIns.visible = !empty(throwIns.text);
         if(param1.imageFilename != null)
         {
            _loc7_ = new ScaledBitmap();
            _loc7_.width = ITEM_BITMAP_WIDTH;
            _loc7_.height = ITEM_BITMAP_HEIGHT;
            app.resourceManager.replaceBitmapDataFromURL(_loc7_,FishaoBitmapLoader.convertImageNameURL(param1.imageFilename));
            if(param1.resourceType == ResourceType.ROD && param1.color != null)
            {
               _loc7_.filters = RodColorFilter.getShowColorFilters(_loc6_.infoId,ShopItemColor.findColorName(param1.color.name));
            }
            else if(param1.resourceType == ResourceType.FISH_SHINY)
            {
               _loc8_ = [];
               _loc9_ = app.fishDict.get(param1.id) as FishInfoVO;
               _loc10_ = new ColorMatrix();
               _loc10_.adjustHue(_loc9_.hueShiftOfShiny);
               _loc11_ = new ColorMatrixFilter(_loc10_.matrix);
               _loc8_.push(_loc11_);
               _loc7_.filters = _loc8_;
            }
            else
            {
               _loc7_.filters = null;
            }
            itemIcon.itemBitmap = _loc7_;
         }
         itemIcon.selected = param1.isSelected;
      }
      
      private function set displayExtendedInfo(param1:Boolean) : void
      {
         itemName.visible = param1;
         category.visible = param1;
         categoryText.visible = param1;
         extra.visible = param1;
         extraText.visible = param1;
         if(bait.active || rods.active)
         {
            throwIns.showLabel();
            select.show();
         }
         else
         {
            throwIns.hideLabel();
            select.hide();
         }
         select.visible = param1;
         description.visible = param1;
         itemIcon.visible = param1;
         throwIns.visible = !empty(throwIns.text);
      }
      
      private function generateItemButton(param1:InventoryItem) : InventoryItemWrapper
      {
         Cc.logch("invBug","_itemFactory=" + _itemFactory);
         var _loc2_:InventoryItemWrapper = InventoryItemWrapper(_itemFactory.createInstance());
         Cc.logch("invBug","button=" + _loc2_);
         _loc2_.itemData = param1;
         return _loc2_;
      }
      
      public function showTabByResType(param1:ResourceType) : void
      {
         this.showAndSetTab(param1.inventoryTabName);
      }
      
      override public function activate() : void
      {
         super.activate();
         app.user.onFlagInfluencedOfLuckPotionChange(this.onFlagInfluencedOfLuckPotionChange);
         app.user.onFlagInfluencedOfMagicWatchChange(this.onFlagInfluencedOfMagicWatchChange);
         app.user.onFlagInfluencedOfFishRadarChange(this.onFlagInfluencedOfFishRadarChange);
         app.user.onFlagInfluencedOfExpBoosterChange(this.onFlagInfluencedOfExpBoosterChange);
         app.user.onFlagInfluencedOfShinyPotionChange(this.onFlagInfluencedOfShinyPotionChange);
         app.user.onFlagInfluencedOfPowerBoosterChange(this.onFlagInfluencedOfPowerBoosterChange);
         this._isInfluencedOfLuckPotion = app.user.isInfluencedOfLuckPotion;
         this._isInfluencedMagicWatch = app.user.isInfluencedOfMagicWatch;
         this._isInfluencedFishRadar = app.user.isInfluencedOfFishRadar;
         this._isInfluencedOfExpBooster = app.user.isInfluencedOfExpBooster;
         this._isInfluencedOfShinyPotion = app.user.isInfluencedOfShinyPotion;
         this._isInfluencedOfPowerBooster = app.user.isInfluencedOfPowerBooster;
      }
      
      private function showViewField(param1:Boolean) : void
      {
         viewFieldBg.visible = param1;
         leftPageButton.visible = param1;
         rightPageButton.visible = param1;
         pagesTextField.visible = param1;
         noItemsText.visible = !param1;
      }
      
      private function onFlagInfluencedOfLuckPotionChange(param1:VariableChangeEvent) : void
      {
         this._isInfluencedOfLuckPotion = Boolean(param1.newValue);
         if(this._currentItem != null && this._currentItem.itemData.type == ResourceType.LUCK_POTION.id)
         {
            if(this._isInfluencedOfLuckPotion)
            {
               select.handler = null;
               select.disable();
            }
            else
            {
               select.handler = this.onUseClick;
               select.enable();
            }
         }
      }
      
      private function onFlagInfluencedOfMagicWatchChange(param1:VariableChangeEvent) : void
      {
         this._isInfluencedMagicWatch = Boolean(param1.newValue);
         if(this._currentItem != null && this._currentItem.itemData.type == ResourceType.MAGIC_WATCH.id)
         {
            if(this._isInfluencedMagicWatch)
            {
               select.handler = null;
               select.disable();
            }
            else
            {
               select.handler = this.onUseClick;
               select.enable();
            }
         }
      }
      
      private function onFlagInfluencedOfFishRadarChange(param1:VariableChangeEvent) : void
      {
         this._isInfluencedFishRadar = Boolean(param1.newValue);
         if(this._currentItem != null && this._currentItem.itemData.type == ResourceType.FISH_RADAR.id)
         {
            if(this._isInfluencedFishRadar)
            {
               select.handler = null;
               select.disable();
            }
            else
            {
               select.handler = this.onUseClick;
               select.enable();
            }
         }
      }
      
      private function onFlagInfluencedOfExpBoosterChange(param1:VariableChangeEvent) : void
      {
         this._isInfluencedOfExpBooster = Boolean(param1.newValue);
         if(this._currentItem != null && this._currentItem.itemData.type == ResourceType.EXP_BOOSTER.id)
         {
            if(this._isInfluencedOfExpBooster)
            {
               select.handler = null;
               select.disable();
            }
            else
            {
               select.handler = this.onUseClick;
               select.enable();
            }
         }
      }
      
      private function onFlagInfluencedOfPowerBoosterChange(param1:VariableChangeEvent) : void
      {
         this._isInfluencedOfPowerBooster = Boolean(param1.newValue);
         if(this._currentItem != null && this._currentItem.itemData.type == ResourceType.POWER_BOOSTER.id)
         {
            if(this._isInfluencedOfPowerBooster)
            {
               select.handler = null;
               select.disable();
            }
            else
            {
               select.handler = this.onUseClick;
               select.enable();
            }
         }
      }
      
      private function onFlagInfluencedOfShinyPotionChange(param1:VariableChangeEvent) : void
      {
         this._isInfluencedOfShinyPotion = Boolean(param1.newValue);
         if(this._currentItem != null && this._currentItem.itemData.type == ResourceType.SHINY_POTION.id)
         {
            if(this._isInfluencedOfShinyPotion)
            {
               select.handler = null;
               select.disable();
            }
            else
            {
               select.handler = this.onUseClick;
               select.enable();
            }
         }
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this.removeListeners();
         app.user.removeOnFlagInfluencedOfLuckPotionChange(this.onFlagInfluencedOfLuckPotionChange);
         app.user.removeOnFlagInfluencedOfMagicWatchChange(this.onFlagInfluencedOfMagicWatchChange);
         app.user.removeOnFlagInfluencedOfFishRadarChange(this.onFlagInfluencedOfFishRadarChange);
         app.user.removeOnFlagInfluencedOfExpBoosterChange(this.onFlagInfluencedOfExpBoosterChange);
         app.user.removeOnFlagInfluencedOfShinyPotionChange(this.onFlagInfluencedOfShinyPotionChange);
         app.user.removeOnFlagInfluencedOfPowerBoosterChange(this.onFlagInfluencedOfPowerBoosterChange);
      }
      
      private function updateStartTab() : void
      {
         var _loc1_:LocationDialogPrivateHouse = GameSwf.currentLocationDialog as LocationDialogPrivateHouse;
         if(this._selectTabNameOnLoad != null)
         {
            this.switchToTab(this._selectTabNameOnLoad);
            this._selectTabNameOnLoad = null;
         }
         else if(_loc1_ != null && _loc1_.playerPositionCurrent != EPlayerPosition.EPP_GARDEN)
         {
            this.switchToTab(EResourceType.DECORATION_NAME);
         }
         else
         {
            this.switchToTab(EResourceType.RODS_NAME);
         }
      }
   }
}

