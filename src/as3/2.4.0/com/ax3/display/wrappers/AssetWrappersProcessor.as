package com.ax3.display.wrappers
{
   import com.ax3.core.App;
   import com.ax3.errors.OverrideMethodError;
   import com.ax3.utils.DisplayObjectUtil;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   import flash.utils.*;
   
   public class AssetWrappersProcessor implements IAssetWrappersProcessor
   {
      
      private var _removeList:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      private var _app:App;
      
      private var _swfFileName:String;
      
      public function AssetWrappersProcessor()
      {
         super();
      }
      
      public function configurateFactory(param1:App, param2:String) : void
      {
         this._app = param1;
         this._swfFileName = param2;
      }
      
      public function process(param1:DisplayObjectContainer, param2:Object = null) : void
      {
         DisplayObjectUtil.processTextFieldBold(param1);
         this.processChildren(param1,param2);
         this.onComplete();
      }
      
      private function onComplete() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this._removeList)
         {
            if(_loc1_ != null && _loc1_.parent != null)
            {
               _loc1_.parent.removeChild(_loc1_);
            }
         }
      }
      
      public function processChildren(param1:DisplayObjectContainer, param2:Object = null) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:Number = param1.numChildren;
         var _loc5_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_.push(param1.getChildAt(_loc6_));
            _loc6_++;
         }
         for each(_loc3_ in _loc5_)
         {
            if(_loc3_.name != null && _loc3_.name != "")
            {
               this.processWrapper(_loc3_,param2);
            }
            else if(_loc3_ is TextField)
            {
               this.processTextField(TextField(_loc3_));
            }
            else if(_loc3_ is DisplayObjectContainer)
            {
               this.processChildren(DisplayObjectContainer(_loc3_),param2);
            }
         }
      }
      
      private function getClassOfInstanceInMap(param1:String, param2:Object) : Class
      {
         var instanceName:String = param1;
         var instanceMap:Object = param2;
         var instanceMapDescription:XML = null;
         var variables:XMLList = null;
         var variableClassName:String = null;
         instanceMapDescription = describeType(instanceMap);
         variables = instanceMapDescription.variable.(@name == instanceName);
         variableClassName = variables[0].@type;
         return this.getDefinition(variableClassName);
      }
      
      private function processInstanceLink(param1:String, param2:Object, param3:Object) : void
      {
         if(Boolean(param3) && param1 in param3)
         {
            param3[param1] = param2;
         }
      }
      
      protected function processWrapper(param1:DisplayObject, param2:Object = null) : void
      {
         var _loc3_:Class = null;
         var _loc4_:IAssetWrapper = null;
         var _loc5_:String = param1.name;
         if(this.isMacros(_loc5_))
         {
            this.executeMacros(_loc5_.slice(1),param1,param2);
         }
         else if(param2 != null && _loc5_ in param2 && param2[_loc5_] == null)
         {
            _loc3_ = this.getClassOfInstanceInMap(_loc5_,param2);
            if(this.isAssetWrapperClass(_loc3_))
            {
               _loc4_ = new _loc3_();
               _loc4_.process(param1);
               this.processInstanceLink(_loc5_,_loc4_,param2);
               if(_loc4_ is IAssetWrapperWithFactory)
               {
                  IAssetWrapperWithFactory(_loc4_).initialize(this._app,this._swfFileName);
               }
               if(_loc4_ is IAssetWrapperRecursive && param1 is DisplayObjectContainer)
               {
                  this.processChildren(DisplayObjectContainer(param1),_loc4_);
                  IAssetWrapperRecursive(_loc4_).onAssetProcessComplete();
               }
            }
            else
            {
               if(!(param1 is _loc3_))
               {
                  throw new Error("Unknown display object \'" + _loc5_ + "\' for wrapper class \'" + _loc3_ + "\'");
               }
               this.processInstanceLink(_loc5_,param1,param2);
            }
         }
         if(param1 is DisplayObjectContainer)
         {
            this.processChildren(DisplayObjectContainer(param1),param2);
         }
      }
      
      private function executeMacros(param1:String, param2:DisplayObject, param3:Object) : void
      {
         switch(param1)
         {
            case "remove":
               this._removeList.push(param2);
         }
      }
      
      private function isMacros(param1:String) : Boolean
      {
         return param1 != null && param1.length > 0 && param1.charAt(0) == "$";
      }
      
      private function isAssetWrapperClass(param1:Class) : Boolean
      {
         var cls:Class = param1;
         return describeType(cls).factory.implementsInterface.(@type == getQualifiedClassName(IAssetWrapper)).length() != 0;
      }
      
      protected function processTextField(param1:TextField) : void
      {
      }
      
      protected function fontNameMap(param1:String) : String
      {
         return param1;
      }
      
      protected function hasDefinition(param1:String) : Boolean
      {
         throw new OverrideMethodError();
      }
      
      protected function getDefinition(param1:String) : Class
      {
         throw new OverrideMethodError();
      }
   }
}

