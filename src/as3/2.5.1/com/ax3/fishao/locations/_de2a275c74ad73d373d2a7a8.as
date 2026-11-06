package com.ax3.fishao.locations
{
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class _de2a275c74ad73d373d2a7a8 extends Bitmap implements _c36d2d5bdf0600686d3429c2, _69eec7d2f73604da25ccda04
   {
      
      public static var created:int = 0x3EE4F5F9 ^ -637840713 ^ -1514483097 ^ 0x42A57529;
      
      public static var destroyed:int = -361737586 ^ -1067417034 ^ -212317512 ^ -649553408;
      
      private var _a73aeb5a6066c0795d37ea91:int = 0;
      
      private var _2ecc289faceb8ce75090d887:Number = 1;
      
      private var _f21c80ac59ecc355e307d962:Vector.<BitmapData> = new Vector.<BitmapData>();
      
      private var _c711d9d08d84a31e9a74844d:Number = 0;
      
      private var _cd105f98646058d9e8f61840:Number = 0;
      
      private var _2789f2f5af288e73050774e0:Number;
      
      private var _ceea1b715a70bf6c592614b7:Boolean;
      
      public function _de2a275c74ad73d373d2a7a8()
      {
         super();
         ++created;
      }
      
      public function _b4acf079c9d49145fe13e365(param1:BitmapData) : void
      {
         var _loc2_:int = 0x5539CE5E ^ 0x1773A8C7 ^ 0x54C08E65 ^ -1334193276;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6A52FDB8 ^ -668804769 ^ -1792166359 ^ -2119259722))
            {
               case 0:
                  this._f21c80ac59ecc355e307d962.push(param1);
                  if(this._f21c80ac59ecc355e307d962.length == (0x6E6DF598 ^ 0x2D9E02A9 ^ 0x53BCB828 ^ 0x104F4F18))
                  {
                     _loc2_ = -1261771445 ^ 0x35319B51 ^ 0x426E6809 ^ 0x65662D69;
                  }
                  else
                  {
                     _loc2_ = 0x5651757E ^ -839385088 ^ -1793499811 ^ -1471999142;
                  }
                  break;
               case 1:
                  this._a73aeb5a6066c0795d37ea91 = this._f21c80ac59ecc355e307d962.length;
                  return;
               case 2:
                  this.gotoAndStop(0x05AC2DC6 ^ 0x5B4B8E09 ^ 0x040DE505 ^ 0x5AEA46CB);
                  _loc2_ = 0x52CF98EB ^ 0x5225DF91 ^ -2033799285 ^ 0x20DFD388;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function gotoAndStop(param1:int) : void
      {
         var _loc2_:int = -1277915898 ^ 0x1DE30F90 ^ -1616631014 ^ -1194494117;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-733648874 ^ 0x7CEF81A6 ^ 0x264E3761 ^ 0x07BA0004))
            {
               case 0:
                  return;
               case 1:
                  bitmapData = this._f21c80ac59ecc355e307d962[param1 - 1];
                  _loc2_ = 0x179CB524 ^ 0x62CD3BF7 ^ 0x75750F90 ^ -1988468842;
                  break;
               case 2:
                  if(bitmapData != this._f21c80ac59ecc355e307d962[param1 - 1])
                  {
                     _loc2_ = -1521929807 ^ 0x03A28A1D ^ -1676908096 ^ -1279718216;
                  }
                  else
                  {
                     _loc2_ = -1320272783 ^ -258312307 ^ -401291693 ^ 0x209E537A;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _d0896a2f8783f768d3a2cf77() : BitmapData
      {
         return this._f21c80ac59ecc355e307d962.length > (0x7A43F52C ^ -376851648 ^ 0x044F3D1C ^ -1752859792) ? this._f21c80ac59ecc355e307d962[this._f21c80ac59ecc355e307d962.length - 1] : null;
      }
      
      public function destroy() : void
      {
         var _loc1_:BitmapData = null;
         if(parent != null)
         {
            parent.removeChild(this);
         }
         ++destroyed;
         for each(_loc1_ in this._f21c80ac59ecc355e307d962)
         {
            if(_loc1_ != null)
            {
               _loc1_.dispose();
            }
         }
         this._f21c80ac59ecc355e307d962 = null;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = -913698132 ^ -1402583706 ^ -1478579766 ^ -1036845568;
         if(this._ceea1b715a70bf6c592614b7)
         {
            if(this._c711d9d08d84a31e9a74844d == (0x15747B36 ^ 0x17A81887 ^ -1638262085 ^ 0x637986F5))
            {
               this._c711d9d08d84a31e9a74844d = param1;
               this.gotoAndStop(0x1208E942 ^ -906950908 ^ -1393468257 ^ 0x7708B2D8);
            }
            else
            {
               _loc3_ = param1 - this._c711d9d08d84a31e9a74844d;
               if(_loc3_ > this._cd105f98646058d9e8f61840)
               {
                  _loc4_ = int(_loc3_ / this._cd105f98646058d9e8f61840);
                  this._c711d9d08d84a31e9a74844d += this._cd105f98646058d9e8f61840 * _loc4_;
                  this._20298b9567798b11b5b475e0(_loc4_);
               }
            }
         }
      }
      
      private function _20298b9567798b11b5b475e0(param1:int) : void
      {
         this._2ecc289faceb8ce75090d887 = (this._2ecc289faceb8ce75090d887 + param1) % this._a73aeb5a6066c0795d37ea91;
         this.gotoAndStop(this._2ecc289faceb8ce75090d887 + (-1390103946 ^ -358671151 ^ -1978113723 ^ -844902429));
      }
      
      public function set framePerSec(param1:Number) : void
      {
         this._2789f2f5af288e73050774e0 = param1;
         this._cd105f98646058d9e8f61840 = (0x27BA9DF7 ^ 0x10408D99 ^ -578410697 ^ -360958799) / this._2789f2f5af288e73050774e0;
      }
      
      public function play() : void
      {
         this._ceea1b715a70bf6c592614b7 = true;
         this._c711d9d08d84a31e9a74844d = 0x2ED0089B ^ 0x4DBDFC65 ^ -492657453 ^ 0x7E30AFD2;
      }
   }
}

