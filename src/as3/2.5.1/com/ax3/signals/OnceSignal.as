package com.ax3.signals
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.errors.IllegalOperationError;
   import flash.utils.getQualifiedClassName;
   
   public class OnceSignal implements IOnceSignal
   {
      
      protected var _valueClasses:Array;
      
      protected var slots:SlotList = SlotList.NIL;
      
      public function OnceSignal(... rest)
      {
         super();
         this.valueClasses = rest.length == (-369525882 ^ -1893472528 ^ -1407289647 ^ -893064282) && rest[-732076312 ^ -138250248 ^ -607590291 ^ -128452227] is Array ? rest[0x6DDD7E17 ^ -135112764 ^ 0x3906E027 ^ -1557542412] : rest;
      }
      
      public function get valueClasses() : Array
      {
         return this._valueClasses;
      }
      
      public function set valueClasses(param1:Array) : void
      {
         this._valueClasses = param1 ? param1.slice() : [];
         var _loc2_:* = int(this._valueClasses.length);
         while(_loc2_--)
         {
            if(!(this._valueClasses[_loc2_] is Class))
            {
               throw new ArgumentError(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刎剣勼刳劏劇劽勡勸劯勋劅刪劽刚創勌勇剷勩剐刃勨剼刑利勪勽刌募劁劈刲勵劓劌刼劾制勎剁刹勢勄刜勶力刏剫剝剋勱勩剤刪剠刀功刍剭剀勸刴勇劰勯劎劶勝劎","剝削勤剺勫勱別勀刌刔劋刽劥剬勺勣") + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၢူႄုႜ႖္၉ၹဵရ၁Ⴈ჊႟႖ტုლၓ჌ၚႴ႑თ჈ქჁဃႣၻႮဿ჉Ⴟၶ","რဵႜჷ႓ႦေဒႰႇჩტဲဦ႗ႋ") + _loc2_ + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挷措捾揜挨揱揯捧揜挬捎捅掕掜捁掎採捂掃捦揽掤掮掇揬挢掎挷掠挫挟捎捹掽掔挴挍挊揳挙挣捪掶挞挼挕捃插指掔揞捽捎挭掸排掱挞挿揔捨捰挃捣","掟掛揫捻掣揰捭捴揆捒掀挄掕挓揋指") + this._valueClasses[_loc2_] + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勝办判刺劑劦刱劦剢劀劽勪","劇劫勱勤删勦剈勦刑刄刲勅剓劏剂则") + getQualifiedClassName(this._valueClasses[_loc2_]));
            }
         }
      }
      
      public function get numListeners() : uint
      {
         return this.slots.length;
      }
      
      public function addOnce(param1:Function) : ISlot
      {
         return this.registerListener(param1,true);
      }
      
      public function remove(param1:Function) : ISlot
      {
         var _loc2_:ISlot = this.slots.find(param1);
         if(!_loc2_)
         {
            return null;
         }
         this.slots = this.slots.filterNot(param1);
         return _loc2_;
      }
      
      public function removeAll() : void
      {
         this.slots = SlotList.NIL;
      }
      
      public function dispatch(... rest) : void
      {
         var _loc2_:int = int(this._valueClasses.length);
         var _loc3_:int = int(rest.length);
         if(_loc3_ < _loc2_)
         {
            throw new ArgumentError(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剨勛刀刎刺刈勇勉勋勯劥刌勤刮劏剙刱勫勼劃劭剃刭劌刾勳勅剤剥動劽勐募劇勋則助刋剆剛勧勝劘分勩削勼勆刌剈募劾勁剨勸劉勹剔剣刁剅劧剧刈劮劐勘加刿劓","劣刌剫刢加劎动剞劝勛勾劳剪刢刈刜") + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("换换掉挢掻捃捚措掀揅掊換挀掇挝捁掝掕掏揂捭掲掼掭捾挪揎挹挬插掗探揍掞挜捗捏捈掬挾掖捵揗排","措捡捓接挲捨揣揥捷挸掹挚捞挾挲揎") + _loc2_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勭剂勆勾勽办勁剞刍剷剾励劙勠剮勪勉刬刖剅刂劻動助劜剁勈刜剣剱勝勆劌剺劘劥","刢劁剻劅剀劗削劉劉剟刲剡刪刦刧劗") + _loc3_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၮ့ღှ႐႖႒ႎဩჅ","၉ၜိၞၸထနပၸၳႷ႔ဃჼ၈ႚ"));
         }
         var _loc4_:int = 0x3352DC4A ^ -1970865096 ^ -771809197 ^ 0x682B0021;
         while(_loc4_ < _loc2_)
         {
            if(!(rest[_loc4_] is this._valueClasses[_loc4_] || rest[_loc4_] === null))
            {
               throw new ArgumentError(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捆捐掘挭挲捖挄揨捲掆挗揈挚掆掖掗掾掂挱挞揻挨掵挥揮掃揲捺揪捗掾挌挘揑掚揩","捖损挑掯换捯捭捝揅捰掠挡挦揽捠挔") + rest[_loc4_] + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("按揻挫损挈捹捠挱捏换揸揖揟挆掬換掩揖揇揲按挎插揱揃挼挝掑挹掜掠掬挓採揥捛挰按揤捋排掶掆揤採探挮掉挺捐挼挛揆掖掎揷掋捇","揜掗挐採插揈揦挛换掹掩掸捇援揰揫") + this._valueClasses[_loc4_] + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勶劾剁劐勮剛剣勐剛劉刭刖","剎刼劖则勸刃刨刜勌劈劆勲剪劓刽劷"));
            }
            _loc4_++;
         }
         var _loc5_:SlotList = this.slots;
         if(_loc5_.nonEmpty)
         {
            while(_loc5_.nonEmpty)
            {
               _loc5_.head.execute(rest);
               _loc5_ = _loc5_.tail;
            }
         }
      }
      
      protected function registerListener(param1:Function, param2:Boolean = false) : ISlot
      {
         var _loc3_:ISlot = null;
         if(this.registrationPossible(param1,param2))
         {
            _loc3_ = new Slot(param1,this,param2);
            this.slots = this.slots.prepend(_loc3_);
            return _loc3_;
         }
         return this.slots.find(param1);
      }
      
      protected function registrationPossible(param1:Function, param2:Boolean) : Boolean
      {
         if(!this.slots.nonEmpty)
         {
            return true;
         }
         var _loc3_:ISlot = this.slots.find(param1);
         if(!_loc3_)
         {
            return true;
         }
         if(_loc3_.once != param2)
         {
            throw new IllegalOperationError(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჇႾ჻ဨဵႳჲႽၧძႨႿჅჭ႘ზვპလဈႩუရთთႨႋၸႷ။ႏႆ႓သၟႚჰာၵဉၣ႕ႵးჹၞჍွაႸႿჟၠ၄჌ၠႚ၊Ⴄ჏သ႓႒ႩჀႎქ჏ၗႤ႞ႧჰႡဥ္႖჈ဒၿსყ႟ၠၼჰძႽ႖ჷ႔ჵဠცၘႁ႗ღ႓ဣჟჲသႲၗႫႩဖေသၛႼႾႉႜ၏დ႔ှჲၟႃოၺႫဤჸႵ္ၮၻႺၝၚႡႲဏყဆၲၛၫဦ႑ည჏ႍდბ჉ოტႼ႙ზႷဴ၈႘ၣႬၭႱ႔აႤ჈စფ၀Ⴒႁၒၻဒწ၌ၕၲဴქၾ၃ၪၛဈၴဵ","Ⴡჸრჭჿဎ။჎ეင၍ႇၕႊၭၡ"));
         }
         return false;
      }
   }
}

