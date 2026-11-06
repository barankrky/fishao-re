package com.ax3.fishao.locations.privateHouse.interior.view
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class ViewInteriorItem extends ViewBase
   {
      
      protected var _source:DisplayObjectContainer = new Sprite();
      
      public function ViewInteriorItem(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      private function init() : void
      {
      }
      
      public function addOnLayer(param1:DisplayObjectContainer) : void
      {
         param1.addChild(this._source);
      }
      
      public function load() : void
      {
      }
      
      public function removeFromLayer(param1:DisplayObjectContainer) : void
      {
         if(this._source.parent == param1)
         {
            param1.removeChild(this._source);
         }
      }
   }
}

