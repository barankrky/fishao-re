package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   import protocol.cr.BuyEnergyReq;
   import protocol.cr.GetDataReq;
   
   public class BuyEnergyFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function BuyEnergyFscExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function getPriceList(param1:Function) : void
      {
         var _loc2_:GetDataReq = null;
         _loc2_ = new GetDataReq();
         _loc2_.data = {"energyPrices":1};
         _connection.send(_loc2_,param1);
      }
      
      public function buyEnergy(param1:int, param2:Function = null) : void
      {
         var _loc3_:BuyEnergyReq = new BuyEnergyReq(param1);
         _connection.send(_loc3_,param2);
      }
   }
}

