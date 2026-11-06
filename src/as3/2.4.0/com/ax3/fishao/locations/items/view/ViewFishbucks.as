package com.ax3.fishao.locations.items.view
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import flash.display.DisplayObjectContainer;
   
   public class ViewFishbucks extends ViewItem
   {
      
      private var _source:DisplayObjectContainer = new gViewFishbucks();
      
      public function ViewFishbucks(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      private function init() : void
      {
         this._source.scaleX = 0.3;
         this._source.scaleY = 0.3;
      }
   }
}

