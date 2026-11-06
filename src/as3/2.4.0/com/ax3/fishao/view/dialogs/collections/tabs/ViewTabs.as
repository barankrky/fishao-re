package com.ax3.fishao.view.dialogs.collections.tabs
{
   import com.ax3.fishao.core.IDisposable;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class ViewTabs extends ViewBase
   {
      
      private var _source:DisplayObjectContainer = new Sprite();
      
      private var _items:Array;
      
      private var _tabActiveIndex:uint;
      
      public function ViewTabs(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function get items() : Array
      {
         return this._items;
      }
      
      public function set tabActiveIndex(param1:uint) : void
      {
         this._tabActiveIndex = param1;
         this.updateActiveTab();
      }
      
      public function get tabActiveIndex() : uint
      {
         return this._tabActiveIndex;
      }
      
      public function set tabActiveLabel(param1:String) : void
      {
         this._tabActiveIndex = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this._items.length)
         {
            if((this._items[_loc2_] as ViewButtonTab).label == param1)
            {
               this._tabActiveIndex = _loc2_;
            }
            _loc2_++;
         }
         this.updateActiveTab();
      }
      
      public function get tabActiveLabel() : String
      {
         return (this._items[this._tabActiveIndex] as ViewButtonTab).label;
      }
      
      private function init() : void
      {
         this._items = [];
         this._tabActiveIndex = 0;
      }
      
      public function addTab(param1:String) : void
      {
         var _loc2_:ViewButtonTab = new ViewButtonTab(controller);
         this._source.addChildAt(_loc2_.source,0);
         _loc2_.label = param1;
         this._items.push(_loc2_);
         this.placeTabs();
         this.updateActiveTab();
      }
      
      public function removeTab(param1:uint) : void
      {
         var _loc2_:ViewButtonTab = this._items[param1];
         this._source.removeChild(_loc2_.source);
         this._items.splice(param1,1);
         this.placeTabs();
         this.updateActiveTab();
      }
      
      private function placeTabs() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:ViewButtonTab = null;
         _loc1_ = -23;
         var _loc3_:Number = _loc1_;
         var _loc4_:int = 0;
         while(_loc4_ < this._items.length)
         {
            _loc2_ = this._items[_loc4_];
            _loc2_.source.x = _loc3_;
            _loc3_ += _loc2_.source.width + _loc1_;
            _loc4_++;
         }
      }
      
      private function updateActiveTab() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:ViewButtonTab = null;
         var _loc5_:int = 0;
         while(_loc5_ < this._items.length)
         {
            _loc1_ = _loc5_ + 1 < this._items.length;
            _loc2_ = _loc5_ + 1 == this._tabActiveIndex;
            _loc3_ = _loc5_ == this._tabActiveIndex;
            _loc4_ = this._items[_loc5_];
            _loc4_.setActive(_loc3_,_loc1_,_loc2_);
            _loc5_++;
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:IDisposable = null;
         for each(_loc1_ in this._items)
         {
            _loc1_.cleanup();
         }
         this._items = null;
         super.cleanup();
      }
   }
}

