package com.ax3.display.wrappers.impl
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.model.vo.TradeFishItemVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class TradeFishItemWrapper extends Sprite implements IAssetWrapper, IListItemWrapper
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _image:MovieClip;
      
      private var _imageRect:Rectangle;
      
      private var _blockBg:MovieClip;
      
      private var _buyLabel:TextField;
      
      private var _sellLabel:TextField;
      
      private var _buyButton:FrameButtonWrapper;
      
      public var buyHandler:Function;
      
      private var _data:TradeFishItemVO;
      
      public function TradeFishItemWrapper()
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
         this._buyLabel = TextField(this._asset.getChildByName("buyLabel"));
         this._sellLabel = TextField(this._asset.getChildByName("sellLabel"));
         this._buyButton = new FrameButtonWrapper();
         this._buyButton.process(this._asset.getChildByName("buyButton"));
         this._buyButton.handler = this.onBuyButtonClick;
         this._blockBg = MovieClip(this._asset.getChildByName("bg"));
         addChild(this._asset);
      }
      
      private function onBuyButtonClick(param1:MouseEvent) : void
      {
         if(this.buyHandler != null)
         {
            this.buyHandler(this._data);
         }
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:ScaledBitmap = null;
         var _loc3_:Array = null;
         var _loc4_:FishInfoVO = null;
         var _loc5_:ColorMatrix = null;
         var _loc6_:ColorMatrixFilter = null;
         this._data = TradeFishItemVO(param1);
         this._sellLabel.text = String(I18n.get("trade_fish_item_sell")) + ":";
         this._buyLabel.text = this._data.title + " (" + this._data.amount + ")";
         this._buyButton.label = String(this._data.worth);
         if(this._data.amount > -1)
         {
            if(this._data.amount == 0)
            {
               this._buyButton.disable();
            }
            else
            {
               this._buyButton.enable();
            }
         }
         removeAllChildren(this._image);
         if(this._data.fishImageUrl != null)
         {
            _loc2_ = new ScaledBitmap(null);
            _loc2_.width = this._imageRect.width;
            _loc2_.height = this._imageRect.height;
            app.resourceManager.replaceBitmapDataFromURL(_loc2_,this._data.fishImageUrl);
            if(this._data.type == ResourceType.FISH_SHINY.id)
            {
               _loc3_ = [];
               _loc4_ = app.fishDict.get(this._data.id) as FishInfoVO;
               _loc5_ = new ColorMatrix();
               _loc5_.adjustHue(_loc4_.hueShiftOfShiny);
               _loc6_ = new ColorMatrixFilter(_loc5_.matrix);
               _loc3_.push(_loc6_);
               this._image.filters = _loc3_;
            }
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

