package com.ax3.display.autoscalable
{
   import com.ax3.controllers.ScaledBitmapController;
   import flash.display.BitmapData;
   
   public class ScaledBitmapWithPreloader extends ScaledBitmap
   {
      
      private var _loaded:Boolean;
      
      private var _preloader:BitmapData;
      
      public function ScaledBitmapWithPreloader(param1:BitmapData = null, param2:String = "auto", param3:Boolean = false)
      {
         if(param1 == null || param1.width == 1)
         {
            this._loaded = false;
            param1 = new BitmapData(ScaledBitmapController.FRAME_WIDTH,ScaledBitmapController.FRAME_HEIGHT,true,255);
            ScaledBitmapController.getInstance().subscribeBitmap(this);
         }
         _width = param1.width;
         _height = param1.height;
         super(param1,param2,param3);
      }
      
      override protected function redraw() : void
      {
         if(this._loaded)
         {
            ScaledBitmapController.getInstance().unsubscribeBitmap(this);
         }
         super.redraw();
      }
      
      override public function set width(param1:Number) : void
      {
         _width = param1;
         this.redraw();
      }
      
      override public function set height(param1:Number) : void
      {
         _height = param1;
         this.redraw();
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         if(this._loaded == false)
         {
            this._preloader = param1;
            this._loaded = true;
            super.bitmapData = this._preloader;
         }
      }
   }
}

