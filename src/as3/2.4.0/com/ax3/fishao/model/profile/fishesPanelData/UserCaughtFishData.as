package com.ax3.fishao.model.profile.fishesPanelData
{
   import com.ax3.fishao.model.profile.ProfileItemData;
   
   public class UserCaughtFishData extends ProfileItemData
   {
      
      public var userHave:Boolean;
      
      public var realName:String;
      
      public function UserCaughtFishData(param1:String, param2:String, param3:String, param4:Boolean, param5:String)
      {
         super(param1,param2,param3);
         this.userHave = param4;
         this.realName = param5;
      }
   }
}

