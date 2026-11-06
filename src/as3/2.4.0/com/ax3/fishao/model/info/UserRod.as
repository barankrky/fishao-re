package com.ax3.fishao.model.info
{
   import com.ax3.utils.empty;
   
   public class UserRod extends UserResource
   {
      
      public static const BAMBOO_ID:int = 1;
      
      public var infoId:int;
      
      public var color:String;
      
      public function UserRod(param1:Object)
      {
         super(param1);
         if(param1.hasOwnProperty("resourceInfoId"))
         {
            this.infoId = param1.resourceInfoId;
         }
         else if(param1.hasOwnProperty("resourceId"))
         {
            this.infoId = param1.resourceId;
         }
         if(param1.hasOwnProperty("color") && !empty(param1.color))
         {
            this.color = param1.color;
         }
      }
   }
}

