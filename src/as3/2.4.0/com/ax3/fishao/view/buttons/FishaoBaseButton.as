package com.ax3.fishao.view.buttons
{
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.display.buttons.StandardBitmapButton;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.fishao.utils.TransparentClickUtil;
   import com.ax3.utils.ColorMatrix;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.DropShadowFilter;
   import flash.utils.Dictionary;
   
   public class FishaoBaseButton extends StandardBitmapButton
   {
      
      private static var _defaulFilterByState:Dictionary;
      
      private var _filterByState:Dictionary = new Dictionary();
      
      public function FishaoBaseButton(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         super(param1,param2);
      }
      
      private static function createDefaultFilters() : void
      {
         var _loc1_:ColorMatrix = null;
         FishaoBaseButton._defaulFilterByState = new Dictionary();
         var _loc2_:ColorMatrix = new ColorMatrix();
         _loc2_.adjustSaturation(0);
         FishaoBaseButton._defaulFilterByState[ButtonState.DISABLED] = [new ColorMatrixFilter(_loc2_.matrix)];
         _loc1_ = new ColorMatrix();
         _loc1_.adjustBrightness(-0.3,-0.3,-0.3);
         _loc1_.adjustContrast(0.25,0.25,0.25);
         _loc1_.adjustSaturation(1.25);
         var _loc3_:DropShadowFilter = new DropShadowFilter(1,90,0,1,4,4,0.75,1);
         FishaoBaseButton._defaulFilterByState[ButtonState.OVER] = [new ColorMatrixFilter(_loc1_.matrix),_loc3_];
         FishaoBaseButton._defaulFilterByState[ButtonState.DOWN] = [new DropShadowFilter(6,45,0,0.75,8,8,0.75,1.25,true)];
         FishaoBaseButton._defaulFilterByState[ButtonState.NORMAL] = [];
      }
      
      override public function init(param1:StandardBitmapButtonConfiguration, param2:Function) : void
      {
         super.init(param1,param2);
         if(!FishaoBaseButton._defaulFilterByState)
         {
            createDefaultFilters();
         }
      }
      
      override protected function updateGivenState() : void
      {
         super.updateGivenState();
         filters = this._filterByState[_state] ? this._filterByState[_state] : _defaulFilterByState[_state];
      }
      
      public function setFiltersForState(param1:ButtonState, param2:Array) : void
      {
         this._filterByState[param1] = param2;
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         this.onMouseOver(param1);
      }
      
      override protected function onMouseMove(param1:MouseEvent) : void
      {
         this.onMouseOver(param1);
      }
      
      private function checkForAvailablbilityUp(param1:DisplayObject) : Boolean
      {
         return param1.hasEventListener(MouseEvent.ROLL_OUT);
      }
      
      private function checkCurrentWithFindedUp(param1:DisplayObject) : Boolean
      {
         return param1 == this;
      }
      
      private function callbackUp(param1:DisplayObject) : void
      {
         param1.dispatchEvent(new MouseEvent(MouseEvent.ROLL_OUT));
      }
      
      override public function onMouseOver(param1:MouseEvent) : void
      {
         if(TransparentClickUtil.isHitOnObject(param1.currentTarget as DisplayObject))
         {
            TransparentClickUtil.lastObj = this;
            super.onMouseOver(param1);
         }
         else
         {
            TransparentClickUtil.doOtherInteractiveObjects(param1.currentTarget as DisplayObject,this.checkForAvailablbilityOver,this.checkCurrentWithFindedOver,this.callbackOver,this.clearCallbackOver);
         }
      }
      
      private function clearCallbackOver(param1:DisplayObject) : void
      {
         param1.dispatchEvent(new MouseEvent(MouseEvent.ROLL_OUT));
      }
      
      private function checkForAvailablbilityOver(param1:DisplayObject) : Boolean
      {
         return param1.hasEventListener(MouseEvent.MOUSE_MOVE);
      }
      
      private function checkCurrentWithFindedOver(param1:DisplayObject) : Boolean
      {
         return param1 == this;
      }
      
      private function callbackOver(param1:DisplayObject) : void
      {
         TransparentClickUtil.clearOtherInteractiveObjects(param1);
         param1.dispatchEvent(new MouseEvent(MouseEvent.MOUSE_MOVE));
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         if(TransparentClickUtil.isHitOnObject(param1.currentTarget as DisplayObject))
         {
            super.onMouseDown(param1);
         }
         else
         {
            TransparentClickUtil.doOtherInteractiveObjects(param1.currentTarget as DisplayObject,this.checkForAvailablbilityDown,this.checkCurrentWithFindedDown,this.callbackDown,this.clearCallbackDown);
         }
      }
      
      private function clearCallbackDown(param1:DisplayObject) : void
      {
         param1.dispatchEvent(new MouseEvent(MouseEvent.MOUSE_UP));
      }
      
      private function checkForAvailablbilityDown(param1:DisplayObject) : Boolean
      {
         return param1.hasEventListener(MouseEvent.MOUSE_DOWN);
      }
      
      private function checkCurrentWithFindedDown(param1:DisplayObject) : Boolean
      {
         return param1 == this;
      }
      
      private function callbackDown(param1:DisplayObject) : void
      {
         param1.dispatchEvent(new MouseEvent(MouseEvent.MOUSE_DOWN));
      }
      
      override protected function onClick(param1:MouseEvent) : void
      {
         if(TransparentClickUtil.isHitOnObject(param1.currentTarget as DisplayObject))
         {
            super.onClick(param1);
         }
         else
         {
            TransparentClickUtil.doOtherInteractiveObjects(param1.currentTarget as DisplayObject,this.checkForAvailablbilityClick,this.checkCurrentWithFindedClick,this.callbackClick,this.clearCallbackOver);
         }
      }
      
      private function checkForAvailablbilityClick(param1:DisplayObject) : Boolean
      {
         return param1.hasEventListener(MouseEvent.CLICK);
      }
      
      private function checkCurrentWithFindedClick(param1:DisplayObject) : Boolean
      {
         return param1 == this;
      }
      
      private function callbackClick(param1:DisplayObject) : void
      {
         param1.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
   }
}

