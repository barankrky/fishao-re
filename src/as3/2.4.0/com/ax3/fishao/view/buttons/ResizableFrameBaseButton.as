package com.ax3.fishao.view.buttons
{
   import com.ax3.display.buttons.FrameBaseButton;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import flash.display.MovieClip;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class ResizableFrameBaseButton extends FrameBaseButton
   {
      
      private var _background:MovieClip;
      
      public function ResizableFrameBaseButton(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         _asset = MovieClip(param1.asset);
         this._background = _asset.getChildByName("background") as MovieClip;
         super(param1,param2);
      }
      
      override public function set label(param1:String) : void
      {
         var _loc2_:TextFormat = null;
         if(_labelField != null)
         {
            _loc2_ = _labelField.getTextFormat();
            _labelField.text = param1;
            while(_labelField.textWidth > _labelField.width)
            {
               _loc2_.size = uint(_loc2_.size) - 1;
               _labelField.defaultTextFormat = _loc2_;
               _labelField.setTextFormat(_loc2_);
            }
            _labelField.autoSize = TextFieldAutoSize.CENTER;
            _labelField.y = (this._background.height - _labelField.height) / 2;
         }
      }
      
      override protected function updateGivenState() : void
      {
         super.updateGivenState();
         _asset.gotoAndStop(_state.name);
         this._background.gotoAndStop(_state.name);
      }
   }
}

