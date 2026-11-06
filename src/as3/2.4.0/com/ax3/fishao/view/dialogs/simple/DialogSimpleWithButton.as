package com.ax3.fishao.view.dialogs.simple
{
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.events.MouseEvent;
   
   public class DialogSimpleWithButton extends DialogSimpleBase
   {
      
      private var _source:gDialogSimpleWithButton = new gDialogSimpleWithButton();
      
      private var _buttonAction:FrameButtonWrapper;
      
      private var _callback:Function;
      
      public function DialogSimpleWithButton()
      {
         super(this._source);
         this.init();
      }
      
      public function set callback(param1:Function) : void
      {
         this._callback = param1;
      }
      
      public function get buttonAction() : FrameButtonWrapper
      {
         return this._buttonAction;
      }
      
      override protected function onViewClicked(param1:Object, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         switch(param1)
         {
            case this._buttonAction:
               if(this._callback != null)
               {
                  this._callback();
               }
               onButtonCloseClicked();
               _loc3_ = true;
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._buttonAction = new FrameButtonWrapper();
         this._buttonAction.process(this._source.buttonAction);
         this._buttonAction.handler = function(param1:MouseEvent):void
         {
            onViewClicked(_buttonAction,param1);
         };
      }
   }
}

