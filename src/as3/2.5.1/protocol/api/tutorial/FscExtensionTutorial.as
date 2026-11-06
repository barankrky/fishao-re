package protocol.api.tutorial
{
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.api.base.FscExtensionBase;
   import protocol.api.tutorial.init.RequestTutorialInit;
   import protocol.api.tutorial.step_complete.RequestTutorialStepComplete;
   
   public class FscExtensionTutorial extends FscExtensionBase
   {
      
      public function FscExtensionTutorial()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestTutorialInit(),param1);
      }
      
      public function saveStep(param1:String, param2:int, param3:Function = null) : void
      {
         var _loc4_:RequestTutorialStepComplete = new RequestTutorialStepComplete();
         _loc4_.tutorial_type = param1;
         _loc4_.step_current = param2;
         _connection.send(_loc4_,param3);
      }
   }
}

