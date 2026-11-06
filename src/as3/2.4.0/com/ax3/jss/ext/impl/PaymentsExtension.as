package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   import protocol.cr.BuyResourceReq;
   import protocol.cr.GetDataReq;
   
   public class PaymentsExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function PaymentsExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function getCurrency(param1:String, param2:Function) : void
      {
         var _loc3_:GetDataReq = null;
         _loc3_ = new GetDataReq();
         _loc3_.data = {"paymentCurrency":param1};
         _connection.send(_loc3_,param2);
      }
      
      public function buyProduct(param1:int, param2:int, param3:int, param4:String, param5:Function = null) : void
      {
         var _loc6_:BuyResourceReq = new BuyResourceReq(param1,param2,param3,param4);
         _connection.send(_loc6_,param5);
      }
      
      public function getRodsAmountToBuyLeft(param1:Function) : void
      {
         var _loc2_:GetDataReq = new GetDataReq();
         _loc2_.data = {"rodsAmountToBuyLeft":1};
         _connection.send(_loc2_,param1);
      }
   }
}

