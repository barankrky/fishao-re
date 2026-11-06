package com.ax3.fishao.model.interfaces
{
   public interface IToolTip
   {
      
      function config(param1:Object) : void;
      
      function set x(param1:Number) : void;
      
      function set y(param1:Number) : void;
      
      function activate() : void;
      
      function deactivate() : void;
      
      function isActive() : Boolean;
      
      function update() : void;
   }
}

