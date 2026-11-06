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
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         if(_isChanged || true)
         {
            _isChanged = false;
            _loc3_ = 0;
            if(this._maxRows == -1)
            {
               this._maxRows = _list.length;
            }
            if(this._maxInRow * this._maxRows < _list.length)
            {
               _loc3_ = this._maxInRow * this._maxRows;
               this._inRow = this._maxInRow;
               this._rows = this._maxRows;
            }
            if(_loc3_ == 0)
            {
               if(this._maxInRow >= this._maxRows)
               {
                  if(_list.length <= this._maxInRow)
                  {
                     this._rows = 1;
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
            _loc5_ = 0;
            _loc7_ = 0;
            while(_loc5_ <= _loc3_)
            {
               _loc6_ = this.inCurrentRow(this._inRow,param2,_loc5_);
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     break;
                  }
                  _loc4_ = _list[_loc5_];
                  _loc4_.x = 0;
                  _loc4_.y = 0;
                  if(_loc8_ > 0)
                  {
                     _loc4_.x = _list[_loc5_ - 1].x + _loc4_.width + this._spaceWidth;
                  }
                  if(_loc7_ > 0)
                  {
                     _loc4_.y = (_loc4_.height + this.getSpaceHeight(_loc4_.height)) * _loc7_;
                  }
                  if(param1 != null)
                  {
                     _loc4_.addEventListener(MouseEvent.CLICK,param1);
                  }
                  addChild(_loc4_);
                  _loc9_ = IMovieListElement(_loc4_).getCurrentElementIdex() != -1 ? int(IMovieListElement(_loc4_).getCurrentElementIdex() - 1) : _loc5_;
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
         if(param2 == -1)
         {
            return param1;
         }
         var _loc5_:int = 0;
         var _loc6_:int = 0;
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
         var _loc2_:int = 0;
         if(!this._vertical)
         {
            super.pageIndex = param1;
         }
         else
         {
            _pageIndex = param1;
            y = 0;
            _loc2_ = 0;
            while(_loc2_ < param1)
            {
               if(_loc2_ in _list)
               {
                  y -= _list[_loc2_].height + this.getSpaceHeight(_list[_loc2_].height);
               }
               _loc2_++;
            }
         }
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

