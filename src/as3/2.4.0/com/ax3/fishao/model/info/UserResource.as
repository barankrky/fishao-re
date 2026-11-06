package com.ax3.fishao.model.info
{
   public class UserResource
   {
      
      public var id:int;
      
      public var quantity:int;
      
      public var type:int;
      
      public var worth:int;
      
      public function UserResource(param1:Object)
      {
         super();
         if(param1 != null)
         {
            this.update(param1);
         }
      }
      
      public function update(param1:Object) : void
      {
         if(param1.hasOwnProperty("resourceId"))
         {
            this.id = param1.resourceId;
         }
         if(param1.hasOwnProperty("qualityLeft"))
         {
            this.quantity = param1.qualityLeft;
         }
         if(param1.hasOwnProperty("resourceType"))
         {
            this.type = param1.resourceType;
         }
         if(param1.hasOwnProperty("worth"))
         {
            this.worth = param1.worth;
         }
      }
      
      public function toString() : String
      {
         return "[object UserResource(id=" + this.id + ",quantity=" + this.quantity + ",type=" + this.type + ")]";
      }
   }
}

