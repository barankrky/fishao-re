package com.ax3.fishao.view.dialogs.holidays.model.christmas
{
   import com.ax3.fishao.view.dialogs.holidays.model.base._304106890422442ac0cb20b8;
   import com.ax3.fishao.view.dialogs.holidays.model.base._79faae52d0fcb082083a102d;
   import com.brokenfunction.json.decodeJson;
   
   public class _398e0919975e4cb37bc68285 extends _304106890422442ac0cb20b8
   {
      
      private var _5a3b732eeed76df67cf98ecc:Array;
      
      public function _398e0919975e4cb37bc68285()
      {
         super();
      }
      
      public function get balloons() : Array
      {
         return this._5a3b732eeed76df67cf98ecc;
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         var _loc2_:Object = decodeJson(_propertiesJson);
         this._5a3b732eeed76df67cf98ecc = _c10f6d26bab509fcc5717163(_loc2_,_79faae52d0fcb082083a102d.EHIT_SANTA_BALLOON);
      }
   }
}

