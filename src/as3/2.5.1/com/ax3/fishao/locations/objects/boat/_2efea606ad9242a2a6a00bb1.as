package com.ax3.fishao.locations.objects.boat
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _2efea606ad9242a2a6a00bb1
   {
      
      public var directionIndex:int;
      
      public var shiftX:int;
      
      public var shiftY:int;
      
      public var totalFrames:int = 0;
      
      private var _32c6630b755b3c3d4b37eeff:Vector.<BitmapData> = new Vector.<BitmapData>();
      
      private var _0a9425f9d5de4a8f46737343:Matrix;
      
      private var _05e63cf2daaf3fb66a9c2db5:Matrix;
      
      public function _2efea606ad9242a2a6a00bb1(param1:MovieClip, param2:int, param3:int)
      {
         super();
         this.directionIndex = (param2 - 1) / param3;
         this._81790b054bec2e3e9c54d85f(param1,param2);
         this._d507a509075694df0093b7ae(param2,param3,param1);
         this.totalFrames = param3;
      }
      
      private function _81790b054bec2e3e9c54d85f(param1:MovieClip, param2:int) : void
      {
         var _loc3_:Matrix = null;
         param1.gotoAndStop(param2);
         var _loc4_:DisplayObject = param1.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႨဆႳုႨႴ႘ႛဈခတူါဴ","ნ့႕ၺჴႤၐၬႧၛဆဆႣ၄ဆ႒"));
         if(_loc4_ != null)
         {
            _loc3_ = _loc4_.transform.matrix;
            if(this._0a9425f9d5de4a8f46737343 == null)
            {
               this._0a9425f9d5de4a8f46737343 = _loc3_;
               this._05e63cf2daaf3fb66a9c2db5 = _loc3_.clone();
               this._05e63cf2daaf3fb66a9c2db5.invert();
            }
         }
         _loc4_.visible = false;
      }
      
      private function _d507a509075694df0093b7ae(param1:int, param2:int, param3:MovieClip) : void
      {
         var _loc4_:BitmapData = null;
         var _loc5_:Rectangle = param3.getBounds(param3);
         this.shiftX = _loc5_.x;
         this.shiftY = _loc5_.y;
         this._0a9425f9d5de4a8f46737343.tx -= this.shiftX;
         this._0a9425f9d5de4a8f46737343.ty -= this.shiftY;
         this._05e63cf2daaf3fb66a9c2db5 = this._0a9425f9d5de4a8f46737343.clone();
         this._05e63cf2daaf3fb66a9c2db5.invert();
         var _loc6_:Matrix = new Matrix();
         _loc6_.tx = -_loc5_.x;
         _loc6_.ty = -_loc5_.y;
         var _loc7_:int = param1;
         while(_loc7_ < param1 + param2)
         {
            param3.gotoAndStop(_loc7_);
            _loc4_ = new BitmapData(param3.width,param3.height,true,0x1E0151C1 ^ 0x6BF17E61 ^ 0x33BC6D77 ^ 0x464C42D7);
            _loc4_.draw(param3,_loc6_);
            this._32c6630b755b3c3d4b37eeff.push(_loc4_);
            _loc7_++;
         }
      }
      
      public function _ce05763c87d0417ec498c3d2(param1:int) : BitmapData
      {
         return param1 in this._32c6630b755b3c3d4b37eeff ? this._32c6630b755b3c3d4b37eeff[param1] : this._32c6630b755b3c3d4b37eeff[0x799A6C69 ^ 0x2356A95F ^ 0x50FCE664 ^ 0x0A302352];
      }
      
      public function transformPoint(param1:Point) : Point
      {
         var _loc2_:int = 0x3C765E9C ^ 0x39550FA7 ^ 0x2B3ADB94 ^ -987611885;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x46429234 ^ 0x79A3B03C ^ -1197556847 ^ 0x6C442E25))
            {
               case 0:
                  if(this._0a9425f9d5de4a8f46737343 != null)
                  {
                     _loc2_ = -1664053131 ^ 0x15237D40 ^ 0x3555E577 ^ 0x579DBFFF;
                  }
                  else
                  {
                     _loc2_ = -2073747381 ^ -1998494079 ^ 0x588459AF ^ -1086609189;
                  }
                  break;
               case 1:
                  return this._0a9425f9d5de4a8f46737343.transformPoint(param1);
               case 2:
                  return param1;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _267630a818c67641d048fa59(param1:Point) : Point
      {
         var _loc2_:int = -61299897 ^ -2096351069 ^ 0x7333EDA8 ^ 0x33471078;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1402542391 ^ 0x75403C2C ^ 0x0B1BCE22 ^ -316837134))
            {
               case 0:
                  return param1;
               case 1:
                  if(this._05e63cf2daaf3fb66a9c2db5 != null)
                  {
                     _loc2_ = 0x373AAA21 ^ -1824843965 ^ -1058181978 ^ 0x5BCCB7F3;
                  }
                  else
                  {
                     _loc2_ = -1543744591 ^ -617087332 ^ -1137894058 ^ -70855090;
                  }
                  break;
               case 2:
                  return this._05e63cf2daaf3fb66a9c2db5.transformPoint(param1);
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _e90c9e6e811aaf2a48929322() : Matrix
      {
         return this._0a9425f9d5de4a8f46737343;
      }
      
      public function _83e2d7f6ff263228b6a98397() : Matrix
      {
         return this._05e63cf2daaf3fb66a9c2db5;
      }
   }
}

