package com.ax3.managers
{
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class DisplayObjectGridManager
   {
      
      private var _grid:Dictionary = new Dictionary();
      
      private var _cellWidth:int;
      
      private var _cellHeight:int;
      
      public function DisplayObjectGridManager(param1:int, param2:int)
      {
         super();
         this._cellWidth = param1;
         this._cellHeight = param2;
      }
      
      public function addDisplayObject(param1:DisplayObject, param2:Rectangle = null) : void
      {
         var _loc3_:GridManagerObject = new GridManagerObject();
         _loc3_.data = param1;
         if(param2 == null)
         {
            _loc3_.rect = new Rectangle(param1.x,param1.y,param1.width,param1.height);
         }
         else
         {
            _loc3_.rect = param2;
         }
         this.addToCellsOfObject(_loc3_);
      }
      
      private function addToCellsOfObject(param1:GridManagerObject) : void
      {
         var _loc2_:GridManagerCell = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = param1.rect.left / this._cellWidth;
         var _loc6_:int = param1.rect.right / this._cellWidth;
         var _loc7_:int = param1.rect.top / this._cellHeight;
         var _loc8_:int = param1.rect.bottom / this._cellHeight;
         if(_loc5_ != _loc6_ || _loc7_ != _loc8_)
         {
            _loc3_ = _loc5_;
            while(_loc3_ <= _loc6_)
            {
               _loc4_ = _loc7_;
               while(_loc4_ <= _loc8_)
               {
                  _loc2_ = this.getCellAt(_loc3_,_loc4_);
                  param1.cells.push(_loc2_);
                  _loc2_.push(param1);
                  _loc4_++;
               }
               _loc3_++;
            }
         }
         else
         {
            _loc2_ = this.getCellAt(_loc5_,_loc7_);
            param1.cells.push(_loc2_);
            _loc2_.push(param1);
         }
      }
      
      private function getCellAt(param1:int, param2:int) : GridManagerCell
      {
         if(this._grid[param1 + "-" + param2] == null)
         {
            this._grid[param1 + "-" + param2] = new GridManagerCell(param1,param2);
         }
         return this._grid[param1 + "-" + param2];
      }
      
      private function hasObjectAt(param1:int, param2:int) : Boolean
      {
         var _loc3_:* = undefined;
         if(String(param1 + "-" + param2) in this._grid)
         {
            _loc3_ = this._grid[param1 + "-" + param2];
            return _loc3_ is GridManagerCell && GridManagerCell(_loc3_).objects != null && GridManagerCell(_loc3_).objects.length > 0;
         }
         return false;
      }
      
      public function getFirstObjectAt(param1:Number, param2:Number, param3:int) : GridManagerObject
      {
         var _loc4_:GridManagerCell = null;
         var _loc5_:GridManagerObject = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Number = 1;
         if(param3 > 0)
         {
            _loc8_ = param3 / 2;
         }
         var _loc9_:Rectangle = new Rectangle(param1 - _loc8_,param2 - _loc8_,param3,param3);
         var _loc10_:int = (param1 - _loc8_) / this._cellWidth;
         var _loc11_:int = (param1 + _loc8_) / this._cellWidth;
         var _loc12_:int = (param2 - _loc8_) / this._cellHeight;
         var _loc13_:int = (param2 + _loc8_) / this._cellHeight;
         if(_loc10_ != _loc11_ || _loc12_ != _loc13_)
         {
            _loc6_ = _loc10_;
            loop0:
            while(_loc6_ <= _loc11_)
            {
               _loc7_ = _loc12_;
               loop2:
               while(true)
               {
                  if(_loc7_ > _loc13_)
                  {
                     _loc6_++;
                     continue loop0;
                  }
                  if(this.hasObjectAt(_loc6_,_loc7_))
                  {
                     _loc4_ = this.getCellAt(_loc6_,_loc7_);
                     if(_loc4_.objects.length > 0)
                     {
                        for each(_loc5_ in _loc4_.objects)
                        {
                           if(_loc5_.rect.intersects(_loc9_))
                           {
                              break loop2;
                           }
                        }
                     }
                  }
                  _loc7_++;
               }
               return _loc5_;
            }
         }
         else if(this.hasObjectAt(_loc10_,_loc12_))
         {
            _loc4_ = this.getCellAt(_loc10_,_loc12_);
            if(_loc4_.objects.length > 0)
            {
               for each(_loc5_ in _loc4_.objects)
               {
                  if(_loc5_.rect.intersects(_loc9_))
                  {
                     return _loc5_;
                  }
               }
            }
         }
         return null;
      }
      
      public function removeObject(param1:GridManagerObject) : void
      {
         var _loc2_:GridManagerCell = null;
         for each(_loc2_ in param1.cells)
         {
            _loc2_.remove(param1);
         }
      }
      
      public function getAll() : Vector.<GridManagerObject>
      {
         var _loc1_:GridManagerCell = null;
         var _loc2_:GridManagerObject = null;
         var _loc3_:Vector.<GridManagerObject> = new Vector.<GridManagerObject>();
         for each(_loc1_ in this._grid)
         {
            for each(_loc2_ in _loc1_.objects)
            {
               if(_loc3_.indexOf(_loc2_) == -1)
               {
                  _loc3_.push(_loc2_);
               }
            }
         }
         return _loc3_;
      }
      
      public function destroy() : void
      {
         var _loc1_:GridManagerCell = null;
         var _loc2_:GridManagerObject = null;
         for each(_loc1_ in this._grid)
         {
            for each(_loc2_ in _loc1_.objects)
            {
               _loc2_.destroy();
            }
            _loc1_.objects = null;
         }
         this._grid = null;
      }
   }
}

