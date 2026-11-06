package com.ax3.display.autoscalable
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Matrix;
   
   public class ScaledBitmap extends Bitmap implements IAutoScalable
   {
      
      protected var _width:Number;
      
      protected var _height:Number;
      
      protected var _originBitmapData:BitmapData;
      
      public function ScaledBitmap(param1:BitmapData = null, param2:String = "auto", param3:Boolean = false)
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
         dispatchEvent(new Event(Event.COMPLETE));
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
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Matrix = null;
         var _loc5_:BitmapData = null;
         if(this._originBitmapData != null)
         {
            _loc1_ = this._originBitmapData.width / this._originBitmapData.height;
            _loc2_ = this._width / this._height;
            if(_loc2_ > _loc1_)
            {
               _loc3_ = this._height / this._originBitmapData.height;
            }
            else
            {
               _loc3_ = this._width / this._originBitmapData.width;
            }
            _loc4_ = new Matrix();
            _loc4_.scale(_loc3_,_loc3_);
            _loc4_.tx = int((this._width - this._originBitmapData.width * _loc3_) / 2);
            _loc4_.ty = int((this._height - this._originBitmapData.height * _loc3_) / 2);
            _loc5_ = new BitmapData(this._width,this._height,true,0);
            _loc5_.draw(this._originBitmapData,_loc4_,null,null,null,true);
            this.replaceBitmapDataDirect(_loc5_);
            smoothing = true;
         }
      }
      
      protected function replaceBitmapDataDirect(param1:BitmapData) : void
      {
         super.bitmapData = param1;
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
      
      public function centerBitmapRelativeToContainer(param1:Number, param2:Number) : void
      {
         this.x = (param1 - this.width) / 2;
         this.y = (param2 - this.height) / 2;
      }
   }
}

