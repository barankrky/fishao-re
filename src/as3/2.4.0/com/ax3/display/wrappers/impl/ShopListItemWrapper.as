package com.ax3.display.wrappers.impl
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.display.dialogs.SequentTextFieldMediator;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.model.vo.ShopItemVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class ShopListItemWrapper extends Sprite implements IAssetWrapper, IListItemWrapper
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _image:ToolTipTargetMovieClip;
      
      private var _title:TextField;
      
      private var _sizeLabel:TextField;
      
      private var _sizeValue:TextField;
      
      private var _powerLabel:TextField;
      
      private var _powerValue:TextField;
      
      private var _qualityLabel:TextField;
      
      private var _qualityValue:TextField;
      
      private var _colorLabel:TextField;
      
      private var _colorStartButton:MovieClip;
      
      private var _buyByFishcoinsButtonBig:FrameButtonWrapper;
      
      private var _buyByFishbucksButtonBig:FrameButtonWrapper;
      
      private var _buyByFishcoinsButtonMedium:FrameButtonWrapper;
      
      private var _buyByFishbucksButtonMedium:FrameButtonWrapper;
      
      private var _param1:SequentTextFieldMediator;
      
      private var _param2:SequentTextFieldMediator;
      
      private var _param3:SequentTextFieldMediator;
      
      private var _colorButtonMediator:ShopColorButtonMediator;
      
      private var _blockLabel:TextField;
      
      private var _blockBg:MovieClip;
      
      private var _blockIcon:MovieClip;
      
      private var _imageRect:Rectangle;
      
      public var buyHandler:Function;
      
      private var _data:ShopItemVO;
      
      public function ShopListItemWrapper()
      {
         super();
      }
      
      public function get buyByFishcoinsButtonBig() : FrameButtonWrapper
      {
         return this._buyByFishcoinsButtonBig;
      }
      
      public function get buyByFishbucksButtonBig() : FrameButtonWrapper
      {
         return this._buyByFishbucksButtonBig;
      }
      
      public function get buyByFishcoinsButtonMedium() : FrameButtonWrapper
      {
         return this._buyByFishcoinsButtonMedium;
      }
      
      public function get buyByFishbucksButtonMedium() : FrameButtonWrapper
      {
         return this._buyByFishbucksButtonMedium;
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:ScaledBitmap = null;
         this._data = ShopItemVO(param1);
         this._buyByFishcoinsButtonBig.label = String(this._data.priceFishcoins);
         this._buyByFishbucksButtonBig.label = String(this._data.priceFishbucks);
         this._buyByFishcoinsButtonMedium.label = String(this._data.priceFishcoins);
         this._buyByFishbucksButtonMedium.label = String(this._data.priceFishbucks);
         this.updateBuyButtonsView(this._data);
         var _loc3_:String = this._data.name;
         if(this._data.amount > -1)
         {
            _loc3_ += " " + I18n.template("shopLimitedItemLeft",{"amount":this._data.amount});
            if(this._data.amount == 0)
            {
               this._buyByFishcoinsButtonBig.disable();
               this._buyByFishbucksButtonBig.disable();
               this._buyByFishcoinsButtonMedium.disable();
               this._buyByFishbucksButtonMedium.disable();
            }
            else
            {
               this._buyByFishcoinsButtonBig.enable();
               this._buyByFishbucksButtonBig.enable();
               this._buyByFishcoinsButtonMedium.enable();
               this._buyByFishbucksButtonMedium.enable();
            }
         }
         this._title.text = _loc3_;
         switch(this._data.type)
         {
            case ResourceType.BAIT:
               this._param1.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_BAIT_CATEGORY));
               this._param2.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_BAIT_AMOUNT));
               this._param3.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_BAIT_EXTRA));
               break;
            case ResourceType.ROD:
               this._param1.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_ROD_SIZE));
               this._param2.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_ROD_POWER));
               this._param3.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_ROD_QUALITY));
               break;
            case ResourceType.FISH_RADAR:
               this._param1.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_FISH_RADAR));
               this._param2.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_DURATION));
               break;
            case ResourceType.LUCK_POTION:
               this._param1.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_LUCK_POTION));
               this._param2.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_DURATION));
               break;
            case ResourceType.MAGIC_WATCH:
               this._param1.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_MAGIC_WATCH));
               this._param2.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_DURATION));
               break;
            case ResourceType.EXP_BOOSTER:
               this._param1.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_EXP_BOOSTER));
               this._param2.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_DURATION));
               break;
            case ResourceType.SHINY_POTION:
               this._param1.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_SHINY_POTION));
               this._param2.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_DURATION));
               break;
            case ResourceType.POWER_BOOSTER:
               this._param1.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_POWER_BOOSTER));
               this._param2.setValue(0,I18n.get(EStringType.EST_DIALOG_SHOP_ITEM_DESCRIPTION_DURATION));
         }
         if(this._data.param1 != null)
         {
            this._sizeLabel.visible = true;
            this._sizeValue.visible = true;
            this._param1.setValue(1,this._data.param1);
         }
         else
         {
            this._sizeLabel.visible = false;
            this._sizeValue.visible = false;
         }
         if(this._data.param2 != null)
         {
            this._powerLabel.visible = true;
            this._powerValue.visible = true;
            this._param2.setValue(1,this._data.param2);
         }
         else
         {
            this._powerLabel.visible = false;
            this._powerValue.visible = false;
         }
         if(this._data.param3 != null)
         {
            this._qualityLabel.visible = true;
            this._qualityValue.visible = true;
            this._param3.setValue(1,this._data.param3);
         }
         else
         {
            this._qualityLabel.visible = false;
            this._qualityValue.visible = false;
         }
         if(this._data.colors == null || this._data.colors.length == 0)
         {
            this._colorLabel.visible = false;
         }
         else
         {
            this.addColors(this._data.colors);
         }
         if(this._data.blockReason != null)
         {
            this._buyByFishbucksButtonBig.disable();
            this._buyByFishcoinsButtonBig.disable();
            this._buyByFishbucksButtonMedium.disable();
            this._buyByFishcoinsButtonMedium.disable();
            this._blockLabel.text = this._data.blockReason;
            addChild(this._blockBg);
            addChild(this._blockIcon);
            addChild(this._blockLabel);
         }
         else
         {
            this._blockLabel.visible = false;
            this._blockBg.visible = false;
            this._blockIcon.visible = false;
         }
         removeAllChildren(this._image);
         if(this._data.imageUrl != null)
         {
            _loc2_ = new ScaledBitmap(null);
            _loc2_.width = this._imageRect.width;
            _loc2_.height = this._imageRect.height;
            app.resourceManager.replaceBitmapDataFromURL(_loc2_,this._data.imageUrl);
            this._image.addChild(_loc2_);
            if(this._data.description != null)
            {
               this._image.tooltipConfig = {"text":this._data.description};
            }
         }
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._image = new ToolTipTargetMovieClip();
         this._image.x = this._asset.getChildByName("image").x;
         this._image.y = this._asset.getChildByName("image").y;
         this._imageRect = new Rectangle();
         this._imageRect.width = int(this._asset.getChildByName("image").width);
         this._imageRect.height = int(this._asset.getChildByName("image").height);
         ShiftWrapper.shiftDisplayObject(this._asset.getChildByName("image"),this._image);
         this._title = TextField(this._asset.getChildByName("title"));
         this._sizeLabel = TextField(this._asset.getChildByName("sizeLabel"));
         this._sizeValue = TextField(this._asset.getChildByName("sizeValue"));
         this._param1 = new SequentTextFieldMediator(this._sizeLabel,this._sizeValue);
         this._param1.setValue(0,I18n.get("shopDialog_sizeProperty"));
         this._powerLabel = TextField(this._asset.getChildByName("powerLabel"));
         this._powerValue = TextField(this._asset.getChildByName("powerValue"));
         this._param2 = new SequentTextFieldMediator(this._powerLabel,this._powerValue);
         this._param2.setValue(0,I18n.get("shopDialog_powerLabel"));
         this._qualityLabel = TextField(this._asset.getChildByName("qualityLabel"));
         this._qualityValue = TextField(this._asset.getChildByName("qualityValue"));
         this._param3 = new SequentTextFieldMediator(this._qualityLabel,this._qualityValue);
         this._param3.setValue(0,I18n.get("shopDialog_qualityLabel"));
         this._colorLabel = TextField(this._asset.getChildByName("colorLabel"));
         this._colorLabel.text = I18n.get("shopDialog_colorLabel");
         this._colorStartButton = MovieClip(this._asset.getChildByName("colorStartButton"));
         this._colorStartButton.visible = false;
         this._buyByFishcoinsButtonBig = new FrameButtonWrapper();
         this._buyByFishcoinsButtonBig.process(this._asset.getChildByName("buyByFishcoinsButtonBig"));
         this._buyByFishcoinsButtonBig.handler = this.onBuyButtonFishcoinsClick;
         this._buyByFishbucksButtonBig = new FrameButtonWrapper();
         this._buyByFishbucksButtonBig.process(this._asset.getChildByName("buyByFishbucksButtonBig"));
         this._buyByFishbucksButtonBig.handler = this.onBuyButtonFishbucksClick;
         this._buyByFishcoinsButtonMedium = new FrameButtonWrapper();
         this._buyByFishcoinsButtonMedium.process(this._asset.getChildByName("buyByFishcoinsButtonMedium"));
         this._buyByFishcoinsButtonMedium.handler = this.onBuyButtonFishcoinsClick;
         this._buyByFishbucksButtonMedium = new FrameButtonWrapper();
         this._buyByFishbucksButtonMedium.process(this._asset.getChildByName("buyByFishbucksButtonMedium"));
         this._buyByFishbucksButtonMedium.handler = this.onBuyButtonFishbucksClick;
         this._blockLabel = TextField(this._asset.getChildByName("blockLabel"));
         this._blockBg = MovieClip(this._asset.getChildByName("blockBg"));
         this._blockIcon = MovieClip(this._asset.getChildByName("blockIcon"));
         addChild(this._asset);
      }
      
      private function onBuyButtonFishcoinsClick(param1:MouseEvent) : void
      {
         if(this.buyHandler != null)
         {
            if(this._colorButtonMediator != null)
            {
               this._data.selectedColor = this._colorButtonMediator.selectedColor;
            }
            this.buyHandler(this._data,ResourceType.FISHCOINS.id);
         }
      }
      
      private function onBuyButtonFishbucksClick(param1:MouseEvent) : void
      {
         if(this.buyHandler != null)
         {
            if(this._colorButtonMediator != null)
            {
               this._data.selectedColor = this._colorButtonMediator.selectedColor;
            }
            this.buyHandler(this._data,ResourceType.FISHBUCKS.id);
         }
      }
      
      private function updateBuyButtonsView(param1:ShopItemVO) : void
      {
         if(param1.priceFishbucks >= 0 && param1.priceFishcoins >= 0)
         {
            if(param1.hasOwnProperty("colors") && param1.colors != null && param1.colors.length > 0)
            {
               this._buyByFishbucksButtonBig.visible = false;
               this._buyByFishcoinsButtonBig.visible = false;
               this._buyByFishcoinsButtonMedium.x = 559;
               this._buyByFishcoinsButtonMedium.y = 80;
               this._buyByFishbucksButtonMedium.x = 453;
               this._buyByFishbucksButtonMedium.y = 80;
            }
            else
            {
               this._buyByFishbucksButtonMedium.visible = false;
               this._buyByFishcoinsButtonMedium.visible = false;
               this._buyByFishcoinsButtonBig.x = 539;
               this._buyByFishcoinsButtonBig.y = 14;
               this._buyByFishbucksButtonBig.x = 539;
               this._buyByFishbucksButtonBig.y = 76;
            }
         }
         else if(param1.priceFishbucks < 0 && param1.priceFishcoins >= 0)
         {
            this._buyByFishbucksButtonBig.visible = false;
            this._buyByFishbucksButtonMedium.visible = false;
            this._buyByFishcoinsButtonMedium.visible = false;
            if(param1.hasOwnProperty("colors") && param1.colors != null && param1.colors.length > 0)
            {
               this._buyByFishcoinsButtonBig.x = 539;
               this._buyByFishcoinsButtonBig.y = 76;
            }
            else
            {
               this._buyByFishcoinsButtonBig.x = 539;
               this._buyByFishcoinsButtonBig.y = 45;
            }
         }
      }
      
      private function addColors(param1:Vector.<ShopItemColor>) : void
      {
         if(this._colorButtonMediator == null)
         {
            this._colorButtonMediator = new ShopColorButtonMediator(this._colorStartButton,this,this._data.id);
         }
         this._colorButtonMediator.showColors(param1);
         this._colorButtonMediator.affectColorTo(this._image);
      }
      
      public function updateData() : void
      {
         this.data = this._data;
      }
   }
}

