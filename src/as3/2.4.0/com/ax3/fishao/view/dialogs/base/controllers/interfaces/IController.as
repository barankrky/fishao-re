package com.ax3.fishao.view.dialogs.base.controllers.interfaces
{
   import com.ax3.fishao.core.IDisposable;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public interface IController extends IDisposable
   {
      
      function get view() : IView;
      
      function onViewClicked(param1:Object, param2:Event) : Boolean;
      
      function onViewMouseMove(param1:Object, param2:MouseEvent) : Boolean;
      
      function onViewMouseUpOver(param1:Object, param2:MouseEvent) : Boolean;
      
      function onViewMouseUpOut(param1:Object, param2:MouseEvent) : Boolean;
      
      function onViewMouseOver(param1:IView, param2:MouseEvent) : Boolean;
      
      function onViewMouseOut(param1:IView, param2:MouseEvent) : Boolean;
      
      function onViewMouseDown(param1:IView, param2:MouseEvent) : Boolean;
      
      function onViewMouseUp(param1:IView, param2:MouseEvent) : Boolean;
      
      function onViewMouseWheel(param1:IView, param2:MouseEvent) : Boolean;
      
      function update(param1:String) : void;
   }
}

