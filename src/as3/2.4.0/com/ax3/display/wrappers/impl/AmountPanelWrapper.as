package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.fishao.model.ITradeItem;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   
   public class AmountPanelWrapper implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      public var closeButton:FishaoButtonWrapper;
      
      public var okButton:FrameButtonWrapper;
      
      public var titleField:TextField;
      
      public var amountField:TextField;
      
      public var item:ITradeItem;
      
      private var _asset:MovieClip;
      
      public function AmountPanelWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = MovieClip(param1);
      }
      
      public function onAssetProcessComplete() : void
      {
         this.okButton.label = I18n.get("buttonOk");
         this.titleField.text = I18n.get("tradeAmountPanel_title");
         this.amountField.addEventListener(Event.CHANGE,this.onAmountTextChange);
         this.amountField.addEventListener(TextEvent.TEXT_INPUT,this.onTextInput);
         this.closeButton.handler = this.onCloseButtonClick;
      }
      
      private function onTextInput(param1:TextEvent) : void
      {
         this.validateAmount();
      }
      
      private function onAmountTextChange(param1:Event) : void
      {
         this.validateAmount();
      }
      
      private function validateAmount() : int
      {
         var _loc1_:int = 0;
         if(this.amountField.text.length > 0)
         {
            _loc1_ = parseInt(this.amountField.text);
            _loc1_ = limit(_loc1_,1,this.item.getAmount);
            this.amountField.text = String(_loc1_);
         }
         return _loc1_;
      }
      
      private function onCloseButtonClick(param1:MouseEvent) : void
      {
         this.hide();
      }
      
      public function hide() : void
      {
         this.item = null;
         this._asset.visible = false;
      }
      
      public function show(param1:ITradeItem) : void
      {
         this.item = param1;
         this.amountField.text = String(param1.getAmount);
         this._asset.visible = true;
      }
      
      public function getValue() : int
      {
         return this.validateAmount();
      }
   }
}

