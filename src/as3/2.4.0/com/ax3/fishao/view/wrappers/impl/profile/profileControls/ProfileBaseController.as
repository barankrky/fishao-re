package com.ax3.fishao.view.wrappers.impl.profile.profileControls
{
   import flash.events.EventDispatcher;
   
   public class ProfileBaseController extends EventDispatcher
   {
      
      private var _elementsFactory:IElementsFactory;
      
      public function ProfileBaseController()
      {
         super();
      }
      
      protected function get elementsFactory() : IElementsFactory
      {
         return this._elementsFactory;
      }
      
      protected function set elementsFactory(param1:IElementsFactory) : void
      {
         this._elementsFactory = param1;
         this.initController();
      }
      
      protected function initController() : void
      {
      }
      
      public function set elements(param1:Vector.<Object>) : void
      {
         this._elementsFactory.elements = param1;
         this.initController();
      }
   }
}

