package com.ax3.display.rod
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display._473832fc48e3c8aba3f6d2fe;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class _fcb1e5cb10188f7ad7e018e5 extends Sprite
   {
      
      private var _cde049662d8d7faba287d396:int = 2147483647;
      
      private const _0aa9b94c6e1d580c4ea29848:int = 2000;
      
      private var _asset:Shape = new Shape();
      
      private var _46936d2a82923d2d20a8a533:_64fa9ea58e494c68f2b89dbc = _64fa9ea58e494c68f2b89dbc.create();
      
      private var _7468cda4f7d9e97a0bb9ec14:_473832fc48e3c8aba3f6d2fe = new _473832fc48e3c8aba3f6d2fe();
      
      private var _0db863f074cb421654bf2081:uint = 30;
      
      public function _fcb1e5cb10188f7ad7e018e5(param1:_473832fc48e3c8aba3f6d2fe)
      {
         super();
         name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剆劏刓劾劺勢刕刱刔初別剂剝劦判劀","剌劚勱劣剋劫勊刪勫勎劆剃刈剀剽勼");
         this._7468cda4f7d9e97a0bb9ec14 = param1;
      }
      
      public function get lineStyle() : _473832fc48e3c8aba3f6d2fe
      {
         return this._7468cda4f7d9e97a0bb9ec14;
      }
      
      public function create() : void
      {
         addChild(this._asset);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:uint = uint(-2104875832 ^ -568646515 ^ -1030326924 ^ -1643678415);
         this._46936d2a82923d2d20a8a533.Update();
         if(getTimer() - this._cde049662d8d7faba287d396 <= this._0aa9b94c6e1d580c4ea29848)
         {
            this._46936d2a82923d2d20a8a533._1a9f43b4d2b73acfb92aa852();
            this._46936d2a82923d2d20a8a533._c9d9b73dedb717892c672a4f();
            _loc2_ = Boolean(this._46936d2a82923d2d20a8a533._08522b9a2cf103944b2a0d7b(Math.max(-1764530402 ^ -422495874 ^ 0x3D7A4A9F ^ 0x4D7814FE,Math.round(param1))));
            this._asset.cacheAsBitmap = false;
            this._asset.graphics.clear();
            this._asset.graphics.lineStyle(this._7468cda4f7d9e97a0bb9ec14.thickness,this._7468cda4f7d9e97a0bb9ec14.color,this._7468cda4f7d9e97a0bb9ec14.alpha,this._7468cda4f7d9e97a0bb9ec14.pixelHinting,this._7468cda4f7d9e97a0bb9ec14.scaleMode,this._7468cda4f7d9e97a0bb9ec14.caps,this._7468cda4f7d9e97a0bb9ec14.joints,this._7468cda4f7d9e97a0bb9ec14.miterLimit);
            this._asset.graphics.moveTo(this._46936d2a82923d2d20a8a533.startPointX,this._46936d2a82923d2d20a8a533.startPointY);
            _loc3_ = uint(0x1E78E10F ^ -847042676 ^ 0x2874E9CC ^ -74502321);
            while(_loc3_ <= this._0db863f074cb421654bf2081)
            {
               this._asset.graphics.lineTo(this._46936d2a82923d2d20a8a533._3ba19ac3bf2f99b3b6f744b6(_loc3_),this._46936d2a82923d2d20a8a533._d5c304bada4ad7c1f0b16683(_loc3_));
               _loc3_++;
            }
            if(_loc2_)
            {
               this._e793d8e60eaab3c87ec6013c();
            }
            this._asset.graphics.lineTo(this._46936d2a82923d2d20a8a533.endPointX,this._46936d2a82923d2d20a8a533.endPointY);
            if(getTimer() - this._cde049662d8d7faba287d396 > this._0aa9b94c6e1d580c4ea29848)
            {
               this._asset.cacheAsBitmap = true;
            }
         }
      }
      
      public function _e793d8e60eaab3c87ec6013c() : void
      {
         this._cde049662d8d7faba287d396 = getTimer();
      }
      
      public function set startPointX(param1:int) : void
      {
         var _loc2_:int = 0x5E5C2D9D ^ -148795124 ^ 0x7C187737 ^ 0x65812D49;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5698BEAF ^ 0x54985886 ^ -442591721 ^ 0x577A96D3))
            {
               case 0:
                  this._46936d2a82923d2d20a8a533.startPointX = param1;
                  this._cde049662d8d7faba287d396 = getTimer();
                  _loc2_ = -1631183905 ^ 0x3BECF46C ^ 0x4A02DDAE ^ 0x5FCCD4F1;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._46936d2a82923d2d20a8a533.startPointX != param1)
                  {
                     _loc2_ = 0x65A6ABA0 ^ 0x0A0E99AA ^ -199077007 ^ 0x2B6E8796;
                  }
                  else
                  {
                     _loc2_ = -1491671792 ^ 0x5DA3852C ^ 0x4B85DC89 ^ 0x01D45A59;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set startPointY(param1:int) : void
      {
         var _loc2_:int = -1438125226 ^ -2114424247 ^ 0x53ED425F ^ 0x0D05B7EB;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-8041814 ^ 0x6D5C5921 ^ 0x1BCF4341 ^ -62839709))
            {
               case 0:
                  this._46936d2a82923d2d20a8a533.startPointY = param1;
                  this._cde049662d8d7faba287d396 = getTimer();
                  _loc2_ = 0x197E8BDE ^ 0x36F3CA8F ^ -1019249249 ^ -1713026970;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._46936d2a82923d2d20a8a533.startPointY != param1)
                  {
                     _loc2_ = 0x03BA19DE ^ 0x33C6711C ^ 0x6CE6ECB3 ^ 0x29CDF0D8;
                  }
                  else
                  {
                     _loc2_ = 0x5E5A6599 ^ -681742942 ^ -778835775 ^ 0x2DC39452;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get startPointX() : int
      {
         return this._46936d2a82923d2d20a8a533.startPointX;
      }
      
      public function get startPointY() : int
      {
         return this._46936d2a82923d2d20a8a533.startPointY;
      }
      
      public function set endPointX(param1:int) : void
      {
         var _loc2_:int = -60869483 ^ 0x204D3A38 ^ 0x74377BCC ^ 0x43775BA2;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-352881645 ^ 0x2D2F0476 ^ -568281283 ^ -223680103))
            {
               case 0:
                  this._46936d2a82923d2d20a8a533.endPointX = param1;
                  this._cde049662d8d7faba287d396 = getTimer();
                  _loc2_ = 0x7BEDEF62 ^ 0x44BC3F93 ^ 0x5625AD63 ^ -2111417518;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._46936d2a82923d2d20a8a533.endPointX != param1)
                  {
                     _loc2_ = 0x0807D6A1 ^ 0x0A40EF ^ 0x7B796D3F ^ -1742285392;
                  }
                  else
                  {
                     _loc2_ = -2118741523 ^ 0x3152490E ^ 0x07BBDC9B ^ 0x5C0D2AB8;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set endPointY(param1:int) : void
      {
         var _loc2_:int = -845638310 ^ 0x351D8F96 ^ -1169767247 ^ 0x313EE7C8;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-814315097 ^ 0x0ACD0937 ^ 0x5BA2FC10 ^ -303807177))
            {
               case 0:
                  return;
               case 1:
                  this._46936d2a82923d2d20a8a533.endPointY = param1;
                  this._cde049662d8d7faba287d396 = getTimer();
                  _loc2_ = -1359047850 ^ -1303990267 ^ 0x6907186A ^ 0x0642028E;
                  break;
               case 2:
                  if(this._46936d2a82923d2d20a8a533.endPointY != param1)
                  {
                     _loc2_ = -357062029 ^ 0x7B4F6FC1 ^ -2060678303 ^ 0x67297765;
                  }
                  else
                  {
                     _loc2_ = 0x2E5160A1 ^ 0x5D1B473C ^ 0x0C934677 ^ 0x0C24585D;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get endPointX() : int
      {
         return this._46936d2a82923d2d20a8a533.endPointX;
      }
      
      public function get endPointY() : int
      {
         return this._46936d2a82923d2d20a8a533.endPointY;
      }
      
      public function set flexibilityCoef(param1:Number) : void
      {
         this._46936d2a82923d2d20a8a533.flexibilityCoef = param1;
      }
      
      public function set autoLengthCoef(param1:int) : void
      {
         this._46936d2a82923d2d20a8a533.autoLengthCoef = param1;
      }
      
      public function get lastButOneX() : Number
      {
         return this._46936d2a82923d2d20a8a533._3ba19ac3bf2f99b3b6f744b6(this._0db863f074cb421654bf2081 - (-1183366424 ^ 0x79BE056F ^ 0x2AEFA81C ^ -366547047));
      }
      
      public function get lastButOneY() : Number
      {
         return this._46936d2a82923d2d20a8a533._d5c304bada4ad7c1f0b16683(this._0db863f074cb421654bf2081 - (0x57168A61 ^ -194969998 ^ 0x495200A3 ^ -366709582));
      }
      
      public function set lastChangeTsMS(param1:int) : void
      {
         this._cde049662d8d7faba287d396 = param1;
      }
   }
}

