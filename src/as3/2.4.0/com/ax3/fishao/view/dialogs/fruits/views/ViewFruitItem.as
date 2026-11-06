package com.ax3.fishao.view.dialogs.fruits.views
{
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ViewFruitItem extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _imageBackground:MovieClip;
      
      private var _imagePlaceholder:DisplayObjectContainer;
      
      private var _imagePlaceholderSize:Point;
      
      private var _viewTooltipHandleArea:ViewBase;
      
      private var _filtersOver:Array;
      
      private var _state:ButtonState;
      
      protected var _buttonRemove:FishaoButtonWrapper;
      
      protected var _labelAmount:TextField;
      
      protected var _labelAmountWrapper:TextFieldAutofitWrapper;
      
      public function ViewFruitItem(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonRemove() : FishaoButtonWrapper
      {
         return this._buttonRemove;
      }
      
      public function set amount(param1:int) : void
      {
         Debug.assert(false,"Unsupported method for ViewFruitItem. Should be overriden by child");
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
      
      private function init() : void
      {
         this._state = ButtonState.DEFAULT;
         this._imageBackground = Debug.assertProperty(this._source,"imageBackground");
         this._filtersOver = this._imageBackground.filters;
         this._imageBackground.filters = [];
         this._imagePlaceholder = Debug.assertProperty(this._source,"imagePlaceholder");
         this._imagePlaceholderSize = new Point(this._imagePlaceholder.width,this._imagePlaceholder.height);
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(this._source,"viewTooltipHandleArea");
         this._viewTooltipHandleArea = new ViewBase(controller,_loc1_);
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
               Debug.assert(false,"Unsupported ButtonState on ViewFruitItem: " + this._state.name);
         }
      }
   }
}

