package protocol.api.profile.rankings
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class RequestProfileRankings extends _ccb739c00378004f39879793
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

