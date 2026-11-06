package protocol.cr
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class FishdexNoteChangedReq extends _ccb739c00378004f39879793
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

