package com.ax3.fishao.view.dialogs.caught
{
   import com.ax3.display.autoscalable.ScaledBitmapProgressive;
   import com.ax3.display.wrappers.IAssetWrappersProcessor;
   import com.ax3.display.wrappers.impl.SizebleByWidthTextFieldWrapper;
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.display.panels.InfluencingItemWidget;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.model.FishInfo;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.FishaoBaseDialog;
   import com.ax3.fishao.view.dialogs.FishdexSwfDialog;
   import com.ax3.fishao.view.wrappers.impl.CheckBoxState;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoCheckboxWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishdexRatingWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils.KeyDownValueMap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class DialogCaught extends FishaoBaseDialog
   {
      
      private var _asset:gDialogCaught = new gDialogCaught();
      
      private var fishImageSize:KeyDownValueMap = new KeyDownValueMap({
         25:125,
         50:225,
         100:325,
         200:425,
         300:525,
         500:580,
         "Infinity":630
      });
      
      protected var _fishId:int = 0;
      
      public var title:TextField;
      
      public var description:TextField;
      
      public var descriptionAutofit:TextFieldAutofitWrapper;
      
      public var expValue:TextField;
      
      public var fishSize:TextField;
      
      public var newRecord:SizebleByWidthTextFieldWrapper;
      
      public var shareTitle:TextField;
      
      public var rulerFishSize:TextField;
      
      public var closeButton:MovieClip;
      
      public var shareButton:MovieClip;
      
      public var buttonShare:FishaoButtonWrapper;
      
      public var labelShareProgress:TextField;
      
      public var checkShareProgress:FishaoCheckboxWrapper;
      
      public var labelShareProgressWrapper:TextFieldAutofitWrapper;
      
      public var expBoosterIcon:MovieClip;
      
      public var viewInFishdexButton:FrameButtonWrapper;
      
      public var stars:FishdexRatingWrapper;
      
      public var fishName:String;
      
      public var expBoosterTooltip:ToolTipTargetMovieClip;
      
      protected var _needDispatchClose:Boolean = true;
      
      protected var _fishInfo:FishInfo;
      
      public function DialogCaught()
      {
         super();
         this.init(app.dialogManager.assetWrappersProcessor);
         this.closeButton.buttonMode = true;
         this.closeButton.useHandCursor = true;
         this.closeButton.addEventListener(MouseEvent.CLICK,this.onCloseButtonClick);
         this.shareButton.addEventListener(MouseEvent.CLICK,this.onShareButtonClick);
         this.shareButton.buttonMode = true;
         this.viewInFishdexButton.handler = this.onViewFishdex;
         this.labelShareProgressWrapper = new TextFieldAutofitWrapper(this.labelShareProgress);
         this.shareTitle.visible = false;
         this.shareButton.visible = false;
         this.labelShareProgress.visible = false;
         this.checkShareProgress.visible = false;
         this.buttonShare.visible = false;
         this.checkShareProgress.state = CheckBoxState.UNSELECTED;
         this.viewInFishdexButton.x = 282;
         this.viewInFishdexButton.y = 418;
         tabChildren = false;
      }
      
      private function onShareButtonClick(param1:MouseEvent) : void
      {
      }
      
      protected function onViewFishdex(param1:MouseEvent) : void
      {
         this.viewInFishdexButton.disable();
         FishaoSoundManager.play(FishaoSoundManager.SFX_051_UI_Open_menu);
         this._needDispatchClose = false;
         this.close();
         if(GameSwf.inspectGuestLockedAction())
         {
            return;
         }
         var _loc2_:FishdexSwfDialog = app.dialogFactory.getFishdexSwfDialog();
         FishdexSwfDialog.showFishId = this._fishId;
         _loc2_.show();
      }
      
      override protected function onCloseButtonClick(param1:Event) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_052_UI_Close_menu);
         this.close();
      }
      
      override public function get canClosedByEsc() : Boolean
      {
         return true;
      }
      
      private function displayBoosterIcon(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:InfluencingItemWidget = null;
         var _loc5_:ToolTipTargetMovieClip = null;
         if(app.user.isInfluencedOfExpBooster)
         {
            _loc3_ = GameSwf.currentLocationDialog.gui.influencingItemWidgets;
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.itemId == ResourceType.ID_EXP_BOOSTER_X2)
               {
                  this.expBoosterIcon.gotoAndStop("exp_booster_x2");
                  _loc2_ = 2;
                  break;
               }
               if(_loc4_.itemId == ResourceType.ID_EXP_BOOSTER_X4)
               {
                  this.expBoosterIcon.gotoAndStop("exp_booster_x4");
                  _loc2_ = 4;
                  break;
               }
            }
            _loc5_ = new ToolTipTargetMovieClip();
            _loc5_.x = 0;
            _loc5_.y = 0;
            _loc5_.graphics.beginFill(9461904,0);
            _loc5_.graphics.drawRect(-3,-3,this.expBoosterIcon.width + 6,this.expBoosterIcon.height + 6);
            _loc5_.graphics.endFill();
            _loc5_.tooltipConfig = {"text":int(param1 / _loc2_).toString() + "x" + _loc2_.toString() + "=" + param1.toString()};
            this.expBoosterIcon.addChild(_loc5_);
            this.expBoosterTooltip = _loc5_;
         }
         this.expBoosterIcon.visible = app.user.isInfluencedOfExpBooster;
      }
      
      public function init(param1:IAssetWrappersProcessor) : void
      {
         addChild(this._asset);
         param1.process(this._asset,this);
         this.render();
      }
      
      private function render() : void
      {
         this.newRecord.text = I18n.getUpper("newRecord");
         this.fishSize.text = I18n.get("cm");
         this.shareTitle.text = I18n.get("share");
         this.viewInFishdexButton.label = I18n.getUpper("viewInFishdex");
         this.descriptionAutofit = new TextFieldAutofitWrapper(this.description);
      }
      
      override public function close() : void
      {
         this.closeButton.removeEventListener(MouseEvent.CLICK,this.onCloseButtonClick);
         this.shareButton.removeEventListener(MouseEvent.CLICK,this.onShareButtonClick);
         if(this._needDispatchClose)
         {
            dispatchEvent(new Event(LocationDialog.CLOSED_CAUGHT_DIALOG));
         }
         super.close();
      }
      
      public function showWithData(param1:FishInfo, param2:int, param3:Boolean, param4:Boolean) : void
      {
         var _loc5_:Array = null;
         var _loc6_:ColorMatrix = null;
         var _loc7_:ColorMatrixFilter = null;
         this._fishInfo = param1;
         var _loc8_:int = 630;
         var _loc9_:int = 230;
         this._fishId = param1.id;
         this.newRecord.visible = param3;
         this.fishName = I18n.get("fish_" + this._fishId);
         this.rulerFishSize.text = I18n.formatDistanceWithoutUnit(param1.length);
         this.fishSize.text = I18n.formatDistance(param1.length);
         this.descriptionAutofit.text = I18n.get("caughtDescription");
         this.expValue.text = I18n.get("caughtExpValue").replace("#EXP#",param2.toString());
         var _loc10_:ScaledBitmapProgressive = new ScaledBitmapProgressive();
         var _loc11_:Number = this.fishImageSize.getByKey(param1.length);
         _loc10_.width = _loc11_;
         _loc10_.height = _loc9_;
         app.resourceManager.replaceBitmapDataFromURL(_loc10_,FishaoBitmapLoader.convertImageNameURL("fishes/fish_" + int(_loc11_) + "px_" + this._fishId));
         _loc10_.x = (_loc8_ - _loc10_.width) * 0.5 + 30;
         _loc10_.y = (_loc9_ - _loc10_.height) * 0.5 + 70;
         _loc10_.smoothing = true;
         this.displayBoosterIcon(param2);
         if(param1.isShiny)
         {
            this.title.text = I18n.getUpper("title_caught_shiny").replace("#FISH_NAME#",this.fishName);
            this._asset.viewRainbow.visible = true;
            this._asset.viewRainbow.gotoAndPlay(1);
            _loc5_ = [];
            _loc6_ = new ColorMatrix();
            _loc6_.adjustHue(param1.hueShiftOfShiny);
            _loc7_ = new ColorMatrixFilter(_loc6_.matrix);
            _loc5_.push(_loc7_);
            _loc10_.filters = _loc5_;
         }
         else
         {
            this.title.text = I18n.getUpper("titleCaught").replace("#FISH_NAME#",this.fishName);
            this._asset.viewRainbow.visible = false;
            this._asset.viewRainbow.gotoAndStop(1);
            _loc10_.filters = [];
         }
         addChild(_loc10_);
         this.stars.setRating(param1.rarity);
         this.updateBackground();
         show();
      }
      
      private function updateBackground() : void
      {
         var _loc1_:Array = [];
         var _loc2_:int = GameSwf.currentLocationDialog.locationModel.locationConfig.waterColorHueShift;
         var _loc3_:ColorMatrix = new ColorMatrix();
         _loc3_.adjustHue(_loc2_);
         var _loc4_:ColorMatrixFilter = new ColorMatrixFilter(_loc3_.matrix);
         _loc1_.push(_loc4_);
         this._asset.viewWaterAnimation.filters = _loc1_;
      }
   }
}

