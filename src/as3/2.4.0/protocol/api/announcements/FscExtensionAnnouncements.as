package protocol.api.announcements
{
   import protocol.api.announcements.init.RequestAnnouncements;
   import protocol.api.base.FscExtensionBase;
   
   public class FscExtensionAnnouncements extends FscExtensionBase
   {
      
      public function FscExtensionAnnouncements()
      {
         super();
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestAnnouncements(),param1);
      }
   }
}

