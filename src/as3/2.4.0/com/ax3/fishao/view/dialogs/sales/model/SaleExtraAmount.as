package com.ax3.fishao.view.dialogs.sales.model
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.brokenfunction.json.decodeJson;
   
   public class SaleExtraAmount extends SaleBase
   {
      
      private var _bonusRate:Number;
      
      public function SaleExtraAmount()
      {
         super();
      }
      
      public function get bonusRate() : Number
      {
         return this._bonusRate;
      }
      
      override public function set isShown(param1:Boolean) : void
      {
         super.isShown = param1;
         GameSwf.tryUpdateGUI(EControllerUpdate.ECU_SALES_SALE_SHOWN);
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         var _loc2_:String = Debug.assertProperty(param1,"additional_info");
         var _loc3_:Object = decodeJson(_loc2_);
         this._bonusRate = Debug.assertProperty(_loc3_,"bonus_rate");
      }
      
      override public function start() : void
      {
         super.start();
         GameSwf.tryUpdateGUI(EControllerUpdate.ECU_SALES_SALE_START);
         var _loc1_:DialogBase = PopupManager.getInstance().getDialogByType(EDialogType.EDT_BUY_FISHCOINS);
         if(_loc1_ != null)
         {
            _loc1_.update(EControllerUpdate.ECU_SALES_SALE_START);
         }
      }
      
      override public function end() : void
      {
         super.end();
         GameSwf.tryUpdateGUI(EControllerUpdate.ECU_SALES_SALE_END);
         var _loc1_:DialogBase = PopupManager.getInstance().getDialogByType(EDialogType.EDT_BUY_FISHCOINS);
         if(_loc1_ != null)
         {
            _loc1_.update(EControllerUpdate.ECU_SALES_SALE_END);
         }
      }
   }
}

