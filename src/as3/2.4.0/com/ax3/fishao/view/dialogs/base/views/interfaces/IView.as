package com.ax3.fishao.view.dialogs.base.views.interfaces
{
   import com.ax3.fishao.core.IDisposable;
   import flash.display.DisplayObject;
   
   public interface IView extends IDisposable
   {
      
      function get source() : DisplayObject;
      
      function show(param1:Number = 0, param2:Function = null) : void;
      
      function hide(param1:Number = 0, param2:Function = null) : void;
      
      function placeViews(param1:Boolean) : void;
   }
}

