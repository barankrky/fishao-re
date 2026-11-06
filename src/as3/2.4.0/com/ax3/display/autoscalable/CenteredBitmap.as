package com.ax3.display.autoscalable
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class CenteredBitmap extends Bitmap implements IAutoScalable
   {
      
      protected var _width:Number;
      
      protected var _height:Number;
      
      protected var _originBitmapData:BitmapData;
      
      public function CenteredBitmap(param1:BitmapData, param2:String = "auto", param3:Boolean = false)
      {
         this._originBitmapData = param1;
         this._width = this._originBitmapData.width;
         this._height = this._originBitmapData.height;
         super(param1,param2,param3);
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         this._originBitmapData = param1;
         this.redraw();
      }
      
      protected function redraw() : void
      {
         this.x -= this._originBitmapData.width / 2;
         this.y -= this._originBitmapData.height / 2;
         var _loc1_:BitmapData = new BitmapData(this._originBitmapData.width,this._originBitmapData.height,true,15);
         _loc1_.draw(this._originBitmapData,null,null,null,null,true);
         super.bitmapData = _loc1_;
      }
   }
}

