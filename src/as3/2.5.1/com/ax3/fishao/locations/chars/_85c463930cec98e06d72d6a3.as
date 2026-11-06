package com.ax3.fishao.locations.chars
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.utils.isBitmapDataValid;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _85c463930cec98e06d72d6a3 extends Bitmap implements _faab80cfc2fee99ff0930b0b
   {
      
      var _temp_2:* = §§findproperty(Point);
      var _temp_1:* = 0x03ED8ADF ^ 0x6B0D9965 ^ 0x11A5F87B ^ 0x7945EBC1;
      
      public static const ZERO_POINT:Point = new Point(_temp_1,_temp_1);
      
      protected var _frames:Vector.<BitmapData> = new Vector.<BitmapData>();
      
      public var currentFrame:Number = -1;
      
      protected var _sourceBitmapData:BitmapData;
      
      protected var _cellSize:Rectangle;
      
      public var totalFrames:int = 0;
      
      public function _85c463930cec98e06d72d6a3()
      {
         super();
      }
      
      public function config(param1:Object) : void
      {
         this._cellSize = Rectangle(param1.cellSize);
         this._232eb619a2b788e20a5d5af8();
      }
      
      public function getBitmapData(param1:Object = null) : BitmapData
      {
         return null;
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         this._sourceBitmapData = param1;
         this._232eb619a2b788e20a5d5af8();
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function _232eb619a2b788e20a5d5af8() : void
      {
         var _loc1_:BitmapData = null;
         if(!this.isReady())
         {
            return;
         }
         this._frames = new Vector.<BitmapData>();
         this.totalFrames = 0x0739AC9D ^ 0x05F07CCC ^ 0x24C5A302 ^ 0x260C7353;
         while(this._cellSize.y < this._sourceBitmapData.height)
         {
            this._cellSize.x = 0x6207CF5D ^ -622548117 ^ 0x2146A2BB ^ -1717188979;
            this.totalFrames = 0x5ECC38A4 ^ -255120735 ^ -1441013698 ^ 0x041CF23B;
            while(this._cellSize.x < this._sourceBitmapData.width)
            {
               _loc1_ = new BitmapData(this._cellSize.width,this._cellSize.height,true,-2064864738 ^ -1402744004 ^ 0x0664B91E ^ 0x2EEBC03C);
               _loc1_.copyPixels(this._sourceBitmapData,this._cellSize,ZERO_POINT);
               this._frames.push(_loc1_);
               ++this.totalFrames;
               this._cellSize.x += this._cellSize.width;
            }
            this._cellSize.y += this._cellSize.height;
         }
         this._cellSize.x = -401454874 ^ -565818219 ^ 0x0B9343D8 ^ 0x3DC747AB;
         this._cellSize.y = 0x78F81348 ^ 0x4A89BDF6 ^ 0x2B96035A ^ 0x19E7ADE4;
      }
      
      protected function isReady() : Boolean
      {
         return this._sourceBitmapData != null && isBitmapDataValid(this._sourceBitmapData) && this._cellSize != null;
      }
      
      public function enterFrame() : void
      {
         throw new Error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("删劈剃勼劐創剓剾労刵剎刿勺剌労刯勭勦勥劇別劼剃券剮剗剧刿劳劯剡劥劧剒刮剨刍勡判勷刎剖劦剓剝剂剪劗","勠勤刴刑努务勇加勯剗勭刔劮勛券勬"));
      }
      
      public function _b007a8f45848923a4a7c0631(param1:uint) : BitmapData
      {
         return param1 in this._frames ? this._frames[param1] : null;
      }
      
      public function _dafe6d3a659206d493a93fc8(param1:_00cff8158b1624703bcb33a4) : void
      {
         var _loc2_:int = 0x602861C9 ^ 0x51C0A9F0 ^ 0x4413AFD2 ^ 0x363C6F68;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1355934246 ^ -1271578194 ^ -758499034 ^ -1978243629))
            {
               case 0:
                  param1.bitmapData = this._b007a8f45848923a4a7c0631(param1.direction);
                  _loc2_ = 0x28641153 ^ -537183723 ^ 0x6F2D7ACB ^ -613066483;
                  break;
               case 1:
                  return;
               case 2:
                  if(this.isReady())
                  {
                     _loc2_ = 0x57CC071A ^ 0x0B504C6A ^ -157061474 ^ -369611409;
                  }
                  else
                  {
                     _loc2_ = 0x3F95A11B ^ -320572879 ^ -76277707 ^ 0x6BC2C39F;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function destroy() : void
      {
         var _loc1_:int = 0x747D206A ^ 0x4B9A8275 ^ 0x29C9C7BF ^ 0x162E65A0;
         var _loc2_:int = -487108684 ^ 0x6FEC5A93 ^ 0x74D8B2D3 ^ -949299026;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x70BA2427 ^ 0x554F88E3 ^ -1282826115 ^ -1462406169))
            {
               case 0:
                  this._frames.length = 0x7870B0DF ^ 0x6581D3E7 ^ -1440792626 ^ -1209115402;
                  _loc2_ = 0x568F758F ^ 0x151F0BFC ^ -1981926214 ^ -186174058;
                  break;
               case 1:
                  return;
               case 2:
                  this._frames[_loc1_].dispose();
                  _loc1_++;
                  _loc2_ = 0x365E5384 ^ -1354784756 ^ -1395840875 ^ 0x0B05A440;
                  break;
               case 3:
                  if(_loc1_ >= this._frames.length)
                  {
                     _loc2_ = -179646646 ^ 0x7D201304 ^ 0x05C730F4 ^ -1291545628;
                  }
                  else
                  {
                     _loc2_ = -1344726247 ^ 0x3203F9B3 ^ 0x4BC054A5 ^ -390870701;
                  }
                  break;
               case 4:
                  _loc1_ = 0x7EC525FE ^ -1043147738 ^ -677794131 ^ 0x688E5F75;
                  if(this._frames != null)
                  {
                     _loc2_ = 0x171C71B1 ^ -630298612 ^ -1457188022 ^ 0x5AFE75AC;
                  }
                  else
                  {
                     _loc2_ = 0x2C693733 ^ 0x3FC39915 ^ 0x1CBC165A ^ 0x31BFC723;
                  }
                  break;
               case 5:
                  _loc1_ = -1434266341 ^ -1899394001 ^ -1797160984 ^ -1331026212;
                  _loc2_ = 0x09D8E5A5 ^ -270621101 ^ -204155212 ^ 0x2B7BEA1F;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

