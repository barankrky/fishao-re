package com.ax3.fishao.view.wrappers.impl.profile.profileControls
{
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.*;
   import flash.display.DisplayObject;
   
   public class ElementsFactory implements IElementsFactory
   {
      
      private var _elementsFactory:SwfFactoryWrapper;
      
      private var _dataObjectsList:Vector.<Object>;
      
      public function ElementsFactory(param1:SwfFactoryWrapper)
      {
         super();
         this._elementsFactory = param1;
         this.elements = new Vector.<Object>();
      }
      
      public function set elements(param1:Vector.<Object>) : void
      {
         this._dataObjectsList = param1;
      }
      
      public function getElements(param1:Number, param2:Number) : Vector.<DisplayObject>
      {
         var _loc3_:IPagesElement = null;
         var _loc4_:Number = param1 + param2;
         var _loc5_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         if(param1 < 0 || param2 < 0)
         {
            return _loc5_;
         }
         var _loc6_:Number = param1;
         while(_loc6_ < this._dataObjectsList.length && _loc6_ < _loc4_)
         {
            _loc3_ = IPagesElement(this._elementsFactory.createInstance());
            _loc3_.elementData = this._dataObjectsList[_loc6_];
            _loc5_.push(_loc3_);
            _loc6_++;
         }
         return _loc5_;
      }
      
      public function get totalElements() : Number
      {
         return this._dataObjectsList.length;
      }
   }
}

