package com.ax3.fishao.view.buttons
{
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObject;
   
   public class ResizableButtonWrapper extends FrameButtonWrapper
   {
      
      private var _initX:Number;
      
      public function ResizableButtonWrapper()
      {
         super();
         _buttonCls = ResizableFrameBaseButton;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._initX = this.x + _button.width / 2;
      }
      
      override public function set label(param1:String) : void
      {
         _button.label = param1;
         this.x = this._initX - _button.width / 2;
      }
   }
}

