package com.ax3.fishao.model
{
   import com.ax3.fishao.utils.I18n;
   
   public class CountryRecord
   {
      
      public var iso2:String;
      
      public var paymentSystemIds:Array = [];
      
      public var language:String = "en";
      
      private var _id:String;
      
      private var _name:String;
      
      public function CountryRecord(param1:Object)
      {
         super();
         this._id = param1.id;
         this.iso2 = param1.iso2;
         if(param1.hasOwnProperty("payment_system_ids") && param1.payment_system_ids != "")
         {
            this.paymentSystemIds = String(param1.payment_system_ids).split(",");
         }
         if(param1.hasOwnProperty("language"))
         {
            this.language = param1.language;
         }
      }
      
      public function get name() : String
      {
         return I18n.get("country_" + this.id);
      }
      
      public function get id() : String
      {
         return this._id;
      }
   }
}

