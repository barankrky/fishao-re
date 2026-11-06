package com.ax3.fishao.view.wrappers.impl
{
   public interface IDropdownListItem
   {
      
      function set displayValue(param1:String) : void;
      
      function set clickHandler(param1:Function) : void;
      
      function get displayValue() : String;
      
      function set index(param1:int) : void;
      
      function get index() : int;
   }
}

