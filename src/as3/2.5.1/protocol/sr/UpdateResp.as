package protocol.sr
{
   import protocol.api.base.ResponseWithData;
   
   public class UpdateResp extends ResponseWithData
   {
      
      public var sid:String;
      
      public var login:String;
      
      public var triesCount:int;
      
      public function UpdateResp()
      {
         super();
      }
      
      public function isEnterSublocationResponse() : Boolean
      {
         return hasDataProperty("usersAtLoc");
      }
   }
}

