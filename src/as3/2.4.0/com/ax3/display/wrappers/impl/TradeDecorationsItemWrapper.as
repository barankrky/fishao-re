package com.ax3.display.wrappers.impl
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.display.dialogs.SequentTextFieldMediator;
   import com.ax3.fishao.model.vo.TradeDecorationItemVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class TradeDecorationsItemWrapper extends Sprite implements IAssetWrapper, IListItemWrapper
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _image:MovieClip;
      
      private var _imageRect:Rectangle;
      
      private var _buyTitle:TextField;
      
      private var _categoryLabel:TextField;
      
      private var _categoryValue:TextField;
      
      private var _buyByFishcoinsButtonBig:FrameButtonWrapper;
      
      private var _buyByFishbucksButtonBig:FrameButtonWrapper;
      
      public var buyHandler:Function;
      
      private var _param1:SequentTextFieldMediator;
      
      private var _data:TradeDecorationItemVO;
      
      public function TradeDecorationsItemWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._image = new MovieClip();
         this._image.x = this._asset.getChildByName("image").x;
         this._image.y = this._asset.getChildByName("image").y;
         this._imageRect = new Rectangle();
         this._imageRect.width = int(this._asset.getChildByName("image").width);
         this._imageRect.height = int(this._asset.getChildByName("image").height);
         ShiftWrapper.shiftDisplayObject(this._asset.getChildByName("image"),this._image);
         this._buyTitle = TextField(this._asset.getChildByName("title"));
         this._categoryLabel = TextField(this._asset.getChildByName("categoryLabel"));
         this._categoryValue = TextField(this._asset.getChildByName("categoryValue"));
         this._param1 = new SequentTextFieldMediator(this._categoryLabel,this._categoryValue);
         this._param1.setValue(0,I18n.get("tradeDecoration_decorationCategory"));
         this._buyByFishcoinsButtonBig = new FrameButtonWrapper();
         this._buyByFishcoinsButtonBig.process(this._asset.getChildByName("buyByFishcoinsButtonBig"));
         this._buyByFishcoinsButtonBig.handler = this.onBuyButtonFishcoinsClick;
         this._buyByFishbucksButtonBig = new FrameButtonWrapper();
         this._buyByFishbucksButtonBig.process(this._asset.getChildByName("buyByFishbucksButtonBig"));
         this._buyByFishbucksButtonBig.handler = this.onBuyButtonFishbucksClick;
         addChild(this._asset);
      }
      
      private function onBuyButtonClick(param1:MouseEvent) : void
      {
         if(this.buyHandler != null)
         {
            this.buyHandler(this._data);
         }
      }
      
      private function onBuyButtonFishcoinsClick(param1:MouseEvent) : void
      {
         if(this.buyHandler != null)
         {
            this.buyHandler(this._data,ResourceType.FISHCOINS.id);
         }
      }
      
      private function onBuyButtonFishbucksClick(param1:MouseEvent) : void
      {
         if(this.buyHandler != null)
         {
            this.buyHandler(this._data,ResourceType.FISHBUCKS.id);
         }
      }
      
      private function updateBuyButtonsView(param1:TradeDecorationItemVO) : void
      {
         if(param1.priceFishbucks >= 0 && param1.priceFishcoins >= 0)
         {
            this._buyByFishcoinsButtonBig.x = 539;
            this._buyByFishcoinsButtonBig.y = 14;
            this._buyByFishbucksButtonBig.x = 539;
            this._buyByFishbucksButtonBig.y = 76;
         }
         else if(param1.priceFishbucks >= 0 && param1.priceFishcoins < 0)
         {
            this._buyByFishcoinsButtonBig.visible = false;
            this._buyByFishbucksButtonBig.x = 539;
            this._buyByFishbucksButtonBig.y = 45;
         }
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:ScaledBitmap = null;
         this._data = TradeDecorationItemVO(param1);
         this._buyTitle.text = this._data.title;
         this._categoryValue.text = I18n.get("decorationCategory_" + this._data.type);
         this._buyByFishcoinsButtonBig.label = String(this._data.priceFishcoins);
         this._buyByFishbucksButtonBig.label = String(this._data.priceFishbucks);
         this.updateBuyButtonsView(this._data);
         removeAllChildren(this._image);
         if(this._data.imageURL != null)
         {
            _loc2_ = new ScaledBitmap(null);
            _loc2_.width = this._imageRect.width;
            _loc2_.height = this._imageRect.height;
            app.resourceManager.replaceBitmapDataFromURL(_loc2_,this._data.imageURL);
            this._image.addChild(_loc2_);
         }
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function updateData() : void
      {
         this.data = this._data;
      }
   }
}

