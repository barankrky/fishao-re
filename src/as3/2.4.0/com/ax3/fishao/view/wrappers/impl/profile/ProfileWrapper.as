package com.ax3.fishao.view.wrappers.impl.profile
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.EventDispatcher;
   
   public class ProfileWrapper extends EventDispatcher implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      protected var _asset:DisplayObjectContainer;
      
      public function ProfileWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
      }
      
      public function onAssetProcessComplete() : void
      {
      }
   }
}

