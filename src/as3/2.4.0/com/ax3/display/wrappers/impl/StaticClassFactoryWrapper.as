package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IItemFactory;
   import com.ax3.utils.DisplayObjectUtil;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class StaticClassFactoryWrapper implements IItemFactory
   {
      
      private var _itemWrapperClass:Class;
      
      private var _itemAssetClass:Class;
      
      public function StaticClassFactoryWrapper(param1:Class, param2:Class = null)
      {
         super();
         this._itemAssetClass = param1;
         this._itemWrapperClass = param2;
      }
      
      public function createInstance(param1:Boolean = false) : DisplayObject
      {
         var _loc2_:IAssetWrapper = null;
         var _loc3_:* = new this._itemAssetClass();
         if(_loc3_ is DisplayObjectContainer)
         {
            DisplayObjectUtil.processTextFieldBold(_loc3_);
         }
         if(this._itemWrapperClass)
         {
            _loc2_ = new this._itemWrapperClass();
            _loc2_.process(_loc3_);
            _loc3_ = _loc2_;
         }
         return _loc3_;
      }
      
      public function process(param1:DisplayObject) : void
      {
      }
   }
}

