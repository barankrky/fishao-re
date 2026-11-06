package com.ax3.fishao.view.dialogs.fruits.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   
   public class ViewFruitItemSelected extends ViewFruitItem
   {
      
      private var _source:DisplayObjectContainer = new gViewFruitItemBig();
      
      public function ViewFruitItemSelected(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      private function init() : void
      {
         if(this._source.hasOwnProperty("buttonRemove"))
         {
            _buttonRemove = new FishaoButtonWrapper();
            _buttonRemove.process(Debug.assertProperty(this._source,"buttonRemove",DisplayObjectContainer));
            _buttonRemove.handler = function(param1:MouseEvent):void
            {
               controller.onViewClicked(_buttonRemove,param1);
            };
         }
      }
   }
}

