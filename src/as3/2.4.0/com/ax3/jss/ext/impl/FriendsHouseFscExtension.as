package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   import protocol.cr.GetFriendsHouseReq;
   
   public class FriendsHouseFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function FriendsHouseFscExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function getFriendsHouse(param1:Function) : void
      {
         _connection.send(new GetFriendsHouseReq(),param1);
      }
   }
}

