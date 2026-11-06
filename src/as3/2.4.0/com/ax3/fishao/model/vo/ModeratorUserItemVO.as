package com.ax3.fishao.model.vo
{
   import com.ax3.fishao.model.types.BanType;
   import com.ax3.fishao.model.types.ModeratorUserStatusType;
   import com.ax3.fishao.utils.I18n;
   
   public class ModeratorUserItemVO
   {
      
      public var lang:String;
      
      public var username:String;
      
      public var timeLeft:String;
      
      public var status:ModeratorUserStatusType;
      
      public var banType:BanType;
      
      public var timeLeftSec:int;
      
      public function ModeratorUserItemVO()
      {
         super();
      }
      
      public function readFromResponse(param1:Object) : void
      {
         this.username = param1.login;
         this.lang = param1.lang;
         this.banType = BanType.findByName(param1.banType);
         this.timeLeftSec = param1.timeLeftSec;
         this.timeLeft = I18n.formatTimestamp(this.timeLeftSec);
      }
   }
}

