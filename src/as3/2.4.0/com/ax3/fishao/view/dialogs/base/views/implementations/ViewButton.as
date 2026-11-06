package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import com.ax3.fishao.display.MainMenuIconWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   
   public class ViewButton extends ViewBase
   {
      
      protected var _isEnabled:Boolean;
      
      private var _source:DisplayObjectContainer;
      
      public function ViewButton(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         if(this._isEnabled == param1)
         {
            return;
         }
         this._isEnabled = param1;
         this._source.filters = param1 ? MainMenuIconWrapper.NORMAL_FILTERS : MainMenuIconWrapper.DISABLE_FILTERS;
      }
      
      override protected function onMouseClick(param1:MouseEvent) : void
      {
         if(!this._isEnabled)
         {
            return;
         }
         this.tryPlaySound();
         super.onMouseClick(param1);
      }
      
      private function init() : void
      {
         this._source["buttonMode"] = true;
         this._source.mouseChildren = false;
         this.isEnabled = true;
         handleEvents(true,false,false,false,false,true,true);
      }
      
      protected function tryPlaySound() : void
      {
      }
      
      override public function cleanup() : void
      {
         this._source = null;
         super.cleanup();
      }
   }
}

