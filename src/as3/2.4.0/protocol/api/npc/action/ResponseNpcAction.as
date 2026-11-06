package protocol.api.npc.action
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseNpcAction extends ServerResp
   {
      
      private var _npcName:String;
      
      private var _actionType:String;
      
      private var _actionParams:Object;
      
      public function ResponseNpcAction()
      {
         super();
         this._actionParams = {};
      }
      
      public function get npcName() : String
      {
         return this._npcName;
      }
      
      public function get actionType() : String
      {
         return this._actionType;
      }
      
      public function get params() : Object
      {
         return this._actionParams;
      }
      
      public function set npcName(param1:String) : void
      {
         this._npcName = param1;
      }
      
      public function set actionType(param1:String) : void
      {
         this._actionType = param1;
      }
      
      public function set actionParams(param1:String) : void
      {
         if(param1 != null)
         {
            this._actionParams = decodeJson(param1);
         }
      }
   }
}

