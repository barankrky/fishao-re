package com.ax3.display.autoscalable
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class _6361b2c3a5d7e31e21223d27 extends Bitmap implements _d9b1d5b0d14a5cd41e1c4963
   {
      
      protected var _originBitmapData:BitmapData;
      
      protected var _width:int;
      
      protected var _height:int;
      
      public function _6361b2c3a5d7e31e21223d27(param1:BitmapData = null, param2:String = "auto", param3:Boolean = false)
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
         _loc4_.tx = -1627236450 ^ 0x4E03CBAE ^ 0x1A76D11D ^ -881373907;
         _loc4_.ty = int((this._height - this._originBitmapData.height * _loc1_) / (-614299908 ^ 0x152CB99E ^ -1499224758 ^ 0x68ED9A2A));
         var _loc5_:BitmapData = new BitmapData(this._width,this._height,true,-1451559103 ^ -1720233148 ^ 0x2B2B0F8E ^ 0x1B26AB8B);
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

