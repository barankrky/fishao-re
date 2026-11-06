package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.resources.EResourceType;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.InventoryItemWrapper;
   import com.ax3.fishao.view.wrappers.impl.InventoryTabWrapper;
   import com.ax3.fishao.view.wrappers.impl.InventoryThrowInsWrapper;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class InventorySwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      private static const START_X_ITEMS:int = 215;
      
      private static const START_Y_ITEMS:int = 274;
      
      public var title:DialogTitleWrapper;
      
      public var closeBtn:CloseMenuFishaoButtonWrapper;
      
      public var tabUpLayer:Sprite;
      
      public var tabDownLayer:Sprite;
      
      public var itemIcon:InventoryItemWrapper;
      
      public var bait:InventoryTabWrapper;
      
      public var rods:InventoryTabWrapper;
      
      public var other:InventoryTabWrapper;
      
      public var fish:InventoryTabWrapper;
      
      public var looks:InventoryTabWrapper;
      
      public var decoration:InventoryTabWrapper;
      
      public var fossils:InventoryTabWrapper;
      
      public var itemName:TextField;
      
      public var category:TextField;
      
      public var categoryText:TextField;
      
      public var description:TextField;
      
      public var extra:TextField;
      
      public var extraText:TextField;
      
      public var noItemsText:TextField;
      
      public var throwIns:InventoryThrowInsWrapper;
      
      public var pagesTextField:TextField;
      
      public var select:ConfirmFrameButtonWrapper;
      
      public var leftPageButton:FrameButtonWrapper;
      
      public var rightPageButton:FrameButtonWrapper;
      
      public var viewFieldBg:DisplayObject;
      
      private var _invItem:DisplayObject;
      
      protected var _itemFactory:SwfFactoryWrapper;
      
      protected var _itemsPlaceholder:Sprite;
      
      protected var _tabMap:Dictionary;
      
      public function InventorySwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "Inventory.swf";
         super(_loc1_);
         this._itemsPlaceholder = new Sprite();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this._tabMap = new Dictionary(true);
         this._tabMap[EResourceType.BAIT_NAME] = this.bait;
         this._tabMap[EResourceType.RODS_NAME] = this.rods;
         this._tabMap[EResourceType.OTHER_NAME] = this.other;
         this._tabMap[EResourceType.LOOKS_NAME] = this.looks;
         this._tabMap[EResourceType.FISH_NAME] = this.fish;
         this._tabMap[EResourceType.DECORATION_NAME] = this.decoration;
         this._tabMap[EResourceType.FOSSILS_NAME] = this.fossils;
         this.bait.init(I18n.get("Bait"),this.tabUpLayer,this.tabDownLayer,EResourceType.BAIT_NAME);
         this.rods.init(I18n.get("Rods"),this.tabUpLayer,this.tabDownLayer,EResourceType.RODS_NAME);
         this.other.init(I18n.get("Other"),this.tabUpLayer,this.tabDownLayer,EResourceType.OTHER_NAME);
         this.looks.init(I18n.get("Looks"),this.tabUpLayer,this.tabDownLayer,EResourceType.LOOKS_NAME);
         this.fish.init(I18n.get("inventory_dialog_fish"),this.tabUpLayer,this.tabDownLayer,EResourceType.FISH_NAME);
         this.decoration.init(I18n.get("inventory_dialog_decoration"),this.tabUpLayer,this.tabDownLayer,EResourceType.DECORATION_NAME);
         this.fossils.init(I18n.get(EStringType.EST_DIALOG_TRADE_TAB_FOSSILS),this.tabUpLayer,this.tabDownLayer,EResourceType.FOSSILS_NAME);
         addChild(this._itemsPlaceholder);
         this._itemsPlaceholder.x = START_X_ITEMS;
         this._itemsPlaceholder.y = START_Y_ITEMS;
         super.onAssetCreationComplete();
         this.throwIns.label = I18n.get("inventory_throw_ins_left_label");
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         Cc.logch("invBug","onAssetLoadingComplete()");
         super.onAssetLoadingComplete(param1);
         this._invItem = param1.getChildByName("invItem");
         this._itemFactory = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,InventoryItemWrapper);
         this._itemFactory.process(this._invItem);
         Cc.logch("invBug","onAssetLoadingComplete() - _itemFactory created");
      }
   }
}

