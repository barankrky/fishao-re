package com.ax3.display.wrappers.impl
{
   import com.ax3.core.IResourceManager;
   import com.ax3.display.lists.IListItem;
   import com.ax3.display.lists.IListItemFactory;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IItemFactory;
   import com.ax3.utils.DisplayObjectUtil;
   import com.ax3.utils.log.globalLogger;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getQualifiedClassName;
   
   public class SwfFactoryWrapper implements IAssetWrapper, IItemFactory, IListItemFactory
   {
      
      private var _child:DisplayObject;
      
      public var resourceManager:IResourceManager;
      
      public var swfResourceAlias:String;
      
      public var itemWrapperClass:Class;
      
      public function SwfFactoryWrapper(param1:IResourceManager = null, param2:String = null, param3:Class = null)
      {
         super();
         this.config(param1,param2,param3);
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = param1;
         if(this._child.parent != null)
         {
            this._child.parent.removeChild(this._child);
         }
      }
      
      public function createInstance(param1:Boolean = false) : DisplayObject
      {
         var debug:Boolean = param1;
         var wrapper:IAssetWrapper = null;
         var qualifiedClassName:String = getQualifiedClassName(this._child);
         var definition:Class = this.resourceManager.getDefinitionFromLibraryByName(this.swfResourceAlias,qualifiedClassName);
         var instance:* = new definition();
         try
         {
            if(instance is DisplayObjectContainer)
            {
               DisplayObjectUtil.processTextFieldBold(instance);
            }
         }
         catch(e:Error)
         {
            globalLogger.ch("invBug2","processTextFieldBold error" + e.toString());
            throw e;
         }
         if(this.itemWrapperClass)
         {
            wrapper = new this.itemWrapperClass();
            wrapper.process(instance);
            instance = wrapper;
         }
         return instance;
      }
      
      public function createListItem() : IListItem
      {
         return IListItem(this.createInstance(false));
      }
      
      public function config(param1:IResourceManager, param2:String, param3:Class) : void
      {
         this.resourceManager = param1;
         this.swfResourceAlias = param2;
         this.itemWrapperClass = param3;
      }
   }
}

