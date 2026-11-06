package com.ax3.fishao.view.wrappers.impl.profile.fishesPanel
{
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.display.wrappers.impl.SingleLineTextFieldWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.model.profile.fishesPanelData.FishesPanelData;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.*;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.ElementsFactory;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.PagesControl;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.PagesController;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.PagesElementsContainer;
   import com.ax3.utils.LayoutUtils;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class ProfileFishesWrapper extends ProfilePanelWrapper implements IAssetWrapperRecursive
   {
      
      private static const START_X_ITEMS:int = 213;
      
      private static const START_Y_ITEMS:int = 120;
      
      private static const DISTANCE_HORIZONTAL:int = 256;
      
      private static const DISTANCE_VERTICAL:int = 178;
      
      private static const COUNT_COLUMNS:int = 2;
      
      private static const COUNT_ROWS:int = 2;
      
      public var header1Text:SingleLineTextFieldWrapper;
      
      public var totalFishesText:SingleLineTextFieldWrapper;
      
      public var header2Text:SingleLineTextFieldWrapper;
      
      public var countFishesText:SingleLineTextFieldWrapper;
      
      public var pagesTextField:TextField;
      
      public var leftPageButton:FrameButtonWrapper;
      
      public var rightPageButton:FrameButtonWrapper;
      
      protected var _itemFactory:SwfFactoryWrapper;
      
      private var _pagesController:PagesController;
      
      private var _panelData:FishesPanelData;
      
      public function ProfileFishesWrapper()
      {
         super();
      }
      
      override public function onAssetProcessComplete() : void
      {
         this._itemFactory = new SwfFactoryWrapper(_app.resourceManager,_swfFileName,ProfileFishItemWrapper);
         this._itemFactory.process(_asset.getChildByName("fishesItem"));
         this._panelData = new FishesPanelData();
         this.initStaticData();
      }
      
      private function initStaticData() : void
      {
         this.header1Text.text = I18n.get("alreadyCatched");
         this.header2Text.text = " " + I18n.get("fishesOf");
         this.initPagesController();
      }
      
      public function setPanelData() : void
      {
         if(this._panelData.caughtFishes > 0)
         {
            this.header1Text.text = I18n.get("alreadyCatched");
            this.header2Text.text = " " + I18n.get("fishesOf");
            this.totalFishesText.text = " " + this._panelData.caughtFishes.toString();
            this.countFishesText.text = " " + this._panelData.totalFishes.toString();
         }
         else
         {
            this.header1Text.text = I18n.get("no_fishes_caught_yet");
            this.totalFishesText.text = "";
            this.countFishesText.text = "";
            this.header2Text.text = "";
         }
         LayoutUtils.arrangeDisplayObjectsHorizontallyCentreVertically(new <DisplayObject>[this.header1Text.displayObject,this.totalFishesText.displayObject,this.header2Text.displayObject,this.countFishesText.displayObject],_panelRectangle);
         this._pagesController.elements = this._panelData.userCaughtFishesList;
         callUpdateCallback();
      }
      
      private function initPagesController() : void
      {
         var _loc1_:PagesControl = new PagesControl(this.pagesTextField,this.rightPageButton,this.leftPageButton,TextFieldAutoSize.RIGHT);
         var _loc2_:PagesElementsContainer = new PagesElementsContainer(_asset,START_X_ITEMS,START_Y_ITEMS,DISTANCE_HORIZONTAL,DISTANCE_VERTICAL,COUNT_COLUMNS,COUNT_ROWS);
         var _loc3_:ElementsFactory = new ElementsFactory(this._itemFactory);
         this._pagesController = new PagesController(_loc1_,_loc2_,_loc3_);
         this._pagesController.autosize = TextFieldAutoSize.RIGHT;
      }
      
      override public function update(param1:Function) : void
      {
         super.update(param1);
         this._panelData.load(_login,this.setPanelData);
      }
   }
}

