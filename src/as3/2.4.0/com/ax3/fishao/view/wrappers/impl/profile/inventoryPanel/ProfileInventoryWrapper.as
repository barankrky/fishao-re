package com.ax3.fishao.view.wrappers.impl.profile.inventoryPanel
{
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.display.wrappers.IAssetWrapperWithFactory;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.model.profile.inventoryPanelData.InventoryPanelData;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownListBaseItem;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownProfilerWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.ProfilePanelWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.ElementsFactory;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.PagesControl;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.PagesController;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.PagesElementsContainer;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class ProfileInventoryWrapper extends ProfilePanelWrapper implements IAssetWrapperRecursive, IAssetWrapperWithFactory
   {
      
      private static const START_X_ITEMS:int = 216;
      
      private static const START_Y_ITEMS:int = 176;
      
      private static const DISTANCE_HORIZONTAL:int = 102;
      
      private static const DISTANCE_VERTICAL:int = 100;
      
      private static const COUNT_COLUMNS:int = 5;
      
      private static const COUNT_ROWS:int = 3;
      
      public var chooseItemsText:TextField;
      
      public var pagesTextField:TextField;
      
      public var leftPageButton:FrameButtonWrapper;
      
      public var rightPageButton:FrameButtonWrapper;
      
      public var typePicker:FishaoDropdownProfilerWrapper;
      
      protected var _itemFactory:SwfFactoryWrapper;
      
      protected var _typeFactory:SwfFactoryWrapper;
      
      private var _panelData:InventoryPanelData;
      
      private var _pagesController:PagesController;
      
      public var itemsContainer:Sprite;
      
      public function ProfileInventoryWrapper()
      {
         super();
      }
      
      override public function onAssetProcessComplete() : void
      {
         var _loc1_:DisplayObject = _asset.getChildByName("inventoryItem");
         this._itemFactory = new SwfFactoryWrapper(_app.resourceManager,_swfFileName,ProfileInventoryItemWrapper);
         this._itemFactory.process(_loc1_);
         this._typeFactory = new SwfFactoryWrapper(_app.resourceManager,_swfFileName,FishaoDropdownListBaseItem);
         this.typePicker.setItemFactory(this._typeFactory);
         this.typePicker.addEventListener(Event.CHANGE,this.onChangeType);
         this.typePicker.text = I18n.getUpper("all");
         this.initStaticData();
      }
      
      private function initStaticData() : void
      {
         this.chooseItemsText.text = I18n.get("chooseItemsToShow");
         this._panelData = new InventoryPanelData();
         this.typePicker.create(this._panelData.typesNamesList);
         this.initPagesController();
      }
      
      private function setPanelData() : void
      {
         this.onChangeType(null);
         callUpdateCallback();
      }
      
      private function initPagesController() : void
      {
         var _loc1_:PagesControl = new PagesControl(this.pagesTextField,this.rightPageButton,this.leftPageButton,TextFieldAutoSize.RIGHT);
         var _loc2_:PagesElementsContainer = new PagesElementsContainer(this.itemsContainer,START_X_ITEMS,START_Y_ITEMS,DISTANCE_HORIZONTAL,DISTANCE_VERTICAL,COUNT_ROWS,COUNT_COLUMNS);
         var _loc3_:ElementsFactory = new ElementsFactory(this._itemFactory);
         this._pagesController = new PagesController(_loc1_,_loc2_,_loc3_);
      }
      
      private function onChangeType(param1:Event) : void
      {
         this._pagesController.elements = this._panelData.getItemsList(this.typePicker.displayValue);
      }
      
      override public function update(param1:Function) : void
      {
         super.update(param1);
         this._panelData.load(_login,this.setPanelData);
      }
   }
}

