package com.ax3.fishao.locations
{
   import com.ax3.fishao.Config;
   import com.ax3.utils.drawing.drawLine;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class FishaoZSorter
   {
      
      private var _target:DisplayObjectContainer;
      
      private var _zOrderList:FishaoZOrderList;
      
      public function FishaoZSorter(param1:DisplayObjectContainer)
      {
         super();
         this._target = param1;
         this._zOrderList = new FishaoZOrderList();
      }
      
      public function getAll() : Vector.<DisplayObject>
      {
         return this._zOrderList.getAll();
      }
      
      public function isHandled(param1:DisplayObject) : Boolean
      {
         return param1.parent != null && param1.parent == this._target;
      }
      
      public function handleAddChild(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = this._zOrderList.add(param1);
         if(param1 is Sprite)
         {
            _loc2_ = Sprite(param1).getBounds(param1);
            if(Config.DEBUG_DRAW_ISO_LINE)
            {
               drawLine(Sprite(param1),_loc2_.x,0,_loc2_.width,0,4286906112,1);
            }
         }
         this._target.addChildAt(param1,_loc3_);
      }
      
      public function handleRemoveChild(param1:DisplayObject) : void
      {
         this._zOrderList.remove(param1);
         this._target.removeChild(param1);
      }
      
      public function update() : void
      {
         var _loc1_:Vector.<DisplayObject> = null;
         var _loc2_:DisplayObject = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:DisplayObject = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:FishaoZOrderListItem = this._zOrderList.iterator;
         var _loc9_:int = this._zOrderList.getCount();
         if(_loc9_ < this._target.numChildren)
         {
            _loc1_ = new Vector.<DisplayObject>();
            _loc4_ = int(this._target.numChildren - 1);
            while(_loc4_ >= 0)
            {
               _loc2_ = this._target.getChildAt(_loc4_);
               if(this._zOrderList.findListItem(_loc2_) == null)
               {
                  _loc1_.push(_loc2_);
               }
               _loc4_--;
            }
            for each(_loc2_ in _loc1_)
            {
               this.handleAddChild(_loc2_);
            }
         }
         else if(_loc9_ > this._target.numChildren)
         {
            _loc1_ = Vector.<DisplayObject>(this._zOrderList.getAll().concat());
            for each(_loc5_ in _loc1_)
            {
               if(_loc5_.parent != this._target)
               {
                  this._zOrderList.remove(_loc5_);
               }
            }
         }
         while(_loc8_)
         {
            if(_loc8_.displayObject.y != _loc8_.lastY)
            {
               if(_loc3_ == null)
               {
                  _loc3_ = [];
               }
               _loc3_.push(_loc8_);
            }
            else if(_loc8_.prev != null && _loc8_.prev.displayObject.y > _loc8_.displayObject.y)
            {
               if(_loc3_ == null)
               {
                  _loc3_ = [];
               }
               if(_loc3_.indexOf(_loc8_.prev) == -1)
               {
                  _loc3_.push(_loc8_.prev);
               }
            }
            _loc8_ = _loc8_.next;
         }
         if(_loc3_)
         {
            for each(_loc8_ in _loc3_)
            {
               _loc6_ = this._zOrderList.getItemIndex(_loc8_);
               _loc7_ = this._zOrderList.findNewIndex(_loc8_);
               _loc8_.lastY = _loc8_.displayObject.y;
               if(_loc6_ != _loc7_ && _loc7_ != -1)
               {
                  this._target.addChildAt(_loc8_.displayObject,_loc7_);
               }
            }
         }
      }
      
      public function fullUpdate() : void
      {
         this._zOrderList.reset();
         if(this._target.stage != null)
         {
            this._target.stage.invalidate();
         }
         this.update();
      }
      
      public function destroy() : void
      {
         this._target = null;
         this._zOrderList.desctroy();
      }
   }
}

