package com.ax3.fishao.view.dialogs.base.controllers.implementations
{
   import com.ax3.fishao.core.DisposableObject;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class Controller extends DisposableObject implements IController
   {
      
      private var _view:IView;
      
      public function Controller(param1:IView)
      {
         super();
         this._view = Debug.assertNotEqual(param1,null);
      }
      
      public function get view() : IView
      {
         return this._view;
      }
      
      public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         return false;
      }
      
      public function onViewMouseMove(param1:Object, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseUpOver(param1:Object, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseUpOut(param1:Object, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseOver(param1:IView, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseOut(param1:IView, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseDown(param1:IView, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseUp(param1:IView, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseWheel(param1:IView, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function update(param1:String) : void
      {
         Debug.assert(false,"Update not handled: " + param1);
      }
      
      override public function cleanup() : void
      {
         this._view.cleanup();
         this._view = null;
         super.cleanup();
      }
   }
}

