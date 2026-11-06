package com.ax3.fishao.view.dialogs.tournaments.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.ControllerScrollContainer;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.EScrollDirectionType;
   import flash.display.DisplayObjectContainer;
   
   public class ViewTournamentMembers extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _controllerScrollContainer:ControllerScrollContainer;
      
      public function ViewTournamentMembers(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._controllerScrollContainer.items = param1;
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(this._source,"viewScrollContainer");
         this._controllerScrollContainer = new ControllerScrollContainer(_loc1_,EScrollDirectionType.ESDT_VERTICAL);
      }
      
      override public function cleanup() : void
      {
         this._controllerScrollContainer.cleanup();
         super.cleanup();
      }
   }
}

