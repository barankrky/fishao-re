package protocol.cr
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class UpdateSettingsReq extends _ccb739c00378004f39879793
   {
      
      public var birthDate:String;
      
      public var showBirthDate:Boolean;
      
      public var email:String;
      
      public var showEmail:Boolean;
      
      public var receiveMails:Boolean;
      
      public var showInventory:Boolean;
      
      public var timeFormat:int;
      
      public var units:String;
      
      public var gameLanguage:String;
      
      public var country:String;
      
      public var timezone:String;
      
      public var backMusic:Number;
      
      public var soundEffects:Number;
      
      public var bobber:int;
      
      public function UpdateSettingsReq(param1:Object)
      {
         var _loc2_:String = null;
         super();
         for(_loc2_ in param1)
         {
            this[_loc2_] = param1[_loc2_];
         }
      }
   }
}

