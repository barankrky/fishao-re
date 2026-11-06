package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   import protocol.cr.SellFishReq;
   
   public class SellFishFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function SellFishFscExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function sellFish(param1:int, param2:int, param3:int, param4:Function = null) : void
      {
         var _loc5_:SellFishReq = new SellFishReq();
         _loc5_.fishId = param1;
         _loc5_.fishType = param2;
         _loc5_.amount = param3;
         _connection.send(_loc5_,param4);
      }
   }
}

