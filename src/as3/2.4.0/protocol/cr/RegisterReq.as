package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   import com.ax3.utils.DateUtils;
   import com.ax3.utils.empty;
   
   public class RegisterReq extends ClientRequest
   {
      
      public var login:String;
      
      public var pass:String;
      
      public var dateOfBirth:String;
      
      public var email:String;
      
      public var lang:String;
      
      public var receiveMail:Boolean;
      
      public var affId:String;
      
      public var promoCode:String;
      
      public var campaignId:String;
      
      public var campaignTrackId:String;
      
      public var sendWelcomeEmail:Boolean;
      
      public var betaKey:String;
      
      public function RegisterReq(param1:String, param2:String, param3:Date, param4:String, param5:Boolean, param6:String, param7:String, param8:String, param9:String, param10:String, param11:Boolean = false, param12:String = null)
      {
         super();
         this.login = param1;
         this.pass = param2;
         this.dateOfBirth = DateUtils.toServerString(param3);
         this.email = param4;
         this.receiveMail = param5;
         this.lang = param6;
         if(param7 == "0")
         {
            this.affId = null;
         }
         else
         {
            this.affId = param7;
         }
         if(param8 == "0")
         {
            this.campaignId = null;
         }
         else
         {
            this.campaignId = param8;
         }
         if(empty(param9))
         {
            this.campaignTrackId = null;
         }
         else
         {
            this.campaignTrackId = param9;
         }
         if(param10 == "")
         {
            this.promoCode = null;
         }
         else
         {
            this.promoCode = param10;
         }
         this.sendWelcomeEmail = param11;
         this.betaKey = param12;
      }
   }
}

