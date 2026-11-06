package com.ax3.display.autoscalable
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class _759432fb62268c6ba2923d88 extends Bitmap implements _d9b1d5b0d14a5cd41e1c4963
   {
      
      protected var _width:Number;
      
      protected var _height:Number;
      
      protected var _originBitmapData:BitmapData;
      
      public function _759432fb62268c6ba2923d88(param1:BitmapData, param2:String = "auto", param3:Boolean = false)
      {
         this._originBitmapData = param1;
         this._width = this._originBitmapData.width;
         this._height = this._originBitmapData.height;
         super(param1,param2,param3);
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         this._originBitmapData = param1;
         this._82a696edfd066ed03d182af1();
      }
      
      protected function _82a696edfd066ed03d182af1() : void
      {
         this.x -= this._originBitmapData.width / (0x40B6B89E ^ -1063206499 ^ -1712958793 ^ 0x19F02BB6);
         this.y -= this._originBitmapData.height / (0x4A30DF3F ^ -25760861 ^ 0x1A7C58DF ^ -1371902911);
         var _loc1_:BitmapData = new BitmapData(this._originBitmapData.width,this._originBitmapData.height,true,0x0B38CEC3 ^ 0x57F4E147 ^ -245689010 ^ -1382597947);
         _loc1_.draw(this._originBitmapData,null,null,null,null,true);
         super.bitmapData = _loc1_;
      }
   }
}

