package protocol.api.profile.rankings
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class RequestProfileRankings extends ClientRequest
   {
      
      public var login:String;
      
      public var filter:int;
      
      public var ranking_type:int;
      
      public var ranking_subtype:int;
      
      public var page:int;
      
      public function RequestProfileRankings()
      {
         super();
      }
   }
}

