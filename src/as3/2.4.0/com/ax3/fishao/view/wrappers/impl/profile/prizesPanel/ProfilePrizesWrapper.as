package com.ax3.fishao.view.wrappers.impl.profile.prizesPanel
{
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.display.wrappers.IAssetWrapperWithFactory;
   import com.ax3.display.wrappers.impl.SingleLineTextFieldWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.model.profile.prizesPanelData.PrizesPanelData;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.ProfilePanelWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.ElementsFactory;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.PagesControl;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.PagesController;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.PagesElementsContainer;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class ProfilePrizesWrapper extends ProfilePanelWrapper implements IAssetWrapperRecursive, IAssetWrapperWithFactory
   {
      
      private static const START_X_ITEMS:int = 213;
      
      private static const START_Y_ITEMS:int = 90;
      
      private static const DISTANCE_HORIZONTAL:int = 128;
      
      private static const DISTANCE_VERTICAL:int = 126;
      
      private static const COUNT_COLUMNS:int = 4;
      
      private static const COUNT_ROWS:int = 3;
      
      public var pagesTextField:TextField;
      
      public var leftPageButton:FrameButtonWrapper;
      
      public var rightPageButton:FrameButtonWrapper;
      
      public var noPrizesText:SingleLineTextFieldWrapper;
      
      protected var _prizeItemFactory:SwfFactoryWrapper;
      
      private var _prizeItem:DisplayObject;
      
      private var _panelData:PrizesPanelData;
      
      private var _pagesController:PagesController;
      
      public function ProfilePrizesWrapper()
      {
         super();
      }
      
      override public function onAssetProcessComplete() : void
      {
         this._prizeItem = DisplayObjectContainer(DisplayObjectContainer(_asset.getChildByName("prizeItem")));
         this._prizeItemFactory = new SwfFactoryWrapper(_app.resourceManager,_swfFileName,ProfilePrizeItemWrapper);
         this._prizeItemFactory.process(this._prizeItem);
         this._panelData = new PrizesPanelData();
         this.initPagesController();
      }
      
      private function setPanelData() : void
      {
         if(this._panelData.userPrizesList.length > 0)
         {
            this.noPrizesText.text = "";
         }
         else
         {
            this.noPrizesText.text = I18n.get("no_prizes_won_yet");
         }
         this._pagesController.elements = this._panelData.userPrizesList;
         callUpdateCallback();
      }
      
      private function initPagesController() : void
      {
         var _loc1_:PagesControl = new PagesControl(this.pagesTextField,this.rightPageButton,this.leftPageButton,TextFieldAutoSize.RIGHT);
         var _loc2_:PagesElementsContainer = new PagesElementsContainer(_asset,START_X_ITEMS,START_Y_ITEMS,DISTANCE_HORIZONTAL,DISTANCE_VERTICAL,COUNT_ROWS,COUNT_COLUMNS);
         var _loc3_:ElementsFactory = new ElementsFactory(this._prizeItemFactory);
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

