package com.ax3.fishao.display
{
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.Sprite;
   
   public class ControllerGui extends Controller
   {
      
      private var _view:ViewBase = new ViewBase(this,new Sprite());
      
      public function ControllerGui()
      {
         super(this._view);
      }
   }
}

