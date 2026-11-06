package com.ax3.fishao.model.character
{
   import com.ax3.fishao.model.character.clothes.Body;
   import com.ax3.fishao.model.character.clothes.Hair;
   import com.ax3.fishao.model.character.clothes.Hat;
   import com.ax3.fishao.model.character.clothes.Icon;
   import com.ax3.fishao.model.character.clothes.Lower;
   import com.ax3.fishao.model.character.clothes.Shoes;
   import com.ax3.fishao.model.character.clothes.Suit;
   import com.ax3.fishao.model.character.clothes.Upper;
   
   public class CharViewConfig
   {
      
      public static const BODY:int = 1;
      
      public static const UPPER_CLOTHES:int = 2;
      
      public static const LOWER_CLOTHES:int = 3;
      
      public static const HAIR:int = 4;
      
      public static const HAT:int = 5;
      
      public static const SHOES:int = 6;
      
      public static const ICON:int = 7;
      
      public static const SUIT:int = 8;
      
      public static const BACKGROUND_NAME:String = "background";
      
      public static const BODY_NAME:String = "body";
      
      public static const UPPER_CLOTHES_NAME:String = "upper";
      
      public static const LOWER_CLOTHES_NAME:String = "lower";
      
      public static const HAIR_NAME:String = "hairs";
      
      public static const HAT_NAME:String = "hats";
      
      public static const SHOES_NAME:String = "shoes";
      
      public static const ICON_NAME:String = "icons";
      
      public static const SUIT_NAME:String = "suits";
      
      public static const SHOES_SUIT:String = "shoes_for_suit";
      
      public static const SMALL_HEIGHT:int = 90;
      
      public static const SMALL_WIDTH:int = 55;
      
      public static const BIG_HEIGHT:int = 360;
      
      public static const BIG_WIDTH:int = 220;
      
      public static const NO_HAT:int = 1;
      
      public static const HAIRLESS:int = 20;
      
      public static const MALE_TYPE_HAIR_UNDER_HAT:int = 10;
      
      public static const FEMALE_TYPE_HAIR_UNDER_HAT:int = 1;
      
      public static const MALE:int = 1;
      
      public static const FEMALE:int = 2;
      
      public static const FEMALE_TYPE_HAIR_UNDER_HOOD:int = 1;
      
      public static const UPPER_CLOSES_FOR_SUIT_MALE:int = 3;
      
      public static const UPPER_CLOSES_FOR_SUIT_FEMALE:int = 1;
      
      public static const LOWER_CLOSES_FOR_SUIT_MALE:int = 2;
      
      public static const LOWER_CLOSES_FOR_SUIT_FEMALE:int = 3;
      
      public static const NO_SUIT:int = 1;
      
      public static const NO_ICON:int = 11;
      
      public static const SHIRT_MALE:int = 2;
      
      public static const MALE_SUIT_FOR_MODERATOR:int = 6;
      
      public static const FEMALE_SUIT_FOR_MODERATOR:int = 3;
      
      public static const MALE_HAIRS_FOR_MODERATOR:Array = [9,10,20];
      
      public static const FEMALE_HAIRS_FOR_MODERATOR:Array = [1,5,6];
      
      public static const EXTRA_RUN_SHOES:Array = [106,107];
      
      public var body:Body;
      
      public var upperClothes:Upper;
      
      public var lowerClothes:Lower;
      
      public var hair:Hair;
      
      public var hat:Hat;
      
      public var shoes:Shoes;
      
      public var icon:Icon;
      
      public var suit:Suit;
      
      public var isFreeze:Boolean = false;
      
      private var _isModerator:Boolean = false;
      
      public function CharViewConfig(param1:Body, param2:Upper, param3:Lower, param4:Hair, param5:Hat, param6:Shoes, param7:Icon, param8:Suit, param9:Boolean = false)
      {
         super();
         this.body = param1;
         this.hat = param5;
         this.hair = param4;
         if(param5.type != NO_HAT && !param9)
         {
            if(param1.type == MALE)
            {
               this.hair.type = MALE_TYPE_HAIR_UNDER_HAT;
            }
            else
            {
               this.hair.type = FEMALE_TYPE_HAIR_UNDER_HAT;
            }
         }
         this.icon = param7;
         this.lowerClothes = param3;
         this.shoes = param6;
         this.suit = param8;
         this.upperClothes = param2;
      }
      
      public static function fromObject(param1:Object) : CharViewConfig
      {
         var _loc2_:CharViewConfig = null;
         if(param1 is String)
         {
            param1 = JSON.parse(String(param1));
         }
         if(param1.hasOwnProperty("isModerator"))
         {
            _loc2_ = new CharViewConfig(Body.fromObject(param1.body),Upper.fromObject(param1.upperClothes),Lower.fromObject(param1.lowerClothes),Hair.fromObject(param1.hair),Hat.fromObject(param1.hat),Shoes.fromObject(param1.shoes),Icon.fromObject(param1.icon),Suit.fromObject(param1.suit),param1.isModerator);
            _loc2_.isModerator = param1.isModerator;
         }
         else
         {
            _loc2_ = new CharViewConfig(Body.fromObject(param1.body),Upper.fromObject(param1.upperClothes),Lower.fromObject(param1.lowerClothes),Hair.fromObject(param1.hair),Hat.fromObject(param1.hat),Shoes.fromObject(param1.shoes),Icon.fromObject(param1.icon),Suit.fromObject(param1.suit));
         }
         return _loc2_;
      }
      
      public static function reviewCharForModeratorSuit(param1:CharViewConfig, param2:Boolean) : CharViewConfig
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(param1.body.type == 1)
         {
            _loc3_ = CharViewConfig.MALE_SUIT_FOR_MODERATOR;
            if(MALE_HAIRS_FOR_MODERATOR.indexOf(param1.hair.type) == -1)
            {
               _loc4_ = CharViewConfig.MALE_TYPE_HAIR_UNDER_HAT;
            }
            else
            {
               _loc4_ = param1.hair.type;
            }
            _loc5_ = CharViewConfig.LOWER_CLOSES_FOR_SUIT_MALE;
            _loc6_ = CharViewConfig.UPPER_CLOSES_FOR_SUIT_MALE;
         }
         else
         {
            _loc3_ = CharViewConfig.FEMALE_SUIT_FOR_MODERATOR;
            if(FEMALE_HAIRS_FOR_MODERATOR.indexOf(param1.hair.type) == -1)
            {
               _loc4_ = CharViewConfig.FEMALE_TYPE_HAIR_UNDER_HAT;
            }
            else
            {
               _loc4_ = param1.hair.type;
            }
            _loc5_ = CharViewConfig.LOWER_CLOSES_FOR_SUIT_FEMALE;
            _loc6_ = CharViewConfig.UPPER_CLOSES_FOR_SUIT_FEMALE;
         }
         if(param2)
         {
            param1.suit.type = _loc3_;
            param1.upperClothes.type = -1;
            param1.lowerClothes.type = -1;
            param1.hat.type = -1;
            param1.hair.type = _loc4_;
         }
         else if(!param2 && param1.suit.type == _loc3_)
         {
            param1.suit.type = CharViewConfig.NO_SUIT;
            param1.hat.type = CharViewConfig.NO_HAT;
            param1.upperClothes.type = 1;
            param1.lowerClothes.type = 1;
         }
         return param1;
      }
      
      private function clone() : CharViewConfig
      {
         return new CharViewConfig(new Body(this.body.type,this.body.color),new Upper(this.upperClothes.type,this.upperClothes.color),new Lower(this.lowerClothes.type,this.lowerClothes.color),new Hair(this.hair.type,this.hair.color),new Hat(this.hat.type,this.hat.color),new Shoes(this.shoes.type,this.shoes.color),new Icon(this.icon.type,this.icon.color),new Suit(this.suit.type,this.suit.color),this._isModerator);
      }
      
      private function cloneWithChange(param1:int, param2:int, param3:Boolean, param4:Array) : CharViewConfig
      {
         var _loc5_:CharViewConfig = this.clone();
         switch(param1)
         {
            case CharViewConfig.BODY:
               if(param3)
               {
                  _loc5_.body.type = param2;
               }
               else
               {
                  _loc5_.body.color = param2;
               }
               break;
            case CharViewConfig.HAIR:
               if(param3)
               {
                  _loc5_.hair.type = param2;
                  if(param4[0] != -1)
                  {
                     _loc5_.hair.color = param4[0];
                  }
               }
               else if(param4[0] == -1)
               {
                  _loc5_.hair.color = param2;
               }
               else
               {
                  _loc5_.hair.color = param4[0];
               }
               break;
            case CharViewConfig.HAT:
               if(param3)
               {
                  _loc5_.hat.type = param2;
                  if(_loc5_.hat.type != NO_HAT && _loc5_.hat.type != -1 && !_loc5_.isModerator)
                  {
                     if(_loc5_.body.type == MALE)
                     {
                        _loc5_.hair.type = MALE_TYPE_HAIR_UNDER_HAT;
                     }
                     else
                     {
                        _loc5_.hair.type = FEMALE_TYPE_HAIR_UNDER_HAT;
                     }
                  }
               }
               else
               {
                  _loc5_.hat.color = param2;
               }
               break;
            case CharViewConfig.ICON:
               if(param3)
               {
                  _loc5_.icon.type = param2;
               }
               else
               {
                  _loc5_.icon.color = param2;
               }
               break;
            case CharViewConfig.LOWER_CLOTHES:
               if(param3)
               {
                  _loc5_.lowerClothes.type = param2;
               }
               else
               {
                  _loc5_.lowerClothes.color = param2;
               }
               break;
            case CharViewConfig.SHOES:
               if(param3)
               {
                  _loc5_.shoes.type = param2;
                  _loc5_.shoes.color = param4[param2 - 1];
               }
               else
               {
                  _loc5_.shoes.color = param2;
               }
               break;
            case CharViewConfig.SUIT:
               if(param3)
               {
                  _loc5_.suit.type = param2;
               }
               else
               {
                  _loc5_.suit.color = param2;
               }
               break;
            case CharViewConfig.UPPER_CLOTHES:
               if(param3)
               {
                  _loc5_.upperClothes.type = param2;
               }
               else
               {
                  _loc5_.upperClothes.color = param2;
               }
         }
         return _loc5_;
      }
      
      public function getAllValuesOfProperties(param1:int, param2:int) : Vector.<CharViewConfig>
      {
         var _loc3_:Vector.<CharViewConfig> = null;
         var _loc4_:Vector.<CharViewConfig> = new Vector.<CharViewConfig>(param2);
         var _loc5_:int = 0;
         while(_loc5_ < param2)
         {
            _loc4_[_loc5_] = this.cloneWithChange(param1,_loc5_ + 1,false,[]);
            _loc5_++;
         }
         if(this._isModerator && param1 == CharViewConfig.HAIR)
         {
            _loc3_ = new Vector.<CharViewConfig>();
            _loc5_ = 0;
            while(_loc5_ < _loc4_.length)
            {
               if(this.isMale())
               {
                  if(MALE_HAIRS_FOR_MODERATOR.indexOf(_loc4_[_loc5_].hair.type) != -1)
                  {
                     _loc3_.push(this.cloneWithChange(param1,_loc5_ + 1,false,[]));
                  }
               }
               else if(FEMALE_HAIRS_FOR_MODERATOR.indexOf(_loc4_[_loc5_].hair.type) != -1)
               {
                  _loc3_.push(this.cloneWithChange(param1,_loc5_ + 1,false,[]));
               }
               _loc5_++;
            }
            return _loc3_;
         }
         return _loc4_;
      }
      
      public function getAllProperties(param1:int, param2:int, param3:Array) : Vector.<CharViewConfig>
      {
         var _loc4_:Vector.<CharViewConfig> = null;
         var _loc5_:Vector.<CharViewConfig> = new Vector.<CharViewConfig>(param2);
         var _loc6_:int = 0;
         while(_loc6_ < param2)
         {
            _loc5_[_loc6_] = this.cloneWithChange(param1,_loc6_ + 1,true,param3);
            _loc6_++;
         }
         if(this._isModerator && param1 == CharViewConfig.HAIR)
         {
            _loc4_ = new Vector.<CharViewConfig>();
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               if(this.isMale())
               {
                  if(MALE_HAIRS_FOR_MODERATOR.indexOf(_loc5_[_loc6_].hair.type) != -1)
                  {
                     _loc4_.push(this.cloneWithChange(param1,_loc6_ + 1,true,param3));
                  }
               }
               else if(FEMALE_HAIRS_FOR_MODERATOR.indexOf(_loc5_[_loc6_].hair.type) != -1)
               {
                  _loc4_.push(this.cloneWithChange(param1,_loc6_ + 1,true,param3));
               }
               _loc6_++;
            }
            return _loc4_;
         }
         return _loc5_;
      }
      
      public function getPropertyById(param1:int, param2:int, param3:Array) : CharViewConfig
      {
         return this.cloneWithChange(param1,param2,true,param3);
      }
      
      public function toString() : String
      {
         return JSON.stringify(this);
      }
      
      public function fromObject(param1:Object) : void
      {
         this.body.color = param1.body.color;
         this.body.type = param1.body.type;
         this.hat.color = param1.hat.color;
         this.hat.type = param1.hat.type;
         this.hair.color = param1.hair.color;
         this.hair.type = param1.hair.type;
         if(this.hat.type != NO_HAT && this.hat.type != -1)
         {
            if(this.body.type == MALE)
            {
               this.hair.type = MALE_TYPE_HAIR_UNDER_HAT;
            }
            else
            {
               this.hair.type = FEMALE_TYPE_HAIR_UNDER_HAT;
            }
         }
         this.icon.color = param1.icon.color;
         this.icon.type = param1.icon.type;
         this.lowerClothes.color = param1.lowerClothes.color;
         this.lowerClothes.type = param1.lowerClothes.type;
         this.shoes.color = param1.shoes.color;
         this.shoes.type = param1.shoes.type;
         this.suit.color = param1.suit.color;
         this.suit.type = param1.suit.type;
         this.upperClothes.color = param1.upperClothes.color;
         this.upperClothes.type = param1.upperClothes.type;
         if(param1.hasOwnProperty("isModerator"))
         {
            this.isModerator = param1.isModerator;
         }
      }
      
      public function fromOtherCharacter(param1:CharViewConfig) : void
      {
         this.body.type = param1.body.type;
         this.body.color = param1.body.color;
         this.hat.type = param1.hat.type;
         this.hat.color = param1.hat.color;
         this.hair.type = param1.hair.type;
         this.hair.color = param1.hair.color;
         this.icon.type = param1.icon.type;
         this.icon.color = param1.icon.color;
         this.lowerClothes.type = param1.lowerClothes.type;
         this.lowerClothes.color = param1.lowerClothes.color;
         this.shoes.type = param1.shoes.type;
         this.shoes.color = param1.shoes.color;
         this.suit.type = param1.suit.type;
         this.suit.color = param1.suit.color;
         this.upperClothes.type = param1.upperClothes.type;
         this.upperClothes.color = param1.upperClothes.color;
      }
      
      public function isMale() : Boolean
      {
         return this.body.type == 1;
      }
      
      public function get isModerator() : Boolean
      {
         if(this.suit != null)
         {
            if(this.isMale() && this.suit.type == MALE_SUIT_FOR_MODERATOR || !this.isMale() && this.suit.type == FEMALE_SUIT_FOR_MODERATOR)
            {
               this._isModerator = true;
            }
         }
         return this._isModerator;
      }
      
      public function set isModerator(param1:Boolean) : void
      {
         this._isModerator = param1;
      }
   }
}

