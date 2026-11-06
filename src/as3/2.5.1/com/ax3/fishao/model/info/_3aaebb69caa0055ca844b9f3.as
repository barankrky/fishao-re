package com.ax3.fishao.model.info
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.model._7c016a43d731dd4f2bb277fe;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   
   public class _3aaebb69caa0055ca844b9f3
   {
      
      public var id:int;
      
      public var infoId:int;
      
      public var imageFilename:String;
      
      public var extra:String;
      
      public var category:String;
      
      public var isSelected:Boolean;
      
      public var name:String;
      
      public var description:String;
      
      public var throwIns:int;
      
      public var type:int;
      
      public var resourceType:_67282af25befe9778e5c8dd1;
      
      public var color:_91aad973ddd3030366bf3e1f;
      
      public function _3aaebb69caa0055ca844b9f3()
      {
         super();
      }
      
      public static function _92fe2acd593846a5c8ee986f(param1:int, param2:int, param3:int, param4:int = 0) : _3aaebb69caa0055ca844b9f3
      {
         var _loc5_:_3aaebb69caa0055ca844b9f3 = _9cea096d2ad4f2da3ef4e951(_67282af25befe9778e5c8dd1._5a1d463095ae522df1081124(param1),param2,param3,param4);
         _loc5_.type = param1;
         return _loc5_;
      }
      
      public static function _c00baab9ede4c4b6c637510f(param1:int, param2:int, param3:int, param4:int = 0) : _3aaebb69caa0055ca844b9f3
      {
         var _loc5_:_3aaebb69caa0055ca844b9f3 = _9cea096d2ad4f2da3ef4e951(_67282af25befe9778e5c8dd1.OTHER.name,param2,param3,param4,param1);
         _loc5_.type = param1;
         return _loc5_;
      }
      
      public static function _9cea096d2ad4f2da3ef4e951(param1:String, param2:int, param3:int, param4:int = 0, param5:int = 0, param6:_c4d45de32d45523b37ad0cdf = null) : _3aaebb69caa0055ca844b9f3
      {
         var _loc7_:Array = null;
         var _loc8_:String = null;
         if(param1 == _67282af25befe9778e5c8dd1.ROD.name && param4 == (0x4EC4E739 ^ 0x1EA11E4B ^ 0x64F25401 ^ -882355572))
         {
            param4 = -1404941942 ^ -1409497911 ^ 0x284558F7 ^ 0x2FFBD5B5;
         }
         var _loc9_:_3aaebb69caa0055ca844b9f3 = new _3aaebb69caa0055ca844b9f3();
         _loc9_.id = param2;
         _loc9_.infoId = param4;
         if(param1 == _67282af25befe9778e5c8dd1.OTHER.name)
         {
            param1 = _67282af25befe9778e5c8dd1._5a1d463095ae522df1081124(param5);
         }
         _loc9_.imageFilename = _3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(param1,_loc9_.infoId);
         _loc9_.name = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(param1 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劫别剬勿剽劔剶勶励勑","勍勬刔剮勆勓勔别勩務勜券剘則勆劈") + param4);
         var _loc10_:String = "";
         switch(param5)
         {
            case _67282af25befe9778e5c8dd1.FISH_SHINY.id:
               §§push(-2105538028 ^ -193479075 ^ 0x68BDA4A3 ^ 0x1E4A10EA);
               break;
            case _67282af25befe9778e5c8dd1.HERB_FISH.id:
               §§push(-954481816 ^ 0x17ED91F0 ^ 0x06561793 ^ -694139638);
               break;
            default:
               §§push(-692917681 ^ -233049827 ^ -1674104177 ^ -1197594145);
         }
         switch(§§pop())
         {
            case 0:
               _loc10_ = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勽勝勠勪刢剽副勄剎勎勽列","剺剴劲剪劵勡创劄劾勻勴刚劍劋刽刽") + _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၬႾ၅ႸဠႸႆბჿთဥပၠဩႎတြမွႡဧူဋဃၨპဲၭၭႰဉၵၱႅၭက","္ွဍღၓႲဘჽႱဌညჀၫჁႼႉ")) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剝切刢刽剮划刧刻劶劢","劂劦剖别劥劲剶劙勣勅劧剁切副刹劝");
               break;
            case 1:
               _loc10_ = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဗၦၥဥၓှნၺ႑၉ဍႈ","ခဘလხဃ်ვၒჩჿჷှჶႳႠယ") + _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႾႮၮრქუ။၉Ⴃၡၠუဨဆဤၝ့၄ဠႉၡ၀ၮၡხံႌძႊ჎ဧႀტ჆","ဃၔၽိၷၺჇႝိ႟ნႍႯဨკဠ")) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჼუ႔းႪ჆ဟၴ჉ဧ","ံူჸၤၤႾၩၗဩည၊ჰႉ႔Ⴔူ");
               break;
            default:
               _loc10_ = "";
         }
         _loc9_.name += _loc10_;
         switch(param1)
         {
            case _67282af25befe9778e5c8dd1.DECORATION.name:
               §§push(0x0ADE7DCD ^ 0x474065D2 ^ 0x72FFBBA1 ^ 0x3F61A3BE);
               break;
            case _67282af25befe9778e5c8dd1.FOSSIL.name:
               §§push(-1228300263 ^ 0x14CB5A79 ^ -1320536400 ^ 0x1348CCD1);
               break;
            default:
               §§push(-168970896 ^ 0x498BB2A3 ^ 0x2F4A425D ^ -1825815156);
         }
         switch(§§pop())
         {
            case 0:
               _loc9_.description = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劌劬剥刀删勉剛剿务劌勡勀剟勱劙劏则刱剖剼剽剟劣剙劾务劦創勠剛劢劻剺创劤勬勿刌勌勔刾劊剄刢刕劐剎刱刹勶別剡劲劘删剩勦助劮剔刞办勆勫勼务劁剪励勁","加刉刽勳劣労劳劘劮劮劮刎劰削刟制"));
               break;
            case 1:
               _loc7_ = _loc9_.name.split(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揚振揔揉揦掉挗揘挔捅","揖掻捘捠掀捕揨挛捳採揑捘揊揆掰振"));
               _loc7_.pop();
               _loc8_ = _loc7_.join(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揧挟挌揥捴揧揞挩提挼","捙挧掃揱换掆揧捻捈揨捕挰挦揦捦掓"));
               _loc8_ = UtilsString.getFirstCharCapitalized(_loc8_);
               _loc9_.description = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掤掂換揾捭捐掎掺捥捝掞捗掿捡揯挎揻揫掵掜捘捘挞捒掂掺揂揤掩捍","掸挶按揵挗揩揦挗捜挲揇揸揓揆挅揼")).replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ီႺლၽွရ၏စဪဢႉဆၬသႮაၫႮჸႽ","ကၸဒၖႥ႙Ⴀႍၔလဖဩၪၧ႟ၒ"),_loc8_).toUpperCase();
               break;
            default:
               _loc9_.description = _c2ad9d37d7be0097d6d2e977.template(param1 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捑挍捒捣挝掜揅掿揸掔揣掲掫掗捜掇捌掫掚掃","挡掄揵捻振捸捅捒挪掁挖揎挢捈掕捙") + param4,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剣努勤剌剽勨剏劘勨劻剆剦剷勚剌劔勎勋勣劍","劤割剄劚勛勾加别剏别勚則勠劦办勲")):app.user.inventory.amountOfFishrodToBuyLeft}).toUpperCase();
         }
         _loc9_.extra = "";
         _loc9_.category = "";
         _loc9_.isSelected = false;
         _loc9_.throwIns = param3;
         var _loc11_:_7c016a43d731dd4f2bb277fe = _a88e55db393c2e9ea2606a6e(param1);
         if(_loc11_)
         {
            _loc9_.extra = String(_loc11_.getProperty(param2,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("副刄刋劎刺势勧勻刁刢刟勗劊剅劯劅劔劥","分勵劯刽劍动劮勨勵剏劢刱勄刹勸刉"),""));
            _loc9_.category = String(_loc11_.getProperty(param2,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掺挽插捠揖掇揯推掕挡捌揻捛揩掑挱授掞捘揤挏挖掍捨","挽挰捌挘挙揟掍挧挌挌挒捻揨挗掓握"),""));
         }
         _loc9_.resourceType = _67282af25befe9778e5c8dd1._4f0abf31624ad8d39f1e1bfd(param1);
         if(_loc9_.resourceType == _67282af25befe9778e5c8dd1.ROD && param6 is _0760ce29bdab6fd5166927ab)
         {
            _loc9_.color = _91aad973ddd3030366bf3e1f._1b0e8010b91a2c317d9e2641((param6 as _0760ce29bdab6fd5166927ab).color);
         }
         else if(_loc9_.resourceType == _67282af25befe9778e5c8dd1.FISH && param5 == _67282af25befe9778e5c8dd1.FISH_SHINY.id)
         {
            _loc9_.resourceType = _67282af25befe9778e5c8dd1.FISH_SHINY;
         }
         return _loc9_;
      }
      
      private static function _a88e55db393c2e9ea2606a6e(param1:String) : _7c016a43d731dd4f2bb277fe
      {
         var _loc2_:int = 0x66251048 ^ -164282649 ^ 0x0BC5A9E5 ^ 0x1BF7E467;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1612704239 ^ -461464991 ^ -603382455 ^ 0x27B5F214))
            {
               case 0:
                  if(param1 == _67282af25befe9778e5c8dd1.ROD.name)
                  {
                     _loc2_ = 0x3673649C ^ -800229604 ^ 0x3A2463E3 ^ 0x5C38134C;
                  }
                  else
                  {
                     _loc2_ = -352589609 ^ -282050084 ^ -1825877434 ^ 0x16C29861;
                  }
                  break;
               case 1:
                  if(param1 == _67282af25befe9778e5c8dd1.BAIT.name)
                  {
                     _loc2_ = 0x21C55F46 ^ 0x40AB078B ^ -2018854326 ^ 0x66E681AE;
                  }
                  else
                  {
                     _loc2_ = -1088017841 ^ 0x49F1AD5B ^ -1014318429 ^ -1249943911;
                  }
                  break;
               case 2:
                  return app.rodsDict;
               case 3:
                  return null;
               case 4:
                  return app.baitsDict;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function _02b7323f3cae6a46e3f50428(param1:int, param2:int) : String
      {
         return _3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_67282af25befe9778e5c8dd1._5a1d463095ae522df1081124(param2),param1);
      }
      
      public function toString() : String
      {
         return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႞ဏဏႝსစမၦဴာპႽၥႀჯპ့ჟရჹჟါဃဳႨၣၧფ၆ၢဦႠჂၫၶၶ၌ე၃კၶჰ႙ဃ","ဘჟဣၠზႈხလჲ၁ჺဆႲ၏჌ႊ") + this.id + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("်ႼყბႦჾ၈းႛ႔ၱၘႉႆჸၹ၊ႛჭ჊ႉႍ႖ဒ","ႫჴႊჷსဇჃႏფၙ၆ဪ႓၏ღႏ") + this.infoId + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႝဉ႗Ⴈჷღ၀ဉႭსႄႣႽႢဍေႜდၒ၀ၐၝႵတသၫၵ၆","ၿჹჟ႓ဲၹჍၫႇ၏ဆေႠႩးႅ") + this.throwIns + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挏挨接掚捶捴捌捲挡捐措捎","捏揰换掏掞掱捷挗揈揄揇捍揅揞推捦");
      }
   }
}

