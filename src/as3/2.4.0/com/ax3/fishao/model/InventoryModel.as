package com.ax3.fishao.model
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.model.info.UserBait;
   import com.ax3.fishao.model.info.UserDecoration;
   import com.ax3.fishao.model.info.UserLooksResource;
   import com.ax3.fishao.model.info.UserResource;
   import com.ax3.fishao.model.info.UserRod;
   import com.ax3.fishao.vars.app;
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class InventoryModel extends EventDispatcher
   {
      
      public static const BAITS_CHANGE:String = "bait_change";
      
      public static const OTHER_CHANGE:String = "other_change";
      
      public static const LOOKS_CHANGE:String = "looks_change";
      
      public static const FISH_CHANGE:String = "looks_change";
      
      public static const DECORATION_CHANGE:String = "decoration_change";
      
      public static const RODS_CHANGE:String = "rods_change";
      
      public static const FOSSILS_CHANGE:String = "fossils_change";
      
      public static var currentLookIdForCharEditor:int = 0;
      
      private const RODS_CHANGE_EVENT:Event = new Event(RODS_CHANGE);
      
      private const BAITS_CHANGE_EVENT:Event = new Event(BAITS_CHANGE);
      
      private const OTHER_CHANGE_EVENT:Event = new Event(OTHER_CHANGE);
      
      private const LOOKS_CHANGE_EVENT:Event = new Event(LOOKS_CHANGE);
      
      private const FOSSILS_CHANGE_EVENT:Event = new Event(FOSSILS_CHANGE);
      
      private const FISH_CHANGE_EVENT:Event = new Event(FISH_CHANGE);
      
      private const DECORATION_CHANGE_EVENT:Event = new Event(DECORATION_CHANGE);
      
      public var amountOfFishrodToBuyLeft:int = 0;
      
      public var extraClothesItems:Array = [];
      
      private var _rods:Vector.<UserRod> = new Vector.<UserRod>();
      
      private var _baits:Vector.<UserBait> = new Vector.<UserBait>();
      
      private var _other:Vector.<UserResource> = new Vector.<UserResource>();
      
      private var _fish:Vector.<UserResource> = new Vector.<UserResource>();
      
      private var _decorations:Vector.<UserDecoration> = new Vector.<UserDecoration>();
      
      private var _looks:Vector.<UserLooksResource> = new Vector.<UserLooksResource>();
      
      private var _fossils:Vector.<UserResource> = new Vector.<UserResource>();
      
      public function InventoryModel()
      {
         super();
      }
      
      private static function sortResourcesById(param1:UserResource, param2:UserResource) : int
      {
         if(param1.id > param2.id)
         {
            return 1;
         }
         if(param1.id < param2.id)
         {
            return -1;
         }
         return 0;
      }
      
      public function get rods() : Vector.<UserRod>
      {
         return this._rods;
      }
      
      public function get baits() : Vector.<UserBait>
      {
         return this._baits;
      }
      
      public function get other() : Vector.<UserResource>
      {
         return this._other;
      }
      
      public function get looks() : Vector.<UserLooksResource>
      {
         this._looks.sort(sortResourcesById);
         return this._looks;
      }
      
      public function get fish() : Vector.<UserResource>
      {
         this._fish.sort(sortResourcesById);
         return this._fish;
      }
      
      public function get decoration() : Vector.<UserDecoration>
      {
         this._decorations.sort(sortResourcesById);
         return this._decorations;
      }
      
      public function get fossils() : Vector.<UserResource>
      {
         this._fossils.sort(sortResourcesById);
         return this._fossils;
      }
      
      public function get fishNotZeeroCount() : Vector.<UserResource>
      {
         var _loc1_:UserResource = null;
         var _loc2_:Vector.<UserResource> = new Vector.<UserResource>();
         for each(_loc1_ in this._fish)
         {
            if(_loc1_.quantity != 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         _loc2_.sort(sortResourcesById);
         return _loc2_;
      }
      
      public function update(param1:Array) : void
      {
         var _loc2_:UserResource = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         if(param1 is Array)
         {
            _loc3_ = int(param1.length);
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc2_ = this.getResource(param1[_loc4_]["resourceId"],param1[_loc4_]["resourceType"]);
               if(_loc2_ != null)
               {
                  _loc2_.update(param1[_loc4_]);
                  if(_loc2_.type == ResourceType.CLOTHE.id && _loc2_.quantity == 0)
                  {
                     this.removeResource(_loc2_);
                  }
                  if(Object(param1[_loc4_]).hasOwnProperty("qualityLeft") && param1[_loc4_]["qualityLeft"] == 0)
                  {
                     this.removeResource(_loc2_);
                  }
               }
               else if(!((param1[_loc4_]["resourceType"] == ResourceType.ROD.id || param1[_loc4_]["resourceType"] == ResourceType.BAIT.id || param1[_loc4_]["resourceType"] == ResourceType.FISHBOX.id || param1[_loc4_]["resourceType"] == ResourceType.LUCK_POTION.id || param1[_loc4_]["resourceType"] == ResourceType.MAGIC_WATCH.id || param1[_loc4_]["resourceType"] == ResourceType.FISH_RADAR.id || param1[_loc4_]["resourceType"] == ResourceType.EXP_BOOSTER.id || param1[_loc4_]["resourceType"] == ResourceType.SHINY_POTION.id || param1[_loc4_]["resourceType"] == ResourceType.POWER_BOOSTER.id) && (Object(param1[_loc4_]).hasOwnProperty("qualityLeft") && param1[_loc4_]["qualityLeft"] == 0)))
               {
                  this.addResource(param1[_loc4_]);
               }
               _loc7_ ||= param1[_loc4_]["resourceType"] == ResourceType.ROD.id;
               _loc8_ ||= param1[_loc4_]["resourceType"] == ResourceType.BAIT.id;
               _loc9_ ||= param1[_loc4_]["resourceType"] >= ResourceType.OTHER.id;
               _loc10_ ||= param1[_loc4_]["resourceType"] == ResourceType.CLOTHE.id;
               _loc12_ ||= param1[_loc4_]["resourceType"] == ResourceType.FISH.id;
               _loc13_ ||= param1[_loc4_]["resourceType"] == ResourceType.DECORATION.id;
               _loc11_ ||= param1[_loc4_]["resourceType"] == ResourceType.FOSSIL.id;
               if(_loc10_ || _loc11_)
               {
                  _loc9_ = false;
               }
               _loc4_++;
            }
            if(_loc7_)
            {
               this.dispatchRodChange();
            }
            if(_loc8_)
            {
               this.dispatchBaitChange();
            }
            if(_loc9_)
            {
               this.dispatchOtherChange();
            }
            if(_loc10_)
            {
               this.dispatchLooksChange();
            }
            if(_loc11_)
            {
               this.dispatchFossilsChange();
            }
            this.extraClothesItems = [];
            _loc5_ = int(this._looks.length);
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               if(this.extraClothesItems.indexOf(this._looks[_loc6_].id) < 0 && this._looks[_loc6_].quantity > 0)
               {
                  this.extraClothesItems.push(this._looks[_loc6_].id);
               }
               _loc6_++;
            }
            if(_loc12_)
            {
               this.dispatchFishChange();
            }
            if(_loc13_)
            {
               this.dispatchDecorationChange();
            }
         }
         else
         {
            Cc.error("InventoryModel.update: data is not Array",param1);
         }
      }
      
      public function dispatchRodChange() : void
      {
         dispatchEvent(this.RODS_CHANGE_EVENT);
      }
      
      public function dispatchBaitChange() : void
      {
         dispatchEvent(this.BAITS_CHANGE_EVENT);
      }
      
      public function dispatchOtherChange() : void
      {
         dispatchEvent(this.OTHER_CHANGE_EVENT);
      }
      
      public function dispatchLooksChange() : void
      {
         dispatchEvent(this.LOOKS_CHANGE_EVENT);
      }
      
      public function dispatchFossilsChange() : void
      {
         dispatchEvent(this.FOSSILS_CHANGE_EVENT);
      }
      
      public function dispatchFishChange() : void
      {
         dispatchEvent(this.FISH_CHANGE_EVENT);
      }
      
      public function dispatchDecorationChange() : void
      {
         dispatchEvent(this.DECORATION_CHANGE_EVENT);
      }
      
      private function addResource(param1:Object) : void
      {
         var _loc2_:UserResource = null;
         var _loc3_:UserLooksResource = null;
         var _loc4_:UserResource = null;
         var _loc5_:UserResource = null;
         var _loc6_:int = int(param1["resourceType"]);
         switch(_loc6_)
         {
            case ResourceType.ROD.id:
               this._rods.push(new UserRod(param1));
               break;
            case ResourceType.BAIT.id:
               this._baits.push(new UserBait(param1));
               break;
            case ResourceType.DECORATION.id:
               this._decorations.push(new UserDecoration(param1));
               break;
            case ResourceType.FISH.id:
            case ResourceType.FISH_SHINY.id:
            case ResourceType.HERB_FISH.id:
               _loc4_ = new UserResource(param1);
               if(_loc4_.quantity != 0)
               {
                  this._fish.push(_loc4_);
               }
               break;
            case ResourceType.OTHER.id:
            case ResourceType.FISHBOX.id:
            case ResourceType.LUCK_POTION.id:
            case ResourceType.MAGIC_WATCH.id:
            case ResourceType.FISH_RADAR.id:
            case ResourceType.EXP_BOOSTER.id:
            case ResourceType.SHINY_POTION.id:
            case ResourceType.POWER_BOOSTER.id:
            case ResourceType.FLOAT.id:
            case ResourceType.FRUIT.id:
               _loc2_ = new UserResource(param1);
               if(_loc2_.quantity != 0)
               {
                  this._other.push(_loc2_);
               }
               break;
            case ResourceType.CLOTHE.id:
               _loc3_ = new UserLooksResource(param1);
               if(_loc3_.quantity > 0)
               {
                  this._looks.push(_loc3_);
               }
               break;
            case ResourceType.FOSSIL.id:
               _loc5_ = new UserResource(param1);
               if(_loc5_.quantity != 0)
               {
                  this._fossils.push(_loc5_);
               }
         }
      }
      
      public function removeResource(param1:UserResource) : void
      {
         var _loc2_:int = 0;
         switch(param1.type)
         {
            case ResourceType.ROD.id:
               _loc2_ = 0;
               while(_loc2_ < this._rods.length)
               {
                  if(param1.id == this._rods[_loc2_].id)
                  {
                     this._rods.splice(_loc2_,1);
                     break;
                  }
                  _loc2_++;
               }
               break;
            case ResourceType.BAIT.id:
               _loc2_ = 0;
               while(_loc2_ < this._baits.length)
               {
                  if(param1.id == this._baits[_loc2_].id)
                  {
                     this._baits.splice(_loc2_,1);
                     break;
                  }
                  _loc2_++;
               }
               break;
            case ResourceType.FISH.id:
            case ResourceType.FISH_SHINY.id:
            case ResourceType.HERB_FISH.id:
               _loc2_ = 0;
               while(_loc2_ < this._fish.length)
               {
                  if(param1.id == this._fish[_loc2_].id && this._fish[_loc2_].type == param1.type)
                  {
                     this._fish.splice(_loc2_,1);
                     break;
                  }
                  _loc2_++;
               }
               break;
            case ResourceType.DECORATION.id:
               _loc2_ = 0;
               while(_loc2_ < this._decorations.length)
               {
                  if((param1 as UserDecoration).id == this._decorations[_loc2_].id)
                  {
                     this._decorations.splice(_loc2_,1);
                     break;
                  }
                  _loc2_++;
               }
               break;
            case ResourceType.OTHER.id:
            case ResourceType.FISHBOX.id:
            case ResourceType.LUCK_POTION.id:
            case ResourceType.MAGIC_WATCH.id:
            case ResourceType.FISH_RADAR.id:
            case ResourceType.EXP_BOOSTER.id:
            case ResourceType.SHINY_POTION.id:
            case ResourceType.POWER_BOOSTER.id:
            case ResourceType.FLOAT.id:
            case ResourceType.FRUIT.id:
               _loc2_ = 0;
               while(_loc2_ < this._other.length)
               {
                  if(param1.id == this._other[_loc2_].id && this._other[_loc2_].type == param1.type)
                  {
                     this._other.splice(_loc2_,1);
                     break;
                  }
                  _loc2_++;
               }
               break;
            case ResourceType.FOSSIL.id:
               _loc2_ = 0;
               while(_loc2_ < this._fossils.length)
               {
                  if(param1.id == this._fossils[_loc2_].id && this._fossils[_loc2_].type == param1.type)
                  {
                     this._fossils.splice(_loc2_,1);
                     break;
                  }
                  _loc2_++;
               }
               break;
            case ResourceType.CLOTHE.id:
               _loc2_ = 0;
               while(_loc2_ < this._looks.length)
               {
                  if(param1.id == this._looks[_loc2_].id)
                  {
                     this._looks.splice(_loc2_,1);
                     break;
                  }
                  _loc2_++;
               }
               this.extraClothesItems.splice(this.extraClothesItems.indexOf(param1.id),1);
         }
      }
      
      public function isRodExist(param1:int) : Boolean
      {
         var _loc2_:UserRod = null;
         var _loc3_:Boolean = false;
         for each(_loc2_ in this._rods)
         {
            if(_loc2_.infoId == param1)
            {
               _loc3_ = true;
               break;
            }
         }
         return _loc3_;
      }
      
      public function isBaitExist(param1:int) : Boolean
      {
         var _loc2_:UserBait = null;
         var _loc3_:Boolean = false;
         for each(_loc2_ in this._baits)
         {
            if(_loc2_.id == param1)
            {
               _loc3_ = true;
               break;
            }
         }
         return _loc3_;
      }
      
      public function getResource(param1:int, param2:int = 0) : UserResource
      {
         var _loc3_:int = 0;
         if(param2 == ResourceType.ALL.id || param2 == ResourceType.ROD.id)
         {
            _loc3_ = 0;
            while(_loc3_ < this._rods.length)
            {
               if(param1 == this._rods[_loc3_].id)
               {
                  return this._rods[_loc3_];
               }
               _loc3_++;
            }
         }
         if(param2 == ResourceType.ALL.id || param2 == ResourceType.BAIT.id)
         {
            _loc3_ = 0;
            while(_loc3_ < this._baits.length)
            {
               if(param1 == this._baits[_loc3_].id)
               {
                  return this._baits[_loc3_];
               }
               _loc3_++;
            }
         }
         if(param2 == ResourceType.ALL.id || param2 == ResourceType.OTHER.id || param2 == ResourceType.FISH.id || param2 == ResourceType.FISHBOX.id || param2 == ResourceType.LUCK_POTION.id || param2 == ResourceType.MAGIC_WATCH.id || param2 == ResourceType.FISH_RADAR.id || param2 == ResourceType.EXP_BOOSTER.id || param2 == ResourceType.SHINY_POTION.id || param2 == ResourceType.POWER_BOOSTER.id || param2 == ResourceType.FLOAT.id || param2 == ResourceType.FRUIT.id)
         {
            _loc3_ = 0;
            while(_loc3_ < this._other.length)
            {
               if(param1 == this._other[_loc3_].id && param2 == this._other[_loc3_].type)
               {
                  return this._other[_loc3_];
               }
               _loc3_++;
            }
         }
         if(param2 == ResourceType.FOSSIL.id)
         {
            _loc3_ = 0;
            while(_loc3_ < this._fossils.length)
            {
               if(param1 == this._fossils[_loc3_].id && param2 == this._fossils[_loc3_].type)
               {
                  return this._fossils[_loc3_];
               }
               _loc3_++;
            }
         }
         if(param2 == ResourceType.FISH.id || param2 == ResourceType.HERB_FISH.id || param2 == ResourceType.FISH_SHINY.id)
         {
            _loc3_ = 0;
            while(_loc3_ < this._fish.length)
            {
               if(param1 == this._fish[_loc3_].id && param2 == this._fish[_loc3_].type)
               {
                  return this._fish[_loc3_];
               }
               _loc3_++;
            }
         }
         if(param2 == ResourceType.DECORATION.id)
         {
            _loc3_ = 0;
            while(_loc3_ < this._decorations.length)
            {
               if(param1 == this._decorations[_loc3_].id && param2 == this._decorations[_loc3_].type)
               {
                  return this._decorations[_loc3_];
               }
               _loc3_++;
            }
         }
         if(param2 == ResourceType.ALL.id || param2 == ResourceType.CLOTHE.id)
         {
            _loc3_ = 0;
            while(_loc3_ < this._looks.length)
            {
               if(param1 == this._looks[_loc3_].id)
               {
                  return this._looks[_loc3_];
               }
               _loc3_++;
            }
         }
         return null;
      }
      
      public function getRod(param1:int) : UserRod
      {
         return UserRod(this.getResource(param1,ResourceType.ROD.id));
      }
      
      public function getBait(param1:int) : UserBait
      {
         return UserBait(this.getResource(param1,ResourceType.BAIT.id));
      }
      
      public function getUserExtraFloatsIds() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:uint = 0;
         while(_loc2_ < this._other.length)
         {
            if(this._other[_loc2_].type == ResourceType.FLOAT.id)
            {
               _loc1_.push(this._other[_loc2_].id);
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function verifyLooksAndFloats() : void
      {
         this.clearNullsInLooksInventory();
         this.verifyLooks();
         this.verifyFloats();
      }
      
      private function clearNullsInLooksInventory() : void
      {
         var _loc1_:UserLooksResource = null;
         var _loc2_:Vector.<UserLooksResource> = new Vector.<UserLooksResource>();
         for each(_loc1_ in this._looks)
         {
            if(_loc1_.quantity != 0)
            {
               _loc2_.push(_loc1_);
            }
            else
            {
               Cc.log("inv","remove from inventory " + _loc1_.toString());
            }
         }
         this._looks = _loc2_;
      }
      
      private function verifyLooks() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:CharViewConfig = CharViewConfig.fromObject(app.char);
         var _loc3_:Array = [];
         var _loc4_:Vector.<UserLooksResource> = this.looks;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length)
         {
            if(_loc4_[_loc5_].quantity > 0)
            {
               _loc3_.push(_loc4_[_loc5_].id);
            }
            _loc5_++;
         }
         Cc.log("inv","inventoryAbsoluteLooksIds=" + _loc3_);
         Cc.log("inv","charViewConfig.hair.type=" + _loc2_.hair.type);
         if(_loc2_.hair.type > 100 && _loc3_.indexOf(ResourceType.getHairAbsoluteIdByCharViewId(_loc2_.hair.type)) < 0)
         {
            if(_loc2_.isMale())
            {
               _loc2_.hair.type = CharViewConfig.MALE_TYPE_HAIR_UNDER_HAT;
            }
            else
            {
               _loc2_.hair.type = CharViewConfig.FEMALE_TYPE_HAIR_UNDER_HAT;
            }
            _loc1_ = true;
         }
         Cc.log("inv","charViewConfig.hat.type=" + _loc2_.hat.type);
         if(_loc2_.hat.type > 100 && _loc3_.indexOf(ResourceType.getHatAbsoluteIdByCharViewId(_loc2_.hat.type)) < 0)
         {
            _loc2_.hat.type = CharViewConfig.NO_HAT;
            _loc1_ = true;
         }
         Cc.log("inv","charViewConfig.shoes.type=" + _loc2_.shoes.type);
         if(_loc2_.shoes.type > 100 && _loc3_.indexOf(ResourceType.getShoesAbsoluteIdByCharViewId(_loc2_.shoes.type)) < 0)
         {
            _loc2_.shoes.type = 1;
            _loc1_ = true;
         }
         if(_loc1_)
         {
            FishaoFscModelManager.updateExtension.update(_loc2_.toString(),app.sid);
         }
      }
      
      private function verifyFloats() : void
      {
         var _loc1_:SettingsModel = GameSwf.instance.gameSettings;
         var _loc2_:Array = this.getUserExtraFloatsIds();
         if(_loc1_.float > 5 && _loc2_.indexOf(_loc1_["float"]) < 0)
         {
            _loc1_.float = 1;
            GameSwf.settings.saveSettings(_loc1_);
         }
      }
   }
}

