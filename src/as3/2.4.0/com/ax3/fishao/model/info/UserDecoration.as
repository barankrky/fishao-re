package com.ax3.fishao.model.info
{
   public class UserDecoration extends UserResource
   {
      
      public var decoId:Number;
      
      public var infoId:Number;
      
      public var idList:Array = new Array();
      
      public function UserDecoration(param1:Object)
      {
         super(param1);
         if(param1 != null)
         {
            if(param1.hasOwnProperty("decoId"))
            {
               this.decoId = param1.decoId;
               this.infoId = this.decoId;
            }
            if(param1.hasOwnProperty("resourceInfoId"))
            {
               this.decoId = param1.resourceInfoId;
               this.infoId = this.decoId;
            }
         }
      }
   }
}

