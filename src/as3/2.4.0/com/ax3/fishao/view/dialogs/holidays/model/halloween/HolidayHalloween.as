package com.ax3.fishao.view.dialogs.holidays.model.halloween
{
   import com.ax3.fishao.view.dialogs.holidays.model.base.EHolidayItemType;
   import com.ax3.fishao.view.dialogs.holidays.model.base.HolidayInfo;
   import com.brokenfunction.json.decodeJson;
   
   public class HolidayHalloween extends HolidayInfo
   {
      
      private var _pumpkinHeads:Array;
      
      public function HolidayHalloween()
      {
         super();
      }
      
      public function get pumpkinHeads() : Array
      {
         return this._pumpkinHeads;
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         var _loc2_:Object = decodeJson(_propertiesJson);
         this._pumpkinHeads = parseItems(_loc2_,EHolidayItemType.EHIT_PUMPKIN_HEAD);
      }
   }
}

