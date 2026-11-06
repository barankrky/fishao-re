package com.ax3.fishao.view.dialogs.trade.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model._309cf996e20a1fb3cf1af6b4;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   
   public class _664206d546fdcb718f944b31 implements _309cf996e20a1fb3cf1af6b4
   {
      
      private var _86ff91c12aa7af44925a15bc:int;
      
      private var _f360a113ce36f57baa3eef55:int;
      
      private var _8e3539b6c52d75adb8109757:_67282af25befe9778e5c8dd1;
      
      private var _name:String;
      
      private var _7c9830cca79dede545ea3cd7:int;
      
      private var _description:String;
      
      private var _2a3a7f88b226cd68c5ed1fb6:_91aad973ddd3030366bf3e1f = null;
      
      private var _77ae5522ad0aef91e42ce8cb:String;
      
      public function _664206d546fdcb718f944b31()
      {
         super();
      }
      
      public static function clone(param1:_664206d546fdcb718f944b31) : _664206d546fdcb718f944b31
      {
         var _loc2_:_664206d546fdcb718f944b31 = new _664206d546fdcb718f944b31();
         _loc2_.id = param1.id;
         _loc2_.infoId = param1.infoId;
         _loc2_.quantity = param1.quantity;
         _loc2_.type = param1.type;
         _loc2_.color = param1.color;
         _loc2_.name = param1.name;
         _loc2_.description = param1.description;
         _loc2_.imageUrl = param1.imageUrl;
         return _loc2_;
      }
      
      public function set id(param1:int) : void
      {
         this._86ff91c12aa7af44925a15bc = param1;
      }
      
      public function get id() : int
      {
         return this._86ff91c12aa7af44925a15bc;
      }
      
      public function get infoId() : int
      {
         return this._f360a113ce36f57baa3eef55;
      }
      
      public function get type() : _67282af25befe9778e5c8dd1
      {
         return this._8e3539b6c52d75adb8109757;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get description() : String
      {
         return this._description;
      }
      
      public function get color() : _91aad973ddd3030366bf3e1f
      {
         return this._2a3a7f88b226cd68c5ed1fb6;
      }
      
      public function get imageUrl() : String
      {
         return this._77ae5522ad0aef91e42ce8cb;
      }
      
      public function set type(param1:_67282af25befe9778e5c8dd1) : void
      {
         this._8e3539b6c52d75adb8109757 = param1;
      }
      
      public function get quantity() : int
      {
         return this._7c9830cca79dede545ea3cd7;
      }
      
      public function set infoId(param1:int) : void
      {
         this._f360a113ce36f57baa3eef55 = param1;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set quantity(param1:int) : void
      {
         this._7c9830cca79dede545ea3cd7 = param1;
      }
      
      public function set description(param1:String) : void
      {
         this._description = param1;
      }
      
      public function set color(param1:_91aad973ddd3030366bf3e1f) : void
      {
         this._2a3a7f88b226cd68c5ed1fb6 = param1;
      }
      
      public function set imageUrl(param1:String) : void
      {
         this._77ae5522ad0aef91e42ce8cb = param1;
      }
      
      public function get getAmount() : int
      {
         return this._7c9830cca79dede545ea3cd7;
      }
      
      public function update() : void
      {
         this.setName();
         this._e13beb1cd58ce08919274512();
      }
      
      public function _e13beb1cd58ce08919274512() : void
      {
         var _loc1_:int = 0x04159589 ^ -708686480 ^ 0x01AD1F89 ^ 0x5202970A;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x2792B8A2 ^ 0x3772F366 ^ -1819804406 ^ 0x011FE6B7))
            {
               case 0:
                  this._77ae5522ad0aef91e42ce8cb = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(this._8e3539b6c52d75adb8109757.name,this._86ff91c12aa7af44925a15bc));
                  _loc1_ = -2107036990 ^ -248098851 ^ -211705647 ^ 0x024695B5;
                  break;
               case 1:
                  this._77ae5522ad0aef91e42ce8cb = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(this._8e3539b6c52d75adb8109757.name,this._f360a113ce36f57baa3eef55));
                  _loc1_ = 0x12F1CC51 ^ -1348566785 ^ -1691711648 ^ -1539466315;
                  break;
               case 2:
                  return;
               case 3:
                  if(this._8e3539b6c52d75adb8109757 == _67282af25befe9778e5c8dd1.ROD)
                  {
                     _loc1_ = -1869635845 ^ -1027035400 ^ -986964578 ^ 0x15137DE5;
                  }
                  else
                  {
                     _loc1_ = 0x5A4B5B64 ^ 0x07D46A07 ^ -151157418 ^ 0x291AE44C;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _2efe8d67ce84f35b037ec96c() : Object
      {
         var _loc1_:Object = {};
         _loc1_.id = this._86ff91c12aa7af44925a15bc;
         _loc1_.type = this._8e3539b6c52d75adb8109757.id;
         _loc1_.quantity = this._7c9830cca79dede545ea3cd7;
         if(this._8e3539b6c52d75adb8109757 == _67282af25befe9778e5c8dd1.ROD)
         {
            _loc1_.rodInfoId = this._f360a113ce36f57baa3eef55;
            if(this._2a3a7f88b226cd68c5ed1fb6 != null)
            {
               _loc1_.rodColor = this._2a3a7f88b226cd68c5ed1fb6.name;
            }
         }
         return _loc1_;
      }
      
      public function setName() : void
      {
         switch(this._8e3539b6c52d75adb8109757)
         {
            case _67282af25befe9778e5c8dd1.BAIT:
               §§push(0x74240E0E ^ -645423667 ^ 0x30F4E72A ^ -1655212823);
               break;
            case _67282af25befe9778e5c8dd1.CLOTHE:
               §§push(-443393874 ^ -872370506 ^ 0x32C17D1D ^ 0x1B538B04);
               break;
            case _67282af25befe9778e5c8dd1.FISH:
               §§push(0x3296AC76 ^ -866649492 ^ 0x063AD538 ^ -117734624);
               break;
            case _67282af25befe9778e5c8dd1.FLOAT:
               §§push(0x510077E3 ^ 0x50AA0EA1 ^ 0x7E9ABF1C ^ 0x7F30C65D);
               break;
            case _67282af25befe9778e5c8dd1.DECORATION:
               §§push(0x3A6CE9FF ^ -1501284189 ^ -1670021431 ^ 0x9DAF91);
               break;
            case _67282af25befe9778e5c8dd1.FOSSIL:
               §§push(0x1540E9BA ^ 0x6C719750 ^ -1906338015 ^ -143726130);
               break;
            case _67282af25befe9778e5c8dd1.FISH_SHINY:
               §§push(0x500580C4 ^ -641725720 ^ 0x100DAE14 ^ -1714936770);
               break;
            case _67282af25befe9778e5c8dd1.ROD:
               §§push(0x247C03DA ^ 0x08A07C68 ^ -1270573470 ^ -1734809129);
               break;
            case _67282af25befe9778e5c8dd1.FISHBUCKS:
               §§push(-166891762 ^ 0x559B76BB ^ 0x3343676A ^ -1865056553);
               break;
            case _67282af25befe9778e5c8dd1.FISHBOX:
               §§push(-1905379107 ^ -1736390713 ^ 0x55A06A97 ^ 0x434E9584);
               break;
            case _67282af25befe9778e5c8dd1.FISH_RADAR:
               §§push(-718463125 ^ -557704490 ^ 0x632BBBAB ^ 0x68C4BE1C);
               break;
            case _67282af25befe9778e5c8dd1.LUCK_POTION:
               §§push(0x51753EA6 ^ 0x5B42CC8B ^ 0x33F5A1BC ^ 0x39C2539A);
               break;
            case _67282af25befe9778e5c8dd1.MAGIC_WATCH:
               §§push(-477661327 ^ -1005588317 ^ -1608500849 ^ -2018984367);
               break;
            case _67282af25befe9778e5c8dd1.EXP_BOOSTER:
               §§push(-50859207 ^ 0x04A66A9B ^ -684960120 ^ 0x2F7DCF27);
               break;
            case _67282af25befe9778e5c8dd1.SHINY_POTION:
               §§push(-1892791421 ^ -861321317 ^ 0x0FEEAA81 ^ 0x4C69A697);
               break;
            case _67282af25befe9778e5c8dd1.POWER_BOOSTER:
               §§push(-1180373654 ^ 0x343F0DC1 ^ 0x08A17630 ^ -2059757932);
               break;
            default:
               §§push(0x68F0A05A ^ -1426065264 ^ 0x681D5E10 ^ -1441659190);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
               this._name = _c2ad9d37d7be0097d6d2e977.get(this._8e3539b6c52d75adb8109757.name + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("切勁劸刢劐劯刾劭劀勜","劕刞劉剖刏刉剿刾剈剿刿加劵则刡務") + this._86ff91c12aa7af44925a15bc);
               break;
            case 6:
               this._name = _c2ad9d37d7be0097d6d2e977.get(_67282af25befe9778e5c8dd1.FISH.name + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捹挅捻掺挦捋掰挈掐掌","挀捞捹揳挰捅捓掵掿揣挓揽捞挚捞揔") + this._86ff91c12aa7af44925a15bc) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挾換揽掴揢推揦捬揳掽挠挋","揣捶挀揾掂挚掍揬捞挚掖挕捧捎捄揅") + _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勌劑剈勑劰劝勘剁刔勑劲勾勬勊勸剀勯剛割募剞勴刕勾刦勂割剅勊剼别勹刺勛刧剧","劷剠剭剿勗剑剖剈劓刐劭勎助刨刷功")) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剼剗劥創勗刣剠勐労刻","勀刴勺务刺刓刲勸力劰劂剄初劐剕剑");
               break;
            case 7:
               this._name = _c2ad9d37d7be0097d6d2e977.get(this._8e3539b6c52d75adb8109757.name + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("იზဪဘ္႓ှნ႒Ⴛ","ယხჇႜ၈ၫဓိ၌ဦဗၪၒၞၳ႔") + this._f360a113ce36f57baa3eef55);
               break;
            case 8:
               this._name = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揚揺揪揧挭挎揅揹捋掿揹掩捸捛掌掵捜揗捰挟揱揗授捧揈捦挹援捇捙捉捎捪挙授握捚掋揪挭挢捖捭揎捙捍插掹揁掖掌揷挏掎捅揸","揽掎揝捰掠挡捴掛掚捧捏挸捏掟揂捲"));
               break;
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
               this._name = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၻဲႳၺၯဌေဘაၡဂၨဟၑწბၫၵჅ၊ွႥჱხႰဆ","ჼၡဉဵဤၖႵ჈ၜဠ၅Ⴞၒႈဇသ") + this._86ff91c12aa7af44925a15bc);
               break;
            default:
               if(this._86ff91c12aa7af44925a15bc == _67282af25befe9778e5c8dd1.ID_SHELL && this._8e3539b6c52d75adb8109757 == _67282af25befe9778e5c8dd1.OTHER)
               {
                  this._name = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掮捪捍捛挬挀捬揀挵掅指掷捖揠挽捛揰掋捘捥揰揻授掺捈揟","持挌揃掕揙掽捩挜捷挬握掱採捡掑揆") + this._86ff91c12aa7af44925a15bc);
               }
         }
      }
      
      public function deserialize(param1:Object) : void
      {
         var _loc2_:String = null;
         this._86ff91c12aa7af44925a15bc = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("აწ႟ႭႪგბဘဈႂ჻Ⴆ","ჯႪၛႧဟၯၥၲ၍ႼბფჃျოთ"));
         var _loc3_:int = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揧挴揆捷挷揮挙挈揉捂捾捉挖揷挙揕","捾揓捯控挘指捫捕捓掹揙掙捗捯掣振"));
         this._8e3539b6c52d75adb8109757 = _67282af25befe9778e5c8dd1._6b751ce98cf8b7017db5d6e6(_loc3_);
         this._7c9830cca79dede545ea3cd7 = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၒ္၂ႭှၣၡၬႎჹჂႸဎჄႦေჸღჀ႙Ⴉ၉ႰႧ","Ⴏ႞င჆ၗႣၐၼყျ၂႕ჱတრဏ"));
         if(this._8e3539b6c52d75adb8109757 == _67282af25befe9778e5c8dd1.ROD)
         {
            this._f360a113ce36f57baa3eef55 = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掉插揪揢捈指揲挳捪挆换控掏挃掓揩捬揻挘掶揵捀挂揚掞揩","捄揓掿挺持挺掵挊揀掌掜揧捤揾捂挟"));
            if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剾勗勠利劜划勔动刃剼劾勵剷剡刼勻刘勁勗勢勮划劕勓","初刻助利劻勧刬刭剾剭刁勚刘剷剩勭")))
            {
               _loc2_ = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挸捍捁掋捄揣揧掋捂挆挝捳按揮挋挛按挣揉揍挔掦揶掞","捙挝据揁振挚揃挽挌挾掤揅掲挒挖挾"));
               this._2a3a7f88b226cd68c5ed1fb6 = _91aad973ddd3030366bf3e1f._1b0e8010b91a2c317d9e2641(_loc2_);
            }
         }
         this.setName();
         this._e13beb1cd58ce08919274512();
      }
   }
}

