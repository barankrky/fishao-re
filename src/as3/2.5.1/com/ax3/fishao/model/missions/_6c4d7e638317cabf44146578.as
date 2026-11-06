package com.ax3.fishao.model.missions
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   
   public class _6c4d7e638317cabf44146578
   {
      
      private var _ea0a9fce48a69da79b5c3470:int;
      
      private var _7c26c6ec072f726a1e108496:int;
      
      private var _79c62a90b44fa34d03669bde:String;
      
      private var _28c839b3da9d439124813279:String;
      
      private var _93a8bf8d72f56328a4b96d2b:String;
      
      private var _3c6f8dbca433ab7fc0878e49:Vector.<int>;
      
      private var _03f2de87e47f1954ad8fe17e:String;
      
      private var _920ccedcacef619ab7c74c35:int;
      
      private var _4ba7f47e5c342e0bdfb10e26:int;
      
      private var _2f1821dcad05b5c4a0eeca35:Boolean;
      
      private var _27aefc81043a7a271e1245dc:Boolean;
      
      private var _11b3cff6886282ec4b3e31ca:Boolean;
      
      private var _00dbf56303b549f5bfc83518:int;
      
      private var _c1695858d0fc42daf4ce1a6e:int;
      
      private var _13bc04737e50ce95d4c42e71:int;
      
      private var _c86a61a8fccd1720e32f03bd:Vector.<int>;
      
      public function _6c4d7e638317cabf44146578(param1:Object)
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0x30BD37F5 ^ -732700 ^ 0x5F396346 ^ -1871674025;
         super();
         this._ea0a9fce48a69da79b5c3470 = parseInt(param1.id);
         this._79c62a90b44fa34d03669bde = String(param1.type);
         this._28c839b3da9d439124813279 = String(param1.action);
         this._93a8bf8d72f56328a4b96d2b = String(param1.actionProperty);
         this._03f2de87e47f1954ad8fe17e = param1.rewardType;
         this._920ccedcacef619ab7c74c35 = param1.rewardTypeId;
         this._4ba7f47e5c342e0bdfb10e26 = param1.rewardAmount;
         this._7c26c6ec072f726a1e108496 = param1.levelRequirement;
         this._2f1821dcad05b5c4a0eeca35 = param1.isDone;
         this._27aefc81043a7a271e1245dc = param1.isAccepted;
         this._11b3cff6886282ec4b3e31ca = param1.rewardCollected;
         this._3c6f8dbca433ab7fc0878e49 = new Vector.<int>();
         var _loc4_:Array = JSON.parse(param1.values) as Array;
         var _loc5_:int = -1842441374 ^ 0x37566353 ^ 0x1F2804B3 ^ -1169099646;
         while(_loc5_ < _loc4_.length)
         {
            this._3c6f8dbca433ab7fc0878e49.push(parseInt(_loc4_[_loc5_]));
            _loc5_++;
         }
         this._c86a61a8fccd1720e32f03bd = new Vector.<int>();
         if(param1.condition)
         {
            _loc2_ = JSON.parse(param1.condition) as Array;
            _loc3_ = -884556595 ^ -1024338554 ^ 0x0F4E1325 ^ 0x06F97A6E;
            while(_loc3_ < _loc2_.length)
            {
               this._c86a61a8fccd1720e32f03bd.push(parseInt(_loc2_[_loc3_]));
               _loc3_++;
            }
         }
         this._00dbf56303b549f5bfc83518 = param1.timeAgoSec;
         this._c1695858d0fc42daf4ce1a6e = param1.acceptedTimeSec;
         this._13bc04737e50ce95d4c42e71 = param1.completedTimeSec;
      }
      
      private function _cd842908cecb57e6b88e3351(param1:int, param2:int) : int
      {
         var _loc3_:int = -332039275 ^ 0x499A7E71 ^ -320043818 ^ 0x01EC5690;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-167569887 ^ -1903659299 ^ -1700451487 ^ -1434346433))
            {
               case 0:
                  if(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剪勃削则刅刳刄分劫刄刘労剢剷列刱刣劼","刬刂努勒勆勏勗创勭勋別劐劅剭剭勩") + param1) > _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劯剱刽刐剾剱勵刯刟刵勚剘勅勠剰刾劕刎","剡剉剆効削勄劻劒别則劭剘勊割勷劥") + param2))
                  {
                     _loc3_ = -351307497 ^ 0x4D017C05 ^ -1855295295 ^ 0x7FCBA273;
                  }
                  else
                  {
                     _loc3_ = -1884604706 ^ 0x5314274E ^ 0x354892C8 ^ -1588046597;
                  }
                  break;
               case 1:
                  if(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剻刮勨别剁初劘勠勦刲刎副勅劣削剱劘剶","勸剬刖勩動劾刵勳刡劉劺劮劲勇劏勞") + param1) < _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴥ၏ლშဋ်ၦၙႜႲႽမ႔ၩဠჹყო","၂ဪၯၤၤႹ၃ძာၒ၈႑ႦႠအႋ") + param2))
                  {
                     _loc3_ = -387784214 ^ 0x152F7324 ^ 0x0C43809D ^ -1188968971;
                  }
                  else
                  {
                     _loc3_ = -472583240 ^ 0x78963237 ^ 0x0F448D9E ^ -592864336;
                  }
                  break;
               case 2:
                  return -1094865801 ^ 0x78816752 ^ 0x6F52558C ^ -1452368216;
               case 3:
                  return -657656637 ^ 0x1019DF43 ^ 0x123331FD ^ -622454147;
               case 4:
                  return -1664620500 ^ 0x7A74315E ^ -806993039 ^ -693475844;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _46510889e1df65979cde1c28(param1:int, param2:int) : int
      {
         var _loc3_:int = 0x686054C5 ^ 0x3EA1ED2F ^ 0x32F42661 ^ 0x21760F7D;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1357661933 ^ -513659399 ^ -562458739 ^ -716469358))
            {
               case 0:
                  if(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႦခႴბႅუ႒ၶႎဢႍ႕ႄბှჩჃ၃၈နႴၰ့ဵႵၤဪႷဪწ","ၐၚჁႏ႐ံႝპဦႺ჎Ⴆ჎ხြႶ") + param1) < _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掓捋控捓挍提挽揌挹掁捹掊掾掐挋捲捞挣揚捤掜挝挈掖捼挈揉挘捁揆","掻掚挺掚掞捲揨揲捛挕排捚掃揲挙掱") + param2))
                  {
                     _loc3_ = -507101182 ^ 0x449E51E5 ^ -1704988775 ^ 0x7A446E8F;
                  }
                  else
                  {
                     _loc3_ = 0x1C3C8F94 ^ 0x5E4AA546 ^ -922546316 ^ -835275438;
                  }
                  break;
               case 1:
                  return -33925741 ^ 0x18A69107 ^ -1639666098 ^ 0x7B186ADA;
               case 2:
                  return -566031591 ^ -2001232033 ^ -136128984 ^ -1592376721;
               case 3:
                  if(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劸刺剮勮剫刵刺劂勂剻劐剅刿划刚刎剉勠剽勡劣则創勰劣剣刭創剗剙","剎劵剬勽劉勀劗切劑勔刨剼助劾剭劰") + param1) > _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႓ၟယၲაႜგႷၧႻဘ၄ဌ။ၴႇဿ၉ေსჶ႓ၮပငჾဩန႕ჹ","ဂა၎၄ၲჵ႟ბၦႍკၦၣာၵ၂") + param2))
                  {
                     _loc3_ = -391070386 ^ 0x3818AB7C ^ -921608511 ^ 0x5CFAD804;
                  }
                  else
                  {
                     _loc3_ = 0x0F63DA21 ^ -2127628893 ^ 0x67E75D8E ^ -1393958151;
                  }
                  break;
               case 4:
                  return 0x59540C07 ^ 0x23E5EF2D ^ 0x5E21E75E ^ -613418101;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get id() : int
      {
         return this._ea0a9fce48a69da79b5c3470;
      }
      
      public function get timeAgoSec() : int
      {
         return this._00dbf56303b549f5bfc83518;
      }
      
      public function get reward() : String
      {
         return this._03f2de87e47f1954ad8fe17e;
      }
      
      public function get isDone() : Boolean
      {
         return this._2f1821dcad05b5c4a0eeca35;
      }
      
      public function set timeAgoSec(param1:int) : void
      {
         this._00dbf56303b549f5bfc83518 = param1;
      }
      
      public function get type() : String
      {
         return this._79c62a90b44fa34d03669bde;
      }
      
      public function set type(param1:String) : void
      {
         this._79c62a90b44fa34d03669bde = param1;
      }
      
      public function get requirement() : Object
      {
         return this._7c26c6ec072f726a1e108496;
      }
      
      public function get values() : Vector.<int>
      {
         return this._3c6f8dbca433ab7fc0878e49;
      }
      
      public function get condition() : Vector.<int>
      {
         return this._c86a61a8fccd1720e32f03bd;
      }
      
      public function set condition(param1:Vector.<int>) : void
      {
         this._c86a61a8fccd1720e32f03bd = param1;
      }
      
      public function get rewardTypeId() : int
      {
         return this._920ccedcacef619ab7c74c35;
      }
      
      public function set rewardTypeId(param1:int) : void
      {
         this._920ccedcacef619ab7c74c35 = param1;
      }
      
      public function get rewardAmount() : int
      {
         return this._4ba7f47e5c342e0bdfb10e26;
      }
      
      public function set rewardAmount(param1:int) : void
      {
         this._4ba7f47e5c342e0bdfb10e26 = param1;
      }
      
      public function get isAccepted() : Boolean
      {
         return this._27aefc81043a7a271e1245dc;
      }
      
      public function set isAccepted(param1:Boolean) : void
      {
         this._27aefc81043a7a271e1245dc = param1;
      }
      
      public function get action() : String
      {
         return this._28c839b3da9d439124813279;
      }
      
      public function set action(param1:String) : void
      {
         this._28c839b3da9d439124813279 = param1;
      }
      
      public function get actionProperty() : String
      {
         return this._93a8bf8d72f56328a4b96d2b;
      }
      
      public function set actionProperty(param1:String) : void
      {
         this._93a8bf8d72f56328a4b96d2b = param1;
      }
      
      public function get rewardCollected() : Boolean
      {
         return this._11b3cff6886282ec4b3e31ca;
      }
      
      public function set rewardCollected(param1:Boolean) : void
      {
         this._11b3cff6886282ec4b3e31ca = param1;
      }
      
      public function get acceptedTimeSec() : int
      {
         return this._c1695858d0fc42daf4ce1a6e;
      }
      
      public function get completedTimeSec() : int
      {
         return this._13bc04737e50ce95d4c42e71;
      }
   }
}

