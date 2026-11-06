package protocol.sr
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class FishCatchEmoticonResp extends _5e1bab759fcaea6d1f84faa7
   {
      
      public const EMOTICON_SMALL:int = 1;
      
      public const EMOTICON_MEDIUM:int = 2;
      
      public const EMOTICON_LARGE:int = 3;
      
      public const EMOTICON_FIVE_STAR:int = 4;
      
      public var username:String;
      
      public var emoticon:int;
      
      public function FishCatchEmoticonResp()
      {
         super();
      }
   }
}

