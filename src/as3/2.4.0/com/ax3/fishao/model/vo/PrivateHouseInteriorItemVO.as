package com.ax3.fishao.model.vo
{
   import com.ax3.fishao.model.IValueObject;
   import com.ax3.fishao.utils.I18n;
   
   public class PrivateHouseInteriorItemVO implements IValueObject
   {
      
      public var id:int;
      
      public var name:String;
      
      public var type:String;
      
      public var rarity:int;
      
      public var priceFishcoins:int;
      
      public var priceFishbucks:int;
      
      public var size_x:int;
      
      public var size_y:int;
      
      public var front_offset_x:int;
      
      public var front_offset_y:int;
      
      public var back_offset_x:int;
      
      public var back_offset_y:int;
      
      public var left_offset_x:int;
      
      public var left_offset_y:int;
      
      public var right_offset_x:int;
      
      public var right_offset_y:int;
      
      public var front_z_point:int;
      
      public var back_z_point:int;
      
      public var left_z_point:int;
      
      public var right_z_point:int;
      
      public function PrivateHouseInteriorItemVO()
      {
         super();
      }
      
      public function readResponse(param1:Object) : void
      {
         this.id = parseInt(param1.id);
         this.type = param1.type;
         this.priceFishbucks = parseInt(param1.price_fishbucks);
         this.priceFishcoins = parseInt(param1.price_fishcoins);
         this.size_x = parseInt(param1.size_x);
         this.size_y = parseInt(param1.size_y);
         this.rarity = parseInt(param1.rarity);
         this.front_offset_x = parseInt(param1.image_front_offset_x);
         this.front_offset_y = parseInt(param1.image_front_offset_y);
         this.back_offset_x = parseInt(param1.image_back_offset_x);
         this.back_offset_y = parseInt(param1.image_back_offset_y);
         this.left_offset_x = parseInt(param1.image_left_offset_x);
         this.left_offset_y = parseInt(param1.image_left_offset_y);
         this.right_offset_x = parseInt(param1.image_right_offset_x);
         this.right_offset_y = parseInt(param1.image_right_offset_y);
         this.front_z_point = parseInt(param1.image_front_z_point);
         this.back_z_point = parseInt(param1.image_back_z_point);
         this.left_z_point = parseInt(param1.image_left_z_point);
         this.right_z_point = parseInt(param1.image_right_z_point);
         this.name = I18n.get("decoration_" + this.id);
      }
   }
}

