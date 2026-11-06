package com.ax3.signals
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   
   public final class SlotList
   {
      
      public static const NIL:SlotList = new SlotList(null,null);
      
      public var head:ISlot;
      
      public var tail:SlotList;
      
      public var nonEmpty:Boolean = false;
      
      public function SlotList(param1:ISlot, param2:SlotList = null)
      {
         super();
         if(!param1 && !param2)
         {
            if(NIL)
            {
               throw new ArgumentError(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႜၴ၍Ⴔღၹဓဥည჉ၨၺၱაၞ჌ၔႄ႘჻ႉႊჷၯဢဈႪံჱ჉ခၕါ႕်ျဩႿႀၸဌၮႌႅႜႫဟၚၩ၅၇ဧႁၜზსၻძ၂მ၄၂္ဖႄၥ၆၏ႊჀႋႼჴၻႣႥ჏ၰၥႲၡဨၬႍ၂ဋႋ့ဎႋႎდဩႠჁ႑ჅႾႊႚႯქဿၐးჅწၣၗ၊ႇწ႟ါჱ჻့ဋဈჳძၪ჌ိ႐ဳဉဘႎეႣႭ၃ဋ","ႚၜოၐსၻနიშၾ႑ဨၥ჌ၮღ"));
            }
            this.nonEmpty = false;
         }
         else
         {
            if(!param1)
            {
               throw new ArgumentError(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("მ჻ჼဟၤကႆဘპფဤၲიქဓჾင႙ၾဣၪႋစၴႉუგနဇ၅ၭဂ၎იၔႸကထჩ၂჉გအႴၸဍჀတ၏ჼ၌၁႖დၸ၃Ⴇ႑းၳဎငွအၓ္ႈဈ","Ⴉ၉႙ၲႭၓ჊პၕჵၐဣშါႆႵ"));
            }
            this.head = param1;
            this.tail = param2 || NIL;
            this.nonEmpty = true;
         }
      }
      
      public function get length() : uint
      {
         if(!this.nonEmpty)
         {
            return -213347288 ^ -2132642421 ^ -1532970633 ^ -687187756;
         }
         if(this.tail == NIL)
         {
            return 0x7B598D05 ^ 0x7FB9592C ^ 0x41755526 ^ 0x4595810E;
         }
         var _loc1_:uint = uint(0x4E2BB07A ^ -1650886460 ^ 0x4037F217 ^ -1819985239);
         var _loc2_:SlotList = this;
         while(_loc2_.nonEmpty)
         {
            _loc1_++;
            _loc2_ = _loc2_.tail;
         }
         return _loc1_;
      }
      
      public function prepend(param1:ISlot) : SlotList
      {
         return new SlotList(param1,this);
      }
      
      public function append(param1:ISlot) : SlotList
      {
         if(!param1)
         {
            return this;
         }
         if(!this.nonEmpty)
         {
            return new SlotList(param1);
         }
         if(this.tail == NIL)
         {
            return new SlotList(param1).prepend(this.head);
         }
         var _loc2_:SlotList = new SlotList(this.head);
         var _loc3_:SlotList = _loc2_;
         var _loc4_:SlotList = this.tail;
         while(_loc4_.nonEmpty)
         {
            _loc3_ = _loc3_.tail = new SlotList(_loc4_.head);
            _loc4_ = _loc4_.tail;
         }
         _loc3_.tail = new SlotList(param1);
         return _loc2_;
      }
      
      public function insertWithPriority(param1:ISlot) : SlotList
      {
         if(!this.nonEmpty)
         {
            return new SlotList(param1);
         }
         var _loc2_:int = param1.priority;
         if(_loc2_ > this.head.priority)
         {
            return this.prepend(param1);
         }
         var _loc3_:SlotList = new SlotList(this.head);
         var _loc4_:SlotList = _loc3_;
         var _loc5_:SlotList = this.tail;
         while(_loc5_.nonEmpty)
         {
            if(_loc2_ > _loc5_.head.priority)
            {
               _loc4_.tail = _loc5_.prepend(param1);
               return _loc3_;
            }
            _loc4_ = _loc4_.tail = new SlotList(_loc5_.head);
            _loc5_ = _loc5_.tail;
         }
         _loc4_.tail = new SlotList(param1);
         return _loc3_;
      }
      
      public function filterNot(param1:Function) : SlotList
      {
         if(!this.nonEmpty || param1 == null)
         {
            return this;
         }
         if(param1 == this.head.listener)
         {
            return this.tail;
         }
         var _loc2_:SlotList = new SlotList(this.head);
         var _loc3_:SlotList = _loc2_;
         var _loc4_:SlotList = this.tail;
         while(_loc4_.nonEmpty)
         {
            if(_loc4_.head.listener == param1)
            {
               _loc3_.tail = _loc4_.tail;
               return _loc2_;
            }
            _loc3_ = _loc3_.tail = new SlotList(_loc4_.head);
            _loc4_ = _loc4_.tail;
         }
         return this;
      }
      
      public function contains(param1:Function) : Boolean
      {
         if(!this.nonEmpty)
         {
            return false;
         }
         var _loc2_:SlotList = this;
         while(_loc2_.nonEmpty)
         {
            if(_loc2_.head.listener == param1)
            {
               return true;
            }
            _loc2_ = _loc2_.tail;
         }
         return false;
      }
      
      public function find(param1:Function) : ISlot
      {
         if(!this.nonEmpty)
         {
            return null;
         }
         var _loc2_:SlotList = this;
         while(_loc2_.nonEmpty)
         {
            if(_loc2_.head.listener == param1)
            {
               return _loc2_.head;
            }
            _loc2_ = _loc2_.tail;
         }
         return null;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "";
         var _loc2_:SlotList = this;
         while(_loc2_.nonEmpty)
         {
            _loc1_ += _loc2_.head + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴈყ့ძႮဗူთოၷჄၞმၛၓႚ","Ⴒႀၘျၷြၙရ႟ဣႧ႒ဝငဆჂ");
            _loc2_ = _loc2_.tail;
         }
         _loc1_ += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捬推挊揆挞捴揚揁捌援握捞掌揪","捽揗挑掇挴挵揸捉揝掿揙揈捚掎掘掵");
         return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刐劾勼刄勒刉削剙劈勨剃勚勈剷勊勬勖勎勼刑","刎劔劲刯刣勊劰剋剴勨勺劊剈劏勇刊") + _loc1_ + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掓捬揅挭揗换揨掋挵挍","揧挃挦挕挪捉掀捒挒捌捴挏捦握挱挣");
      }
   }
}

