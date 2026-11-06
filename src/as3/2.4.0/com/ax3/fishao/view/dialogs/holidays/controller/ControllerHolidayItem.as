package com.ax3.fishao.view.dialogs.holidays.controller
{
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.holidays.model.base.HolidayItem;
   import com.ax3.fishao.view.dialogs.holidays.views.ViewHolidayItem;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerHolidayItem extends Controller
   {
      
      private var _entity:HolidayItem;
      
      private var _view:ViewHolidayItem;
      
      public function ControllerHolidayItem(param1:HolidayItem, param2:DisplayObjectContainer)
      {
         this._entity = param1;
         this._view = new ViewHolidayItem(this,param2);
         super(this._view);
         this.init();
      }
      
      public function get entity() : HolidayItem
      {
         return this._entity;
      }
      
      private function init() : void
      {
         this._view.source.x = this._entity.position.x;
         this._view.source.y = this._entity.position.y;
      }
   }
}

