package com.ax3.fishao.locations
{
   import flash.display.DisplayObject;
   import flash.utils.Dictionary;
   
   public class FishaoZOrderList
   {
      
      private var _itemsMap:Dictionary;
      
      private var _root:FishaoZOrderListItem = null;
      
      private var _count:int = 0;
      
      public function FishaoZOrderList()
      {
         super();
         this._itemsMap = new Dictionary();
      }
      
      public function add(param1:DisplayObject) : int
      {
         var _loc2_:FishaoZOrderListItem = null;
         var _loc3_:FishaoZOrderListItem = new FishaoZOrderListItem();
         _loc3_.displayObject = param1;
         _loc3_.lastY = param1.y;
         _loc3_.name = param1.name;
         var _loc4_:int = -1;
         if(this._root == null)
         {
            this._root = _loc3_;
            this._count = 1;
            _loc4_ = 0;
         }
         else
         {
            _loc2_ = this._root;
            _loc4_ = 0;
            do
            {
               if(_loc2_.displayObject.y > _loc3_.displayObject.y)
               {
                  this.addBefore(_loc2_,_loc3_);
                  break;
               }
               if(_loc2_.next == null)
               {
                  this.addAfter(_loc2_,_loc3_);
                  _loc4_++;
                  break;
               }
               _loc2_ = _loc2_.next;
               _loc4_++;
            }
            while(_loc2_ != null);
         }
         this._itemsMap[param1] = _loc3_;
         return _loc4_;
      }
      
      private function addAfter(param1:FishaoZOrderListItem, param2:FishaoZOrderListItem) : void
      {
         if(param1.next == param2)
         {
            return;
         }
         if(param2.next != null && param2 == this._root)
         {
            this._root = param2.next;
         }
         var _loc3_:FishaoZOrderListItem = param1.next;
         this.removeFromList(param2);
         if(this._root == null)
         {
            this._root = param2;
         }
         if(_loc3_ != null)
         {
            this.linkPrevToNext(param2,_loc3_);
         }
         this.linkPrevToNext(param1,param2);
         ++this._count;
      }
      
      private function addBefore(param1:FishaoZOrderListItem, param2:FishaoZOrderListItem) : void
      {
         var _loc3_:FishaoZOrderListItem = null;
         if(param1.prev != param2)
         {
            _loc3_ = param1.prev;
            if(param1 == this._root)
            {
               this._root = param2;
            }
            this.removeFromList(param2);
            if(this._root == null)
            {
               this._root = param2;
            }
            if(_loc3_ != null)
            {
               this.linkPrevToNext(_loc3_,param2);
            }
            this.linkPrevToNext(param2,param1);
            ++this._count;
         }
      }
      
      private function removeFromList(param1:FishaoZOrderListItem) : void
      {
         var _loc2_:FishaoZOrderListItem = param1.prev;
         var _loc3_:FishaoZOrderListItem = param1.next;
         if(_loc2_ != null || _loc3_ != null)
         {
            --this._count;
         }
         if(_loc2_ != null && _loc3_ != null)
         {
            this.linkPrevToNext(_loc2_,_loc3_);
         }
         else
         {
            if(this._root == param1)
            {
               this._root = _loc3_;
            }
            if(_loc2_ != null)
            {
               _loc2_.next = null;
            }
            if(_loc3_ != null)
            {
               _loc3_.prev = null;
            }
         }
         param1.prev = null;
         param1.next = null;
      }
      
      private function linkPrevToNext(param1:FishaoZOrderListItem, param2:FishaoZOrderListItem) : void
      {
         param1.next = param2;
         param2.prev = param1;
      }
      
      public function remove(param1:DisplayObject) : void
      {
         var _loc2_:FishaoZOrderListItem = this._itemsMap[param1];
         if(_loc2_ != null)
         {
            this.removeFromList(_loc2_);
            delete this._itemsMap[param1];
         }
      }
      
      public function get iterator() : FishaoZOrderListItem
      {
         return this._root;
      }
      
      public function findNewIndex(param1:FishaoZOrderListItem) : int
      {
         var _loc2_:FishaoZOrderListItem = param1.prev;
         var _loc3_:FishaoZOrderListItem = param1.next;
         if(_loc3_ != null && _loc3_.displayObject.y < param1.displayObject.y)
         {
            if(_loc3_.next == null)
            {
               this.addAfter(_loc3_,param1);
            }
            else
            {
               while(_loc3_.next != null && _loc3_.next.displayObject.y < param1.displayObject.y)
               {
                  _loc3_ = _loc3_.next;
               }
               this.addAfter(_loc3_,param1);
            }
         }
         if(_loc2_ != null && _loc2_.displayObject.y > param1.displayObject.y)
         {
            if(_loc2_.prev == null)
            {
               this.addBefore(_loc2_,param1);
            }
            else
            {
               while(_loc2_.prev != null && _loc2_.prev.displayObject.y > param1.displayObject.y)
               {
                  _loc2_ = _loc2_.prev;
               }
               this.addBefore(_loc2_,param1);
            }
         }
         return this.getItemIndex(param1);
      }
      
      internal function getItemIndex(param1:FishaoZOrderListItem) : int
      {
         var _loc2_:int = -1;
         if(param1 != null)
         {
            do
            {
               _loc2_++;
               param1 = param1.prev;
            }
            while(param1 != null);
         }
         return _loc2_;
      }
      
      public function findListItem(param1:DisplayObject) : FishaoZOrderListItem
      {
         return this._itemsMap[param1];
      }
      
      public function getAll() : Vector.<DisplayObject>
      {
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc2_:FishaoZOrderListItem = this.iterator;
         while(_loc2_)
         {
            _loc1_.push(_loc2_.displayObject);
            _loc2_ = _loc2_.next;
         }
         return _loc1_;
      }
      
      public function reset() : void
      {
         var _loc1_:FishaoZOrderListItem = this.iterator;
         while(_loc1_)
         {
            _loc1_.lastY = -1;
            _loc1_ = _loc1_.next;
         }
      }
      
      public function desctroy() : void
      {
         var _loc1_:FishaoZOrderListItem = null;
         var _loc2_:FishaoZOrderListItem = this._root;
         while(_loc2_)
         {
            _loc1_ = _loc2_.next;
            _loc2_.prev = null;
            _loc2_.next = null;
            if(!_loc1_)
            {
               break;
            }
            _loc2_ = _loc1_;
         }
         if(this._root != null)
         {
            this._root.prev = null;
            this._root.next = null;
            this._root = null;
         }
         this._count = 0;
      }
      
      public function getCount() : int
      {
         return this._count;
      }
   }
}

