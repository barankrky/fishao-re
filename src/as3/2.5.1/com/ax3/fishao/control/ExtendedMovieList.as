package com.ax3.fishao.control
{
   import com.ax3.fishao.core.IMovieListElement;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class ExtendedMovieList extends MovieList
   {
      
      private var _maxRows:int;
      
      private var _maxInRow:int;
      
      private var _rows:int;
      
      private var _inRow:int;
      
      private var _spaceHeight:Number;
      
      private var _spaceWidth:Number;
      
      private var _vertical:Boolean;
      
      public function ExtendedMovieList(param1:int, param2:int = -1, param3:Number = 0, param4:Number = 0, param5:Boolean = false)
      {
         super();
         this._maxInRow = param1;
         this._maxRows = param2;
         this._spaceWidth = param3;
         this._spaceHeight = param4;
         this._vertical = param5;
      }
      
      override public function getList(param1:Function = null, param2:int = -1) : MovieClip
      {
         var _loc3_:int = -1773883686 ^ 0x2AF4B546 ^ 0x7DF81763 ^ -1052242689;
         var _loc4_:DisplayObject = null;
         var _loc5_:int = 0x15F8BF11 ^ -1107477114 ^ 0x3A9B9C ^ -1472259829;
         var _loc6_:int = -1570786336 ^ 0x17D19DF0 ^ -468873653 ^ 0x5183A05B;
         var _loc7_:int = -397833685 ^ -1595172318 ^ -347718117 ^ -1545327086;
         var _loc8_:int = 0x764753C9 ^ 0x29033A4B ^ 0x415F918D ^ 0x1E1BF80F;
         var _loc9_:int = -1817658555 ^ -310452168 ^ -1825908933 ^ -302216122;
         if(_isChanged || true)
         {
            _isChanged = false;
            _loc3_ = 0x175BDA85 ^ -982578689 ^ 0x032C7797 ^ -786914067;
            if(this._maxRows == (-1897266676 ^ 0x4127DAA8 ^ -1641758244 ^ -1374230905))
            {
               this._maxRows = _list.length;
            }
            if(this._maxInRow * this._maxRows < _list.length)
            {
               _loc3_ = this._maxInRow * this._maxRows;
               this._inRow = this._maxInRow;
               this._rows = this._maxRows;
            }
            if(_loc3_ == (-938755064 ^ 0x35ECB054 ^ -819389280 ^ 0x32CE10FC))
            {
               if(this._maxInRow >= this._maxRows)
               {
                  if(_list.length <= this._maxInRow)
                  {
                     this._rows = 0x5EF749D9 ^ 0x06C7047C ^ -556503422 ^ -2031869146;
                     this._inRow = _list.length;
                     _loc3_ = int(_list.length);
                  }
                  else
                  {
                     this._inRow = this._maxInRow;
                     this._rows = Math.ceil(_list.length / this._inRow);
                     _loc3_ = int(_list.length);
                  }
               }
               else
               {
                  this._inRow = this._maxInRow;
                  this._rows = Math.ceil(_list.length / this._inRow);
                  _loc3_ = int(_list.length);
               }
            }
            clearMe();
            _loc5_ = -1809457515 ^ 0x3FC183CE ^ -1676277189 ^ 0x37F25760;
            _loc7_ = 0x606412A3 ^ 0x47254C3D ^ 0x0D4E8330 ^ 0x2A0FDDAE;
            while(_loc5_ <= _loc3_)
            {
               _loc6_ = this.inCurrentRow(this._inRow,param2,_loc5_);
               _loc8_ = 0x29B192C4 ^ -1184090469 ^ 0x79978EF7 ^ -381015384;
               while(_loc8_ < _loc6_)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     break;
                  }
                  _loc4_ = _list[_loc5_];
                  _loc4_.x = -2018064783 ^ -2054139462 ^ -1273304687 ^ -1237549478;
                  _loc4_.y = 0x07C456CB ^ -1600488359 ^ -1243867822 ^ 0x12823FC0;
                  if(_loc8_ > (-1328874906 ^ 0x3AB9D74C ^ 0x21E4B9E9 ^ -1416129341))
                  {
                     _loc4_.x = _list[_loc5_ - 1].x + _loc4_.width + this._spaceWidth;
                  }
                  if(_loc7_ > (0x791A26AB ^ -1802843728 ^ -2127483706 ^ 0x6CA1C3DD))
                  {
                     _loc4_.y = (_loc4_.height + this.getSpaceHeight(_loc4_.height)) * _loc7_;
                  }
                  if(param1 != null)
                  {
                     _loc4_.addEventListener(MouseEvent.CLICK,param1);
                  }
                  addChild(_loc4_);
                  _loc9_ = IMovieListElement(_loc4_).getCurrentElementIdex() != (-580187586 ^ 0x7D9515F7 ^ 0x3D0D9922 ^ 0x620C7914) ? int(IMovieListElement(_loc4_).getCurrentElementIdex() - 1) : _loc5_;
                  if(_loc9_ == _current)
                  {
                     if(_showBackgroundFunction != null)
                     {
                        _showBackgroundFunction.call(null,_loc4_);
                     }
                  }
                  _loc5_++;
                  _loc8_++;
               }
               if(_loc5_ >= _loc3_)
               {
                  break;
               }
               _loc7_++;
            }
         }
         return this;
      }
      
      private function inCurrentRow(param1:int, param2:Number, param3:int) : int
      {
         var _loc4_:DisplayObject = null;
         if(param2 == (0x77AA9085 ^ -554941527 ^ -277797450 ^ -1178072731))
         {
            return param1;
         }
         var _loc5_:int = 0x5457E8C0 ^ 0x79BF4299 ^ -91664093 ^ -681444486;
         var _loc6_:int = 0x01EB9F00 ^ 0x43BF7E17 ^ -180706602 ^ -1217510463;
         while(_loc6_ < param1)
         {
            if(_list.length <= param3 + _loc6_)
            {
               return _loc6_;
            }
            _loc4_ = _list[param3 + _loc6_];
            _loc5_ += _loc4_.width + this._spaceWidth;
            if(_loc5_ >= param2)
            {
               return _loc6_;
            }
            _loc6_++;
         }
         return param1;
      }
      
      override public function set pageIndex(param1:Number) : void
      {
         var _loc2_:int = -223771561 ^ -344636326 ^ 0x178BBCD7 ^ 0x0E577CDA;
         var _loc3_:int = -1895633288 ^ -1851230006 ^ -1115882499 ^ 0x1604E63E;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x172BA51D ^ 0x5DBE9363 ^ -2019688503 ^ 0x78DA42C3))
            {
               case 0:
                  return;
               case 1:
                  y -= _list[_loc2_].height + this.getSpaceHeight(_list[_loc2_].height);
                  _loc3_ = 0x184CA7EA ^ -1466487287 ^ -1712323624 ^ -1661402805;
                  break;
               case 2:
                  _pageIndex = param1;
                  y = 0x3C12284A ^ 0x0CB76E24 ^ 0x3957FACD ^ 0x09F2BCA3;
                  _loc2_ = -1256412634 ^ -391818554 ^ 0x3F98C170 ^ 0x62213990;
                  _loc3_ = 0x1AF496EB ^ 0x15CA74DD ^ -1937954065 ^ 0x369143AA;
                  break;
               case 3:
                  if(_loc2_ in _list)
                  {
                     _loc3_ = 0x608AD6E5 ^ 0x6E49BEC7 ^ 0x351D5966 ^ -1911768527;
                  }
                  else
                  {
                     _loc3_ = -521480183 ^ 0x73DDCB7E ^ -733267037 ^ -223435868;
                  }
                  break;
               case 4:
                  _loc2_++;
                  _loc3_ = -199927555 ^ 0x733C8E71 ^ 0x23E6193C ^ 0x111D44C3;
                  break;
               case 5:
                  _loc2_ = -1586697739 ^ -1256380195 ^ -732399189 ^ -1071007613;
                  if(!this._vertical)
                  {
                     _loc3_ = 0x17D70C1C ^ 0x7A882068 ^ -781205316 ^ 0x09E267BA;
                  }
                  else
                  {
                     _loc3_ = -1533221968 ^ 0x28ABC353 ^ 0x2A5CCA2D ^ 0x13B961B8;
                  }
                  break;
               case 6:
                  super.pageIndex = param1;
                  _loc3_ = 0x381CA1CC ^ 0x33A1FA19 ^ 0x7FFFF138 ^ -1047518823;
                  break;
               case 7:
                  if(_loc2_ >= param1)
                  {
                     _loc3_ = 0x299B20D9 ^ -1162669032 ^ 0x782A977B ^ 0x5ED028CE;
                  }
                  else
                  {
                     _loc3_ = 0x57111B2C ^ -1946098905 ^ 0x34CBB363 ^ 0x5A08C01F;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function getSpaceHeight(param1:Number) : Number
      {
         return this._spaceHeight;
      }
      
      public function scrollTo(param1:int, param2:int) : void
      {
         _current = param1;
         this.pageIndex = param2;
      }
   }
}

