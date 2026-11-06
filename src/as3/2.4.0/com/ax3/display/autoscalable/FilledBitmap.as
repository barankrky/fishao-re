package com.ax3.display.autoscalable
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class FilledBitmap extends Bitmap implements IAutoScalable
   {
      
      protected var _originBitmapData:BitmapData;
      
      protected var _width:int;
      
      protected var _height:int;
      
      public function FilledBitmap(param1:BitmapData = null, param2:String = "auto", param3:Boolean = false)
      {
         if(param1 != null)
         {
            this._originBitmapData = param1;
            this._width = param1.width;
            this._height = param1.height;
         }
         super(param1,param2,param3);
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         this._originBitmapData = param1;
         this.redraw();
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = param1;
         this.redraw();
      }
      
      override public function set height(param1:Number) : void
      {
         this._height = param1;
         this.redraw();
      }
      
      protected function redraw() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = this._originBitmapData.width / this._originBitmapData.height;
         var _loc3_:Number = this._width / this._height;
         if(_loc2_ > _loc3_)
         {
            _loc1_ = this._height / this._originBitmapData.height;
         }
         else
         {
            _loc1_ = this._width / this._originBitmapData.width;
         }
         var _loc4_:Matrix = new Matrix();
         _loc4_.scale(_loc1_,_loc1_);
         _loc4_.tx = 0;
         _loc4_.ty = int((this._height - this._originBitmapData.height * _loc1_) / 2);
         var _loc5_:BitmapData = new BitmapData(this._width,this._height,true,0);
         _loc5_.draw(this._originBitmapData,_loc4_,null,null,null,true);
         super.bitmapData = _loc5_;
         smoothing = true;
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
   }
}

