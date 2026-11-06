package com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController
{
   import flash.events.IEventDispatcher;
   
   public interface IPagesControl extends IEventDispatcher
   {
      
      function set currentPage(param1:Number) : void;
      
      function get currentPage() : Number;
      
      function set totalPages(param1:Number) : void;
      
      function alightElements(param1:String) : void;
   }
}

