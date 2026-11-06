package com.ax3.display.buttons
{
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import flash.display.MovieClip;
   
   public class FrameBaseButton extends StandardBitmapButton
   {
      
      protected var _asset:MovieClip;
      
      public function FrameBaseButton(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         this._asset = MovieClip(param1.asset);
         super(param1,param2);
         this.updateGivenState();
      }
      
      override public function init(param1:StandardBitmapButtonConfiguration, param2:Function) : void
      {
         super.init(param1,param2);
      }
      
      override protected function updateGivenState() : void
      {
         super.updateGivenState();
         this._asset.gotoAndStop(_state.name);
      }
      
      public function get asset() : MovieClip
      {
         return this._asset;
      }
   }
}

