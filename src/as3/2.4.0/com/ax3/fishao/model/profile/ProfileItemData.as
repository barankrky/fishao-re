package com.ax3.fishao.model.profile
{
   public class ProfileItemData
   {
      
      public var id:String;
      
      public var name:String;
      
      public var imageUrl:String;
      
      public function ProfileItemData(param1:String, param2:String, param3:String)
      {
         super();
         this.id = param1;
         this.name = param2;
         this.imageUrl = param3;
      }
   }
}

