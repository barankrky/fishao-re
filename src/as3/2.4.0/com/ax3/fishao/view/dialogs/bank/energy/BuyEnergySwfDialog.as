package com.ax3.fishao.view.dialogs.bank.energy
{
   import com.ax3.display.wrappers.impl.MiddleTextFieldWrapper;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.setTimeout;
   
   public class BuyEnergySwfDialog extends BuyEnergySwfDialogAsset
   {
      
      private var _data:Object;
      
      private var _priceList:Array;
      
      private var _discountFieldById:Dictionary = new Dictionary(true);
      
      public function BuyEnergySwfDialog()
      {
         super();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         var i:int = 0;
         var buyEnergyText:String = null;
         var discountField:MiddleTextFieldWrapper = null;
         super.onAssetCreationComplete();
         closeButton.handler = function(param1:MouseEvent):void
         {
            close();
         };
         tabChildren = false;
         title.text = I18n.getUpper("buy_energy_title");
         fishbucksIndicator.setFishBucks = app.user.fishbucks;
         fishcoinsIndicator.setFishCoins = app.user.fishcoins;
         i = 1;
         while(i <= 5)
         {
            buyEnergyText = I18n.get("buy_energy_buy_label");
            TextField(MovieClip(this["line" + i]).getChildByName("buyLabel")).text = buyEnergyText;
            this["buyButton" + i] = new FishaoButtonWrapper();
            FishaoButtonWrapper(this["buyButton" + i]).process(MovieClip(MovieClip(this["line" + i]).getChildByName("buyButton")));
            FishaoButtonWrapper(this["buyButton" + i]).handler = this.onBuyButtonClicked;
            discountField = new MiddleTextFieldWrapper();
            discountField.process(TextField(MovieClip(this["line" + i]).getChildByName("discount")));
            this._discountFieldById[i] = discountField;
            i++;
         }
         buyButton1.visible = true;
      }
      
      private function onBuyButtonClicked(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         if(this._data.hasOwnProperty(FishaoButtonWrapper(DisplayObject(param1.target).parent).label))
         {
            _loc6_ = int(this._data[FishaoButtonWrapper(DisplayObject(param1.target).parent).label]);
         }
         for each(_loc2_ in this._priceList)
         {
            _loc3_ = _loc2_.price;
            _loc4_ = _loc3_.split(":");
            _loc5_ = _loc4_[1];
            if(_loc2_.energyCount == _loc6_)
            {
               if(_loc5_ == "fb" && app.user.fishbucks < _loc4_[0])
               {
                  GameSwf.instance.showBuyFishbucksDialog();
                  close();
                  return;
               }
               if(_loc5_ == "fc" && app.user.fishcoins < _loc4_[0])
               {
                  GameSwf.instance.showBuyFishcoinsDialog();
                  close();
                  return;
               }
            }
         }
         FishaoFscModelManager.buyEnergyExtension.buyEnergy(_loc6_);
         close();
      }
      
      public function setData(param1:Array) : void
      {
         var _loc2_:String = null;
         var _loc3_:Array = null;
         this._priceList = param1;
         if(line1 == null)
         {
            setTimeout(this.setData,300,param1);
            return;
         }
         this._data = {};
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            TextField(MovieClip(this["line" + (_loc4_ + 1)]).getChildByName("energyCount")).text = I18n.getUpper("energy_count").replace("#COUNT#",param1[_loc4_].energyCount);
            (this._discountFieldById[_loc4_ + 1] as MiddleTextFieldWrapper).text = param1[_loc4_].free > 0 ? I18n.getUpper("free_percent").replace("#COUNT#",param1[_loc4_].free) : "";
            _loc2_ = param1[_loc4_].price;
            _loc3_ = _loc2_.split(":");
            if(_loc3_[1] == "fb")
            {
               FishaoButtonWrapper(this["buyButton" + (_loc4_ + 1)]).showFishBucksIcon();
            }
            else
            {
               FishaoButtonWrapper(this["buyButton" + (_loc4_ + 1)]).showFishCoinsIcon();
            }
            FishaoButtonWrapper(this["buyButton" + (_loc4_ + 1)]).label = _loc3_[0];
            this._data[_loc3_[0]] = param1[_loc4_].energyCount;
            _loc4_++;
         }
         fishbucksIndicator.setFishBucks = app.user.fishbucks;
         fishcoinsIndicator.setFishCoins = app.user.fishcoins;
      }
   }
}

