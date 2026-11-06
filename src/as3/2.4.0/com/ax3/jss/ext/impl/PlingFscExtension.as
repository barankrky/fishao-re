package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   import protocol.cr.GetDataReq;
   import protocol.cr.UpdateReq;
   
   public class PlingFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function PlingFscExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function markAsReaded(param1:int) : void
      {
         var _loc2_:UpdateReq = null;
         _loc2_ = new UpdateReq();
         _loc2_.data = {"plingConfirm":param1};
         _connection.send(_loc2_,null);
      }
      
      public function getHistory() : void
      {
         var _loc1_:GetDataReq = new GetDataReq();
         _loc1_.data = {"plingHistory":true};
         _connection.send(_loc1_,null);
      }
   }
}

