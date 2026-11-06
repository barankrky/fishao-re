package com.ax3.display.autoscalable
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Matrix;
   
   public class _a4e47350c89a50d87a148c28 extends Bitmap implements _d9b1d5b0d14a5cd41e1c4963
   {
      
      protected var _width:Number;
      
      protected var _height:Number;
      
      protected var _originBitmapData:BitmapData;
      
      public function _a4e47350c89a50d87a148c28(param1:BitmapData = null, param2:String = "auto", param3:Boolean = false)
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
         this._82a696edfd066ed03d182af1();
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = param1;
         this._82a696edfd066ed03d182af1();
      }
      
      override public function set height(param1:Number) : void
      {
         this._height = param1;
         this._82a696edfd066ed03d182af1();
      }
      
      protected function _82a696edfd066ed03d182af1() : void
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
            _loc4_.tx = int((this._width - this._originBitmapData.width * _loc3_) / (-797212639 ^ -877051044 ^ 0x03FD5DB8 ^ 0x183F9EC7));
            _loc4_.ty = int((this._height - this._originBitmapData.height * _loc3_) / (0x35673FD8 ^ -1888732497 ^ -1556777442 ^ 0x193E736B));
            _loc5_ = new BitmapData(this._width,this._height,true,-196435419 ^ 0x4DC04BC0 ^ 0x6289A16C ^ -620541815);
            _loc5_.draw(this._originBitmapData,_loc4_,null,null,null,true);
            this._533b2a3d381dd745777652df(_loc5_);
            smoothing = true;
         }
      }
      
      protected function _533b2a3d381dd745777652df(param1:BitmapData) : void
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
      
      public function _06f309e150bbba7e5aaf3e95(param1:Number, param2:Number) : void
      {
         this.x = (param1 - this.width) / (-378154649 ^ 0x0722D8D5 ^ -569909297 ^ 0x3050D67F);
         this.y = (param2 - this.height) / (-379090110 ^ 0x68379617 ^ -1766396075 ^ 0x17E6F202);
      }
   }
}

