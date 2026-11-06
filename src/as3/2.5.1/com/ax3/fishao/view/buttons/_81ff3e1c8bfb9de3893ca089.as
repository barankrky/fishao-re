package com.ax3.fishao.view.buttons
{
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObject;
   
   public class _81ff3e1c8bfb9de3893ca089 extends FrameButtonWrapper
   {
      
      private var _dbf23915589ec5d476dc0081:Number;
      
      public function _81ff3e1c8bfb9de3893ca089()
      {
         super();
         _buttonCls = _f3e321ac31e1f923ff251180;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._dbf23915589ec5d476dc0081 = this.x + _button.width / (-503620104 ^ -1800995832 ^ 0x026EDD8B ^ 0x77337C79);
      }
      
      override public function set label(param1:String) : void
      {
         _button.label = param1;
         this.x = this._dbf23915589ec5d476dc0081 - _button.width / (-855145389 ^ 0x24F37593 ^ -1984750978 ^ 0x6047EBBC);
      }
   }
}

