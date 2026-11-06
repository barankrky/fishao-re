package com.ax3.fishao.view.dialogs.wheel_of_fortune.views
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.DisplayObjectContainer;
   
   public class ViewWheelPointer extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      public function ViewWheelPointer(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this._source = param2;
         this.init();
      }
      
      private function init() : void
      {
      }
   }
}

