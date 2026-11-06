package com.ax3.fishao.display.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.AmountPanelWrapper;
   import com.ax3.display.wrappers.impl.ScrollListWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.display.wrappers.impl.TradeFishItemWrapper;
   import com.ax3.fishao.model.vo.TradeFishItemVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.utils.math.limit;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class TradeFishSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var title:TextField;
      
      public var list:ScrollListWrapper;
      
      public var items:Vector.<TradeFishItemVO> = new Vector.<TradeFishItemVO>();
      
      private var isBigLengs:Boolean = false;
      
      public var amountPanel:AmountPanelWrapper;
      
      protected var _soldItemIndex:int;
      
      public function TradeFishSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "trade_fish.swf";
         super(_loc1_);
         _canClosedByEsc = false;
      }
      
      public static function sortByFishName(param1:TradeFishItemVO, param2:TradeFishItemVO) : int
      {
         var _loc3_:String = param1.title;
         var _loc4_:String = param2.title;
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         return 0;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         tabChildren = false;
         this.closeButton.handler = this.onCloseClick;
         this.title.text = I18n.get("tradeFishDialogTitle");
         this.amountPanel.titleField.text = I18n.get("amountPanelSell");
         var _loc1_:SwfFactoryWrapper = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,TradeFishItemWrapper);
         _loc1_.process(this.list.itemTemplate);
         this.list.gap = 5;
         this.list.sortFn = sortByFishName;
         this.list.itemFactory = _loc1_;
         this.amountPanel.hide();
         this.showItems();
         super.onAssetCreationComplete();
      }
      
      protected function buyHandler(param1:TradeFishItemVO) : void
      {
      }
      
      private function onCloseClick(param1:MouseEvent) : void
      {
         close();
      }
      
      public function updateAsset() : void
      {
         var _loc1_:SwfFactoryWrapper = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,TradeFishItemWrapper);
         _loc1_.process(this.list.itemTemplate);
         this.list.itemFactory = _loc1_;
         this.showItems();
         --this._soldItemIndex;
         limit(this._soldItemIndex,0,this.list.elements.length);
         this.list.scrollToItemIndex(this._soldItemIndex);
      }
      
      private function showItems() : void
      {
         var _loc1_:TradeFishItemVO = null;
         var _loc2_:TradeFishItemWrapper = null;
         var _loc3_:Vector.<TradeFishItemVO> = this.items;
         this.list.removeAll();
         var _loc4_:int = 20;
         for each(_loc1_ in _loc3_)
         {
            _loc2_ = TradeFishItemWrapper(this.list.add(_loc1_));
            _loc2_.buyHandler = this.buyHandler;
         }
         if(_loc3_.length < 4 && this.isBigLengs == false)
         {
            this.list.GetContent.width += _loc4_;
            this.isBigLengs = true;
         }
      }
   }
}

