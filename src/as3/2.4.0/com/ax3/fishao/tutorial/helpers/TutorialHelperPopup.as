package com.ax3.fishao.tutorial.helpers
{
   import com.ax3.events.GameResizeEvent;
   import com.ax3.events.Listeners;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.ETextVerticalAlign;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialHelperPopup extends TutorialHelperBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _labelBig:TextFieldAutofitWrapper;
      
      private var _labelSmall:TextFieldAutofitWrapper;
      
      private var _buttonNext:FishaoButtonWrapper;
      
      private var _buttonOk:FishaoButtonWrapper;
      
      private var _align:String;
      
      private var _offsetY:Number;
      
      private var _background:DisplayObjectContainer;
      
      private var _navigation:DisplayObjectContainer;
      
      private var _viewButtonEnter:DisplayObjectContainer;
      
      private var _viewFish:DisplayObjectContainer;
      
      private var _sizeLabel:String;
      
      public function TutorialHelperPopup()
      {
         super();
         this.init();
      }
      
      private static function onButtonClicked(param1:Event) : void
      {
         GameSwf.instance.managerTutorial.tutorialInProgress.onStepComplete();
      }
      
      public function set sizeLabel(param1:String) : void
      {
         this._sizeLabel = param1;
         this.updateSize();
      }
      
      public function get viewButtonEnter() : DisplayObjectContainer
      {
         return this._viewButtonEnter;
      }
      
      public function get buttonNext() : FishaoButtonWrapper
      {
         return this._buttonNext;
      }
      
      public function get buttonOk() : FishaoButtonWrapper
      {
         return this._buttonOk;
      }
      
      public function get navigation() : DisplayObjectContainer
      {
         return this._navigation;
      }
      
      public function get source() : DisplayObjectContainer
      {
         return this._source;
      }
      
      public function get labelBig() : TextFieldAutofitWrapper
      {
         return this._labelBig;
      }
      
      public function get labelSmall() : TextFieldAutofitWrapper
      {
         return this._labelSmall;
      }
      
      public function set textBig(param1:String) : void
      {
         this._labelBig.text = param1;
         this._labelBig.source.visible = true;
      }
      
      public function set textSmall(param1:String) : void
      {
         this._labelSmall.text = param1;
         this._labelSmall.source.visible = true;
      }
      
      override protected function onGameResize(param1:Event) : void
      {
         this._source.x = (Config.SCREEN_WIDTH - this._source.width) / 2;
         var _loc2_:Number = this._source.height / 2;
         var _loc3_:Number = 0;
         switch(this._align)
         {
            case ETextVerticalAlign.ETVA_BOTTOM:
               _loc3_ = Config.SCREEN_HEIGHT - this._source.height + this._offsetY;
               break;
            case ETextVerticalAlign.ETVA_TOP:
               _loc3_ = 0 + this._offsetY;
               break;
            case ETextVerticalAlign.ETVA_CENTER:
               _loc3_ = Config.SCREEN_HEIGHT / 2 - _loc2_ + this._offsetY;
               break;
            default:
               Debug.assert(false);
         }
         this._source.y = _loc3_;
      }
      
      private function init() : void
      {
         this._source = new gViewTutorialDialog();
         var _loc1_:TextField = Debug.assertProperty(this._source,"labelBig",TextField);
         _loc1_.mouseEnabled = false;
         this._labelBig = new TextFieldAutofitWrapper(_loc1_);
         var _loc2_:TextField = Debug.assertProperty(this._source,"labelSmall",TextField);
         _loc2_.mouseEnabled = false;
         this._labelSmall = new TextFieldAutofitWrapper(_loc2_);
         var _loc3_:DisplayObjectContainer = Debug.assertProperty(this._source,"buttonNext");
         this._buttonNext = new FishaoButtonWrapper();
         this._buttonNext.process(_loc3_);
         this._buttonNext.handler = onButtonClicked;
         this._buttonNext.label = I18n.get("buttonNext");
         var _loc4_:DisplayObjectContainer = Debug.assertProperty(this._source,"buttonOk");
         this._buttonOk = new FishaoButtonWrapper();
         this._buttonOk.process(_loc4_);
         this._buttonOk.handler = onButtonClicked;
         this._buttonOk.label = I18n.get("tutorialDecorationsPopupOkButton");
         this._background = Debug.assertProperty(this._source,"background");
         this._navigation = Debug.assertProperty(this._source,"navigation");
         this._viewButtonEnter = Debug.assertProperty(this._source,"viewButtonEnter");
         this._viewFish = Debug.assertProperty(this._source,"viewFish");
         this.sizeLabel = ETutorialPopupSize.ETPS_MEDIUM;
         this.alignToCenter(0);
         Listeners.addEventListener(this,GameSwf.globalDispatcher,GameResizeEvent.RESIZE,this.onGameResize);
      }
      
      private function updateSize() : void
      {
         switch(this._sizeLabel)
         {
            case ETutorialPopupSize.ETPS_SMALL:
               this._source.scaleX = 0.6;
               this._source.scaleY = 0.6;
               this._labelBig.updateRect();
               this._labelSmall.updateRect();
               break;
            case ETutorialPopupSize.ETPS_MEDIUM:
               this._source.scaleX = 1;
               this._source.scaleY = 1;
               this._labelBig.updateRect();
               this._labelSmall.updateRect();
               break;
            default:
               Debug.assert(false,"Unsupported tutorial popup size in updateSize method: " + this._sizeLabel);
         }
      }
      
      public function resetView() : void
      {
         this._background.width = 590;
         this._background.height = 149;
         this._viewFish.width = 157;
         this._viewFish.height = 119;
         this._viewFish.x = 525;
         this._viewFish.y = 43;
         this._navigation.width = 332;
         this._navigation.height = 72;
         this._navigation.x = 123;
         this._navigation.y = 63;
         this._viewButtonEnter.width = 67;
         this._viewButtonEnter.height = 60;
         this._viewButtonEnter.x = 257;
         this._viewButtonEnter.y = 74;
         this._labelSmall.source.width = 467;
         this._labelSmall.source.height = 69;
         this._labelSmall.source.x = 58;
         this._labelSmall.source.y = 68;
         this._labelSmall.updateRect();
         this._labelBig.source.width = 540;
         this._labelBig.source.height = 37;
         this._labelBig.source.x = 25;
         this._labelBig.source.y = 23;
         this._labelBig.updateRect();
         this._buttonOk.x = 220;
         this._buttonOk.y = 90;
         this._buttonNext.x = 230;
         this._buttonNext.y = 105;
      }
      
      public function showOnlyTextBig(param1:String) : void
      {
         this._labelBig.source.height = 105;
         this._labelBig.updateRect();
         this.textBig = param1;
      }
      
      public function showButtonOk() : void
      {
         this._labelBig.source.height = 60;
         this._labelBig.updateRect();
         this._buttonOk.visible = true;
      }
      
      public function showButtonNext() : void
      {
         switch(this._sizeLabel)
         {
            case ETutorialPopupSize.ETPS_SMALL:
               break;
            case ETutorialPopupSize.ETPS_MEDIUM:
               this._labelSmall.source.y = 55;
               this._labelSmall.source.height = 47;
               this._labelSmall.updateRect();
               break;
            default:
               Debug.assert(false,"Unsupported tutorial popup size in updateSize method: " + this._sizeLabel);
         }
         this._buttonNext.visible = true;
      }
      
      public function showViewButtonEnter() : void
      {
         switch(this._sizeLabel)
         {
            case ETutorialPopupSize.ETPS_SMALL:
               break;
            case ETutorialPopupSize.ETPS_MEDIUM:
               this._labelSmall.source.y = 49;
               this._labelSmall.source.height = 25;
               this._labelSmall.updateRect();
               break;
            default:
               Debug.assert(false,"Unsupported tutorial popup size in updateSize method: " + this._sizeLabel);
         }
         this._viewButtonEnter.visible = true;
      }
      
      public function showPopup() : void
      {
         PopupManager.TUTORIAL_LAYER.addChild(this._source);
      }
      
      public function hidePopup() : void
      {
         if(this._source.parent != null)
         {
            this._source.parent.removeChild(this._source);
         }
         this._offsetY = 35;
      }
      
      public function hideTutorialPopupItems() : void
      {
         this._buttonNext.visible = false;
         this._buttonOk.visible = false;
         this._navigation.visible = false;
         this._viewButtonEnter.visible = false;
         this._labelBig.source.visible = false;
         this._labelSmall.source.visible = false;
      }
      
      public function alignToTop(param1:Number) : void
      {
         this._align = ETextVerticalAlign.ETVA_TOP;
         this._offsetY = param1;
         this.onGameResize(null);
      }
      
      public function alignToCenter(param1:Number) : void
      {
         this._align = ETextVerticalAlign.ETVA_CENTER;
         this._offsetY = param1;
         this.onGameResize(null);
      }
      
      public function alignToBottom(param1:Number) : void
      {
         this._align = ETextVerticalAlign.ETVA_BOTTOM;
         this._offsetY = param1;
         this.onGameResize(null);
      }
   }
}

