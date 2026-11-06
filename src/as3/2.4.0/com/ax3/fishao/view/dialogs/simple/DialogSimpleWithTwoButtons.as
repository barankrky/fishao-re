package com.ax3.fishao.view.dialogs.simple
{
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.events.MouseEvent;
   
   public class DialogSimpleWithTwoButtons extends DialogSimpleBase
   {
      
      private var _source:gDialogSimpleWithTwoButtons = new gDialogSimpleWithTwoButtons();
      
      private var _buttonActionLeft:FrameButtonWrapper;
      
      private var _buttonActionRight:FrameButtonWrapper;
      
      private var _callbackButtonLeft:Function;
      
      private var _callbackButtonRight:Function;
      
      private var _actionCalled:Boolean;
      
      public function DialogSimpleWithTwoButtons()
      {
         super(this._source);
         this.init();
      }
      
      public function get buttonActionLeft() : FrameButtonWrapper
      {
         return this._buttonActionLeft;
      }
      
      public function get buttonActionRight() : FrameButtonWrapper
      {
         return this._buttonActionRight;
      }
      
      public function set callbackButtonLeft(param1:Function) : void
      {
         this._callbackButtonLeft = param1;
      }
      
      public function set callbackButtonRight(param1:Function) : void
      {
         this._callbackButtonRight = param1;
      }
      
      override protected function onViewClicked(param1:Object, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(this._actionCalled)
         {
            return _loc3_;
         }
         switch(param1)
         {
            case this._buttonActionLeft:
               if(this._callbackButtonLeft != null)
               {
                  this._callbackButtonLeft();
               }
               this.onButtonCloseClicked();
               _loc3_ = true;
               break;
            case this._buttonActionRight:
               if(this._callbackButtonRight != null)
               {
                  this._callbackButtonRight();
               }
               this.onButtonCloseClicked();
               _loc3_ = true;
         }
         return _loc3_;
      }
      
      override protected function onButtonCloseClicked() : void
      {
         this._actionCalled = true;
         super.onButtonCloseClicked();
      }
      
      private function init() : void
      {
         this._source.buttonClose.buttonMode = true;
         this._source.buttonClose.useHandCursor = true;
         this._buttonActionLeft = new FrameButtonWrapper();
         this._buttonActionLeft.process(this._source.buttonActionLeft);
         this._buttonActionLeft.handler = function(param1:MouseEvent):void
         {
            onViewClicked(_buttonActionLeft,param1);
         };
         this._buttonActionRight = new FrameButtonWrapper();
         this._buttonActionRight.process(this._source.buttonActionRight);
         this._buttonActionRight.handler = function(param1:MouseEvent):void
         {
            onViewClicked(_buttonActionRight,param1);
         };
      }
   }
}

