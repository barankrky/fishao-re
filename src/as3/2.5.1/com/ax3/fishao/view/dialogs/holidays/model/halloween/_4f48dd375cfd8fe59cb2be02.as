package com.ax3.fishao.view.dialogs.holidays.model.halloween
{
   import com.ax3.fishao.view.dialogs.holidays.model.base._304106890422442ac0cb20b8;
   import com.ax3.fishao.view.dialogs.holidays.model.base._79faae52d0fcb082083a102d;
   import com.brokenfunction.json.decodeJson;
   
   public class _4f48dd375cfd8fe59cb2be02 extends _304106890422442ac0cb20b8
   {
      
      private var _1a705c621a76833b0dbc20c4:Array;
      
      public function _4f48dd375cfd8fe59cb2be02()
      {
         super();
      }
      
      public function get pumpkinHeads() : Array
      {
         return this._1a705c621a76833b0dbc20c4;
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         var _loc2_:Object = decodeJson(_propertiesJson);
         this._1a705c621a76833b0dbc20c4 = _c10f6d26bab509fcc5717163(_loc2_,_79faae52d0fcb082083a102d.EHIT_PUMPKIN_HEAD);
      }
   }
}

