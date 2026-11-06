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
         if(param3 == -1)
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
         var _loc4_:int = 0;
         if(this._list != null)
         {
            for each(_loc3_ in this._list)
            {
               this._width = param2 != -1 ? param2 : _loc3_.width;
               _loc3_.x = 0;
               _loc3_.y = 0;
               if(_loc4_ > 0)
               {
                  _loc3_.x = param2 < 0 ? this._list[_loc4_ - 1].x + _loc3_.width : this._list[_loc4_ - 1].x + param2;
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
         this._pageIndex = param1;
         x = 0;
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            x -= this._width;
            _loc2_++;
         }
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
         if(this._pageIndex < 0)
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
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
   }
}

