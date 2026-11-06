package protocol.api.events
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.events.data.EventInfo;
   import protocol.api.events.init.RequestEventsInit;
   import protocol.api.events.members.RequestEventMembers;
   import protocol.api.events.shown.RequestEventShown;
   
   public class FscExtensionEvents extends FscExtensionBase
   {
      
      public function FscExtensionEvents()
      {
         super();
      }
      
      public function onEventShown(param1:EventInfo, param2:Function) : void
      {
         var _loc3_:RequestEventShown = new RequestEventShown();
         _loc3_.event_id = param1.id;
         _connection.send(_loc3_,param2);
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestEventsInit(),param1);
      }
      
      public function updateMembers(param1:Function, param2:uint, param3:uint) : void
      {
         var _loc4_:RequestEventMembers = new RequestEventMembers();
         _loc4_.offset = param2;
         _loc4_.length = param3;
         _connection.send(_loc4_,param1);
      }
   }
}

