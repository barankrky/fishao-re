package com.ax3.fishao.control
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class MovieList extends MovieClip
   {
      
      protected var _visibleInRow:Number = 1;
      
      protected var _pageIndex:Number = 1;
      
      protected var _list:Vector.<DisplayObject>;
      
      protected var _current:int;
      
      protected var _isChanged:Boolean;
      
      protected var _clearBackgroundFunction:Function;
      
      protected var _showBackgroundFunction:Function;
      
      protected var _isBackgroundActiveFunction:Function;
      
      protected var _width:Number = 0;
      
      public function MovieList()
      {
         super();
         this._list = new Vector.<DisplayObject>();
      }
      
      public function setList(param1:Vector.<DisplayObject>, param2:int, param3:int = -1) : void
      {
         this._list = param1;
         this._current = param2;
         if(param3 == (0x61662382 ^ -1198127085 ^ -945899490 ^ -510563216))
         {
            param3 = this._current;
         }
         this.pageIndex = this._current - param3;
         this._isChanged = true;
      }
      
      public function getList(param1:Function = null, param2:int = -1) : MovieClip
      {
         var _loc3_:DisplayObject = null;
         this._isChanged = false;
         this.clearMe();
         var _loc4_:int = 0x31B62A4A ^ -1674233519 ^ -1044144112 ^ 0x6C40B30B;
         if(this._list != null)
         {
            for each(_loc3_ in this._list)
            {
               this._width = param2 != (-1593990763 ^ -714534533 ^ 0x1DC5CFB0 ^ -1750171487) ? param2 : _loc3_.width;
               _loc3_.x = 0x63FD7D12 ^ 0x14632341 ^ -1229444586 ^ -1054444475;
               _loc3_.y = 0x193B4405 ^ -2055607560 ^ 0x6D009E13 ^ -247320338;
               if(_loc4_ > (0x2FEC8878 ^ -1681977474 ^ -105066856 ^ 0x4DEF499E))
               {
                  _loc3_.x = param2 < (-1965537010 ^ -205715194 ^ -1556239160 ^ -631706432) ? this._list[_loc4_ - 1].x + _loc3_.width : this._list[_loc4_ - 1].x + param2;
               }
               if(param1 != null)
               {
                  _loc3_.addEventListener(MouseEvent.CLICK,param1);
               }
               addChild(_loc3_);
               if(++_loc4_ == this._current)
               {
                  if(this._showBackgroundFunction != null)
                  {
                     this._showBackgroundFunction.call(this,_loc3_);
                  }
               }
            }
         }
         return this;
      }
      
      public function set clearBackgroundFunction(param1:Function) : void
      {
         this._clearBackgroundFunction = param1;
      }
      
      public function set showBackgroundFunction(param1:Function) : void
      {
         this._showBackgroundFunction = param1;
      }
      
      public function get isCurrentSelected() : Boolean
      {
         return this._isBackgroundActiveFunction.call(null,this._list[this._current - 1]);
      }
      
      public function set isBackgroundActiveFunction(param1:Function) : void
      {
         this._isBackgroundActiveFunction = param1;
      }
      
      public function get pageCount() : int
      {
         return this._list.length;
      }
      
      public function getItemById(param1:int) : DisplayObject
      {
         return this._list[param1];
      }
      
      public function getIdByItem(param1:DisplayObject) : int
      {
         return this._list.indexOf(param1);
      }
      
      public function get pageIndex() : Number
      {
         return this._pageIndex;
      }
      
      public function set pageIndex(param1:Number) : void
      {
         var _loc2_:int = -1077126375 ^ 0x6F372F12 ^ -1679410306 ^ 0x4B1D4F75;
         var _loc3_:int = 0x560680BA ^ -1697175537 ^ 0x21BDBBF6 ^ 0x60E5B345;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1573190666 ^ 0x4E66B639 ^ -691711749 ^ -1223604941))
            {
               case 0:
                  if(_loc2_ >= param1)
                  {
                     _loc3_ = -1404022362 ^ -290860094 ^ 0x6FDBFE8A ^ -1599349526;
                  }
                  else
                  {
                     _loc3_ = 0x591CB126 ^ -1370492120 ^ -1656971043 ^ -404340010;
                  }
                  break;
               case 1:
                  this._pageIndex = param1;
                  x = -860873042 ^ 0x19531B0E ^ 0x4EABAF1C ^ -1689736516;
                  _loc2_ = 0x09660F0F ^ 0x3F871B7D ^ -1191893114 ^ -1911278604;
                  _loc3_ = -1715046229 ^ -1812778822 ^ -2126144175 ^ 0x06F97547;
                  break;
               case 2:
                  x -= this._width;
                  _loc2_++;
                  _loc3_ = 0x2D3D73A8 ^ 0x21B777F0 ^ -505260718 ^ 0x60E1F10D;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set inRow(param1:Number) : void
      {
         this._visibleInRow = param1;
      }
      
      public function get current() : int
      {
         return this._current;
      }
      
      public function get list() : Vector.<DisplayObject>
      {
         return this._list;
      }
      
      public function clearBackground() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this._list)
         {
            if(this._clearBackgroundFunction != null)
            {
               this._clearBackgroundFunction.call(null,_loc1_);
            }
         }
      }
      
      public function hideInvisible() : void
      {
         var _loc1_:DisplayObject = null;
         if(this._pageIndex < (-723037510 ^ 0x16506FE5 ^ 0x45BFC804 ^ -2029456037))
         {
            return;
         }
         for each(_loc1_ in this._list)
         {
            _loc1_.visible = this._list.indexOf(_loc1_) >= this._pageIndex && this._list.indexOf(_loc1_) < this._pageIndex + this._visibleInRow;
            if(!_loc1_.visible)
            {
               if(this._clearBackgroundFunction != null)
               {
                  this._clearBackgroundFunction(_loc1_);
               }
            }
            else if(_loc1_ == this._list[this._current - 1])
            {
               if(this._showBackgroundFunction != null)
               {
                  this._showBackgroundFunction(_loc1_);
               }
            }
         }
      }
      
      protected function clearMe() : void
      {
         var _loc1_:int = -1984371128 ^ 0x75D69B00 ^ -934572799 ^ 0x67EBE857;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-521176450 ^ 0x745E4506 ^ 0x6A4C0C08 ^ -1389155476))
            {
               case 0:
                  removeChildAt(0x0648486B ^ 0x2152C7DA ^ 0x77ABED2E ^ 0x50B1629F);
                  _loc1_ = -1969198208 ^ -22386808 ^ 0x31BEEA51 ^ 0x167AFE44;
                  break;
               case 1:
                  if(numChildren <= (0x5B1A4421 ^ -750435491 ^ 0x2E912A7C ^ -1496437504))
                  {
                     _loc1_ = -1498957918 ^ -1117552325 ^ 0x6DED9814 ^ 0x25E7B692;
                  }
                  else
                  {
                     _loc1_ = 0x1E0CEAA2 ^ 0x6281884B ^ -170399420 ^ -627797071;
                  }
                  break;
               case 2:
                  _loc1_ = 0x3A40A6A2 ^ -1966707930 ^ 0x500411FF ^ -1286814618;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

