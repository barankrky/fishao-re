package protocol.api.worlds
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   import protocol.api.base.FscExtensionBase;
   import protocol.api.worlds.init.RequestWorldsInit;
   
   public class FscExtensionWorlds extends FscExtensionBase
   {
      
      public function FscExtensionWorlds()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestWorldsInit(),param1);
      }
   }
}

