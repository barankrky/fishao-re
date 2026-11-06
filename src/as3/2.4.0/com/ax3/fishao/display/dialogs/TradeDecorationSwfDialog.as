package com.ax3.fishao.display.dialogs
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.model.vo.TradeDecorationItemVO;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.interior.ManagerInterior;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.events.Event;
   import protocol.sr.ErrorResp;
   
   public class TradeDecorationSwfDialog extends TradeDecorationSwfDialogAsset
   {
      
      private var _managerInterior:ManagerInterior;
      
      public function TradeDecorationSwfDialog()
      {
         super();
      }
      
      override public function show() : void
      {
         super.show();
         this._managerInterior = GameSwf.instance.managerInterior;
         this.updateItems();
      }
      
      override protected function buyHandler(param1:TradeDecorationItemVO, param2:int) : void
      {
         if(param2 == ResourceType.FISHBUCKS.id)
         {
            if(app.user.fishbucks >= param1.priceFishbucks)
            {
               this._managerInterior.buyItem(param1.id,param2,Preloader.waitForResponse(this.onCompleteTrade));
            }
            else
            {
               GameSwf.instance.showBuyFishbucksDialog();
            }
         }
         else if(param2 == ResourceType.FISHCOINS.id)
         {
            if(app.user.fishcoins >= param1.priceFishcoins)
            {
               this._managerInterior.buyItem(param1.id,param2,Preloader.waitForResponse(this.onCompleteTrade));
            }
            else
            {
               GameSwf.instance.showBuyFishcoinsDialog();
            }
         }
      }
      
      private function onCompleteTrade(param1:ServerResp) : void
      {
         var _loc2_:Boolean = param1 is ErrorResp;
         this.updateItems();
         updateAsset();
      }
      
      override public function activate() : void
      {
         super.activate();
         this._managerInterior = GameSwf.instance.managerInterior;
         app.user.onFishcoinsChange(this.updateUserCurrency);
         app.user.onFishbucksChange(this.updateUserCurrency);
         this.updateUserCurrency();
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
      }
      
      private function updateItems() : void
      {
         var _loc1_:Object = null;
         var _loc2_:TradeDecorationItemVO = null;
         var _loc3_:Array = this._managerInterior.currentLocationItems;
         var _loc4_:Vector.<TradeDecorationItemVO> = new Vector.<TradeDecorationItemVO>();
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc1_ == null || _loc1_.id == 130))
            {
               _loc2_ = new TradeDecorationItemVO();
               _loc2_.id = _loc1_.id;
               _loc2_.priceFishbucks = _loc1_.price_fishbucks;
               _loc2_.priceFishcoins = _loc1_.price_fishcoins;
               _loc2_.title = I18n.get("decoration_" + _loc1_.id);
               _loc2_.type = _loc1_.type;
               _loc2_.imageURL = FishaoBitmapLoader.convertImageNameURL("private_house/graphics_128x128_" + _loc1_.id);
               _loc4_.push(_loc2_);
            }
         }
         _loc4_.sort(TradeDecorationItemVO.sortItemsFunc);
         items = _loc4_;
      }
      
      private function updateUserCurrency(param1:Event = null) : void
      {
         fishbucksIndicator.setFishBucks = app.user.fishbucks;
         fishcoinsIndicator.setFishCoins = app.user.fishcoins;
      }
   }
}

