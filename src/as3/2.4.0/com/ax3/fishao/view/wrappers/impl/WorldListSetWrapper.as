package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class WorldListSetWrapper implements IAssetWrapper
   {
      
      private var _child:DisplayObjectContainer;
      
      public function WorldListSetWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = DisplayObjectContainer(param1);
      }
      
      public function addChild(param1:MovieClip) : void
      {
         if(this._child.numChildren != 0)
         {
            this._child.removeChildAt(0);
         }
         this._child.addChild(param1);
      }
   }
}

