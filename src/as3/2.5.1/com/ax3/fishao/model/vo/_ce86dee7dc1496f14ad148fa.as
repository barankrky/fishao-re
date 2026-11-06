package com.ax3.fishao.model.vo
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.model._d77ebfef0f9e8ea16b924015;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   
   public class _ce86dee7dc1496f14ad148fa implements _d77ebfef0f9e8ea16b924015
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
      
      public function _ce86dee7dc1496f14ad148fa()
      {
         super();
      }
      
      public function _2dd278b198781935b9d9b9ee(param1:Object) : void
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
         this.name = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掸挚揺挳揼揢捁挿揻挈掹指捫掣揭揭控描挃揵挔揷挕挕挦捯掸捳捏捓","挎捤掻挭揱挐挈揽挐挐掜捷换揲捥捈") + this.id);
      }
   }
}

