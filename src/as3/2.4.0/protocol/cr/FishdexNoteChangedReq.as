package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class FishdexNoteChangedReq extends ClientRequest
   {
      
      public var fishId:int;
      
      public var note:String;
      
      public function FishdexNoteChangedReq(param1:int, param2:String)
      {
         super();
         this.fishId = param1;
         this.note = param2;
      }
   }
}

