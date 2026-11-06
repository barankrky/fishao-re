package com.ax3.fishao.view.dialogs.holidays.model.base
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.view.dialogs.holidays.controller.ControllerHolidayItem;
   import com.ax3.fishao.view.dialogs.holidays.views.ViewHolidayItem;
   import flash.display.DisplayObjectContainer;
   
   public class HolidayItems
   {
      
      private var _items:Array;
      
      private var _locationLayers:LocationLayers;
      
      public function HolidayItems()
      {
         super();
         this.init();
      }
      
      private static function getHolidayItemSourceByType(param1:String) : DisplayObjectContainer
      {
         var _loc2_:DisplayObjectContainer = null;
         switch(param1)
         {
            case EHolidayItemType.EHIT_SANTA_BALLOON:
               _loc2_ = new gViewSantaBalloon();
               break;
            case EHolidayItemType.EHIT_PUMPKIN_HEAD:
               _loc2_ = new gViewPumpkinHead();
               break;
            default:
               Debug.assert(false,"Unsupported id on getHolidayItemViewByType method of HolidayItems: " + param1);
         }
         return _loc2_;
      }
      
      public function set locationLayers(param1:LocationLayers) : void
      {
         this._locationLayers = param1;
      }
      
      private function init() : void
      {
         this._items = [];
      }
      
      public function addItems(param1:Array, param2:int) : void
      {
         var _loc3_:HolidayItem = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc5_:ControllerHolidayItem = null;
         for each(_loc3_ in param1)
         {
            if(_loc3_.locationId == param2)
            {
               _loc4_ = getHolidayItemSourceByType(_loc3_.type);
               _loc5_ = new ControllerHolidayItem(_loc3_,_loc4_);
               this._items.push(_loc5_);
               this._locationLayers.addHolidayItem(_loc5_.view as ViewHolidayItem);
            }
         }
      }
      
      public function updateItemsState(param1:String, param2:Boolean, param3:Number = 0) : void
      {
         var _loc4_:ControllerHolidayItem = null;
         for each(_loc4_ in this._items)
         {
            if((_loc4_.view as ViewHolidayItem).isEnabled != param2)
            {
               if(_loc4_.entity.type == param1)
               {
                  if(param2)
                  {
                     _loc4_.view.show(param3);
                  }
                  else
                  {
                     _loc4_.view.hide(param3);
                  }
               }
            }
         }
      }
      
      public function isHitAny(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:ControllerHolidayItem = null;
         var _loc4_:Boolean = false;
         for each(_loc3_ in this._items)
         {
            if((_loc3_.view as ViewHolidayItem).hitTest(param1,param2))
            {
               _loc4_ = true;
               break;
            }
         }
         return _loc4_;
      }
   }
}

