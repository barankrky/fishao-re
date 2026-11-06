package com.ax3.fishao.view.dialogs.trade.views
{
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ViewTradeItem extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _buttonRemove:FishaoButtonWrapper;
      
      private var _imageBackground:MovieClip;
      
      private var _imageBackgroundAmount:DisplayObjectContainer;
      
      private var _imagePlaceholder:DisplayObjectContainer;
      
      private var _imagePlaceholderSize:Point;
      
      private var _viewTooltipHandleArea:ViewBase;
      
      private var _labelAmount:TextField;
      
      private var _labelAmountWrapper:TextFieldAutofitWrapper;
      
      private var _filtersOver:Array;
      
      private var _state:ButtonState;
      
      public function ViewTradeItem(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonRemove() : FishaoButtonWrapper
      {
         return this._buttonRemove;
      }
      
      public function get state() : ButtonState
      {
         return this._state;
      }
      
      public function set state(param1:ButtonState) : void
      {
         if(param1 == this._state)
         {
            return;
         }
         this._state = param1;
         this.updateState();
      }
      
      public function get imagePlaceholder() : DisplayObjectContainer
      {
         return this._imagePlaceholder;
      }
      
      public function get viewTooltipHandleArea() : ViewBase
      {
         return this._viewTooltipHandleArea;
      }
      
      public function get imagePlaceholderSize() : Point
      {
         return this._imagePlaceholderSize;
      }
      
      public function set amount(param1:int) : void
      {
         this._labelAmountWrapper.text = param1.toString();
      }
      
      public function set amountVisible(param1:Boolean) : void
      {
         this._labelAmount.visible = param1;
         this._imageBackgroundAmount.visible = param1;
      }
      
      private function init() : void
      {
         var viewTooltipHandleAreaSource:DisplayObjectContainer = null;
         this._state = ButtonState.DEFAULT;
         this._buttonRemove = new FishaoButtonWrapper();
         this._buttonRemove.process(Debug.assertProperty(this._source,"buttonRemove",DisplayObjectContainer));
         this._buttonRemove.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonRemove,param1);
         };
         this._imageBackground = Debug.assertProperty(this._source,"imageBackground");
         this._filtersOver = this._imageBackground.filters;
         this._imageBackground.filters = [];
         this._imagePlaceholder = Debug.assertProperty(this._source,"imagePlaceholder");
         this._imagePlaceholderSize = new Point(this._imagePlaceholder.width,this._imagePlaceholder.height);
         viewTooltipHandleAreaSource = Debug.assertProperty(this._source,"viewTooltipHandleArea");
         this._viewTooltipHandleArea = new ViewBase(controller,viewTooltipHandleAreaSource);
         this._imageBackgroundAmount = Debug.assertProperty(this._source,"imageBackgroundAmount");
         this._labelAmount = Debug.assertProperty(this._source,"labelAmount");
         this._labelAmountWrapper = new TextFieldAutofitWrapper(this._labelAmount);
      }
      
      private function updateState() : void
      {
         if(this._state == ButtonState.DISABLED)
         {
            return;
         }
         switch(this._state)
         {
            case ButtonState.OVER:
               this._imageBackground.filters = this._filtersOver;
               break;
            case ButtonState.NORMAL:
               this._imageBackground.filters = [];
               break;
            default:
               Debug.assert(false,"Unsupported ButtonState on ViewTradeItem: " + this._state.name);
         }
      }
   }
}

