package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   import protocol.cr.DailyQuestCompleteReq;
   import protocol.cr.GetDailyQuestReq;
   
   public class DailyQuestExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function DailyQuestExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function getPrizesData(param1:Function) : void
      {
         _connection.send(new DailyQuestCompleteReq(),param1);
      }
      
      public function getDailyQuestData(param1:Function) : void
      {
         _connection.send(new GetDailyQuestReq(),param1);
      }
   }
}

