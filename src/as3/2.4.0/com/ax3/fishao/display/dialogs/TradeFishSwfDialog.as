package com.ax3.fishao.display.dialogs
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.model.info.UserResource;
   import com.ax3.fishao.model.vo.TradeFishItemVO;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.events.MouseEvent;
   import protocol.sr.ErrorResp;
   
   public class TradeFishSwfDialog extends TradeFishSwfDialogAsset
   {
      
      private var _currentItem:TradeFishItemVO;
      
      public function TradeFishSwfDialog()
      {
         super();
      }
      
      override protected function buyHandler(param1:TradeFishItemVO) : void
      {
         this._currentItem = param1;
         amountPanel.okButton.handler = this.onAmountConfirmClick;
         amountPanel.show(param1);
      }
      
      private function onAmountConfirmClick(param1:MouseEvent) : void
      {
         var _loc2_:TradeFishItemVO = null;
         var _loc3_:int = amountPanel.getValue();
         if(_loc3_ > 0)
         {
            _loc2_ = TradeFishItemVO(amountPanel.item);
            FishaoFscModelManager.sellFishFscExtension.sellFish(_loc2_.id,_loc2_.type,_loc3_,Preloader.waitForResponse(this.onTradeComplete));
         }
         _soldItemIndex = list.items.indexOf(this._currentItem);
         amountPanel.hide();
      }
      
      private function onTradeComplete(param1:ServerResp) : void
      {
         var _loc2_:Boolean = param1 is ErrorResp;
         this.updateItems();
         updateAsset();
         var _loc3_:String = "";
         var _loc4_:MessageDialog = app.dialogFactory.getMessageDialog();
         _loc4_.buttons = MessageDialog.OK_BUTTON;
         _loc4_.closeOnOk = true;
         if(this._currentItem != null || !_loc2_)
         {
            FishaoSoundManager.play(FishaoSoundManager.SFX_054_UI_Buy_click);
            _loc3_ = I18n.template("tradeFishSwfDialog_fishSold",{"name":this._currentItem.title});
         }
         else
         {
            _loc3_ = I18n.get("tradeFishSwfDialog_soldError");
         }
         _loc4_.setText(_loc3_,false);
         _loc4_.show();
         _loc4_.centerToRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
      }
      
      private function updateItems() : void
      {
         var _loc1_:UserResource = null;
         var _loc2_:TradeFishItemVO = null;
         var _loc3_:Vector.<UserResource> = app.user.inventory.fish;
         var _loc4_:Vector.<TradeFishItemVO> = new Vector.<TradeFishItemVO>();
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc1_ == null || _loc1_.quantity == 0 || !(_loc1_.type == ResourceType.FISH.id || _loc1_.type == ResourceType.FISH_SHINY.id)))
            {
               _loc2_ = new TradeFishItemVO();
               _loc2_.id = _loc1_.id;
               _loc2_.type = _loc1_.type;
               _loc2_.amount = _loc1_.quantity;
               _loc2_.title = I18n.get(ResourceType.FISH.name + "_" + _loc1_.id);
               if(_loc1_.type == ResourceType.FISH_SHINY.id)
               {
                  _loc2_.title += " (" + I18n.getUpper("npc_name_shiny") + ")";
               }
               _loc2_.fishImageUrl = FishaoBitmapLoader.convertImageNameURL("fishes/fish255x85_" + _loc1_.id + "_item.png");
               _loc2_.worth = _loc1_.worth;
               _loc4_.push(_loc2_);
            }
         }
         items = _loc4_;
         if(items.length == 0)
         {
            this.close();
         }
      }
      
      override public function show() : void
      {
         super.show();
         this.updateItems();
      }
      
      override public function close() : void
      {
         GameSwf.currentLocationDialog.showMissionCompletedDialog();
         GameSwf.instance.tradeDialog = null;
         super.close();
      }
   }
}

