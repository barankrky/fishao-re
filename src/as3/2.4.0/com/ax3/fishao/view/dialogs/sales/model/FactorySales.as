package com.ax3.fishao.view.dialogs.sales.model
{
   import com.ax3.fishao.debug.Debug;
   
   public class FactorySales
   {
      
      public function FactorySales()
      {
         super();
      }
      
      public static function createSale(param1:Object) : SaleBase
      {
         var _loc2_:SaleBase = null;
         switch(param1.type)
         {
            case ESaleType.EST_EXTRA_AMOUNT:
               _loc2_ = new SaleExtraAmount();
               break;
            default:
               Debug.assert(false,"Unsupported type on createSale of FactorySales: " + param1.type);
         }
         _loc2_.deserialize(param1);
         return _loc2_;
      }
   }
}

