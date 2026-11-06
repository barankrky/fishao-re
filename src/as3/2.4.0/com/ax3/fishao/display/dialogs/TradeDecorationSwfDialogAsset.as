package com.ax3.fishao.display.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.FishbucksIndicatorWrapper;
   import com.ax3.display.wrappers.impl.FishcoinsIndicatorWrapper;
   import com.ax3.display.wrappers.impl.ScrollListWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.display.wrappers.impl.TradeDecorationsItemWrapper;
   import com.ax3.fishao.model.vo.TradeDecorationItemVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import flash.events.MouseEvent;
   
   public class TradeDecorationSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var title:DialogTitleWrapper;
      
      public var list:ScrollListWrapper;
      
      public var fishcoinsIndicator:FishcoinsIndicatorWrapper;
      
      public var fishbucksIndicator:FishbucksIndicatorWrapper;
      
      public var items:Vector.<TradeDecorationItemVO> = new Vector.<TradeDecorationItemVO>();
      
      public function TradeDecorationSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "trade_decoration.swf";
         super(_loc1_);
         _canClosedByEsc = false;
      }
      
      public function setItems(param1:Vector.<TradeDecorationItemVO>) : void
      {
         this.items = param1;
         if(this.list != null)
         {
            this.showItems();
         }
      }
      
      private function showItems() : void
      {
         var _loc1_:TradeDecorationItemVO = null;
         var _loc2_:TradeDecorationsItemWrapper = null;
         var _loc3_:Vector.<TradeDecorationItemVO> = this.items;
         this.list.removeAll();
         for each(_loc1_ in _loc3_)
         {
            _loc2_ = TradeDecorationsItemWrapper(this.list.add(_loc1_));
            _loc2_.buyHandler = this.buyHandler;
         }
      }
      
      protected function buyHandler(param1:TradeDecorationItemVO, param2:int) : void
      {
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this.closeButton.handler = this.onCloseClick;
         this.title.text = I18n.get("tradeDecirationDialogTitle");
         if(GameSwf.instance != null)
         {
            this.fishcoinsIndicator.addButton.handler = GameSwf.instance.showBuyFishcoinsDialog;
            this.fishbucksIndicator.addButton.handler = GameSwf.instance.showBuyFishbucksDialog;
         }
         super.onAssetCreationComplete();
         this.updateAsset();
      }
      
      private function onCloseClick(param1:MouseEvent) : void
      {
         close();
      }
      
      public function updateAsset() : void
      {
         var _loc1_:SwfFactoryWrapper = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,TradeDecorationsItemWrapper);
         _loc1_.process(this.list.itemTemplate);
         this.list.gap = 5;
         this.list.itemFactory = _loc1_;
         this.showItems();
      }
   }
}

