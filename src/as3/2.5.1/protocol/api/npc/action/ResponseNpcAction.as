package protocol.api.npc.action
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseNpcAction extends _5e1bab759fcaea6d1f84faa7
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

