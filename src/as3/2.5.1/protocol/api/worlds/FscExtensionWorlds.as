package protocol.api.worlds
{
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.api.base.FscExtensionBase;
   import protocol.api.worlds.init.RequestWorldsInit;
   
   public class FscExtensionWorlds extends FscExtensionBase
   {
      
      public function FscExtensionWorlds()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestWorldsInit(),param1);
      }
   }
}

