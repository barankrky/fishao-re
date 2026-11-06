package com.ax3.fishao.model.types
{
   public class ModeratorUserStatusType
   {
      
      public static const NORMAL:ModeratorUserStatusType = new ModeratorUserStatusType("NORMAL",7763574);
      
      public static const BANNED:ModeratorUserStatusType = new ModeratorUserStatusType("BANNED",16711680);
      
      public var name:String;
      
      public var color:uint;
      
      public function ModeratorUserStatusType(param1:String, param2:uint)
      {
         super();
         this.name = param1;
         this.color = param2;
      }
   }
}

