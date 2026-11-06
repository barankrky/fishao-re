package com.ax3.fishao.view.dialogs.missions
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.model.missions._6c4d7e638317cabf44146578;
   import com.ax3.fishao.model.missions._9e4dde010354b3b2f826e82e;
   import com.ax3.fishao.model.types._4550d767240c3d7f4adff121;
   import com.ax3.fishao.model.types._704801704e2529c9dcb315d1;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl._89027603939c39853027fd04;
   import flash.events.MouseEvent;
   
   public class _4b5a19ada8c53700a7227781 extends _f57d5b1dc514f5ff36497030
   {
      
      private var _c1f8932135eef6886086105d:_6c4d7e638317cabf44146578;
      
      private var _fc37c2cfcce2702b59d74c41:_9e4dde010354b3b2f826e82e = new _9e4dde010354b3b2f826e82e();
      
      private var _97da5c989aa39fc1865ba909:_73899a4de8f83c8d2c26f545;
      
      public function _4b5a19ada8c53700a7227781()
      {
         super();
      }
      
      public static function _55f94f258094d999ec9ca580(param1:String) : String
      {
         switch(param1)
         {
            case _704801704e2529c9dcb315d1.BAIT:
               §§push(-857337953 ^ -967727985 ^ 0x49E12B81 ^ 0x43568091);
               break;
            case _704801704e2529c9dcb315d1.ROD:
               §§push(-590711041 ^ 0x399F3789 ^ 0x45CE77DC ^ -1600440661);
               break;
            case _704801704e2529c9dcb315d1.FURNITURE:
               §§push(0x3D4F6FFC ^ 0x42362886 ^ 0x40C4E945 ^ 0x3FBDAE3D);
               break;
            case _704801704e2529c9dcb315d1.LUCK_POTION:
               §§push(-1280938442 ^ 0x6E53251B ^ -1538397507 ^ 0x79B8A193);
               break;
            case _704801704e2529c9dcb315d1.MAGIC_WATCH:
               §§push(-2062026917 ^ 0x27D08FE9 ^ 0x33A54A8E ^ -1855835592);
               break;
            case _704801704e2529c9dcb315d1.RADAR:
               §§push(0x3E45BDDF ^ 0x50AAD38A ^ -288645962 ^ -2145062170);
               break;
            case _704801704e2529c9dcb315d1.ENERGY:
               §§push(-210901103 ^ 0x17B839D4 ^ 0x2DB065B0 ^ -916079629);
               break;
            case _704801704e2529c9dcb315d1.FISHBUCKS:
               §§push(0x11CEAC7D ^ 0x1A904685 ^ 0x2AF3F5B4 ^ 0x21AD1F4B);
               break;
            case _704801704e2529c9dcb315d1.FISHCOINS:
               §§push(-324746545 ^ 0x26BDE23B ^ -1449334398 ^ 0x6385C97E);
               break;
            case _704801704e2529c9dcb315d1.SHINY_POTION:
               §§push(-1204878442 ^ 0x2E563F91 ^ -688671991 ^ 0x408A8F07);
               break;
            default:
               §§push(-950621899 ^ -973684769 ^ -745883558 ^ -785731910);
         }
         switch(§§pop())
         {
            case 0:
               return _67282af25befe9778e5c8dd1.BAIT.name;
            case 1:
               return _67282af25befe9778e5c8dd1.ROD.name;
            case 2:
               return _67282af25befe9778e5c8dd1.DECORATION.name;
            case 3:
               return _67282af25befe9778e5c8dd1.LUCK_POTION.name;
            case 4:
               return _67282af25befe9778e5c8dd1.MAGIC_WATCH.name;
            case 5:
               return _67282af25befe9778e5c8dd1.FISH_RADAR.name;
            case 6:
               return _67282af25befe9778e5c8dd1.ENERGY.name;
            case 7:
               return _67282af25befe9778e5c8dd1.FISHBUCKS.name;
            case 8:
               return _67282af25befe9778e5c8dd1.FISHCOINS.name;
            case 9:
               return _67282af25befe9778e5c8dd1.SHINY_POTION.name;
            default:
               return "";
         }
      }
      
      public function _9c6b10d69a8856063192b0c5(param1:_6c4d7e638317cabf44146578) : void
      {
         this._c1f8932135eef6886086105d = param1;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var missionDescText:String = null;
         var missionTitleText:String = null;
         var defaultTextFieldY:Number = NaN;
         var defaultTextFieldHeight:Number = NaN;
         var kind:String = null;
         var imageFilename:String = null;
         var bitmap:_a4e47350c89a50d87a148c28 = null;
         closeButton.handler = function(param1:MouseEvent):void
         {
            close();
         };
         this._97da5c989aa39fc1865ba909 = new _73899a4de8f83c8d2c26f545(labelMissionTitle);
         missionDescText = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႍာႱ၄နၴမ႑ဌ္ီႣၰჀႝးၐჭၭလგာဣဓ","Ⴊၪူၶჟ႖ၶႅ჎ၧႚႂၒႸှၰ") + this._c1f8932135eef6886086105d.id + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揃揂掬挂揞挼换捼掍挵揸提捇掮捫捉挾捚掻挙捌採挃捭揕揬捀捨","揎捴掹持捄揞挜揥捱揣挖掴掶掏捴捹"));
         missionTitleText = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刮劺勽剓劶刴劍剖剙劲","剉劍勹劥剱勾劥剣勡刉刖剢剞勢剢副") + _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("切勒剏刅劑劶刖剔初剆勮効劉到刔勣勪剒劬劆剼刃剭到","制到剗劕勨劲勖勬勶勰势勒剟刢勺刭") + this._c1f8932135eef6886086105d.id + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掃揾捥捽捞挿排挅揓揲掋挨捴揢挍掀捹挳援揎","捯揇捊捅揌挿揱探揾掭捍挬捖揅捱揬")) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捋挨掩挂掑挗捼捓掘捗","捝捄捏捳揅接捂捅捬挄挖捃挞掚捍掔");
         if(missionDescText.indexOf(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刹募剣動劚剣勯勨初勁劇剪剚勽則利利剿劜勹刉刮剈劁劤劫","務刍刴勈剢剷勉勍劒勋刷刼刏刽剎利")) != (-377860600 ^ 0x724D8396 ^ 0x7C036857 ^ 0x18CB5A36))
         {
            missionDescText = missionDescText.replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဌၢဍဦၣၰჶၧოဗငဈრ႘ေႁဖ႞ჲဉၬၹသဪ႕၏","ှႨწၿჴ႙კၡၸဖႾႬ၌ၪႅჵ"),app.user.username);
         }
         if(missionTitleText.indexOf(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႞ၶေႿჼၼ჏ჶ჊့ႜမွဋိၶႬၘ჊ტၼ႒Ⴑნცၟ","ၩ၊၌ၬრႍဆဧၬ့ႊဇႂჍ၍င")) != (0x3EBEB0EF ^ -1044459744 ^ -1604724580 ^ -1599711060))
         {
            missionTitleText = missionTitleText.replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ထ၁ၽ႟჆ႂჂხၣႏဉဎႃ჊თႊပჳშၲႺၴႍၿჟဠ","ႚႩၔဲ႓ၺႜႏ၉။စၟ်၇သႹ"),app.user.username);
         }
         if(missionTitleText.indexOf(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劎刧勴勭勐剣剈刷刎刏勗劫剎刕劋划刮劖勔劖","剳刭勷剳勾劉勠分刞劦刖划勮劳劏剶")) != (-1539494257 ^ -1793006954 ^ -442338778 ^ 0x2B4041C0))
         {
            missionTitleText = missionTitleText.replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႿဪႫဘဨႵပ၀၀ყ႐ၦႲႩႶႆ჎ႂႚၴ","ႉ჊ႵၗၿၧၨႭႚတ႑ၳჍႁბႼ"),_c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(this._c1f8932135eef6886086105d.values[0x33FF442A ^ 0x6B4E816C ^ 0x3DB4FA50 ^ 0x65053F16]));
         }
         if(this._c1f8932135eef6886086105d.completedTimeSec - this._c1f8932135eef6886086105d.acceptedTimeSec < (0x784928DA ^ 0x4ED8E1E1 ^ -1102299131 ^ -1998747332) && this._c1f8932135eef6886086105d.action != _4550d767240c3d7f4adff121.SOCIAL_OPEN_LINK)
         {
            labelHeader.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("削勶初勮劬勳劘劕力勣劔刜勥副剶剶到加劒删劷剟勠勊勼剓列劑刜勀勱剗刽劘勂刓剓動勳勂劂勹刢刽劋勆剳刔刡勯削则劁刭剂勢剘別劜务判勯剽剒剆刿到剌劉劝刕勹","剪刁勘剷刯刕勠刔刀刿劻刂劈剴勅劃"));
            labelMissionDescription.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("則勢劏刖剹劳務刄勿勃初剒劃劁划劃則勋削券刳劕劎剓劓刢剐剄剰劜切劲刕劢劮劚剜刵刂务则劒勦勭創勺剮刁剘办劄刹剖别勰剻剄剽劜劒切刘創劥剳刎劢务劤勁勊刕刿劤","剱剰勣劑刍勞創募剒剓動剈劉制勄刹"));
         }
         else
         {
            labelHeader.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刽劖剳劮劦勢創剧劙副劶剳則刀勠劣剄剎劾剒勔刧勃劽勥剭刽勪加努劬刈剮刱劧別刅剋劳剙勱刞刼劐勱务劓删勤劷勔劥劺剎勐剅剤剬劣剑加刮勠利创剟剄剷剗券","刢劒刦剢剖刬勤勃刬劅創刨勭切剫勐"));
            labelMissionDescription.text = missionDescText;
         }
         this._97da5c989aa39fc1865ba909.text = missionTitleText;
         defaultTextFieldY = labelMissionDescription.y;
         defaultTextFieldHeight = labelMissionDescription.height;
         labelMissionDescription.height = labelMissionDescription.textHeight + (0x711333E8 ^ -2028479711 ^ -409501625 ^ 0x1193688B);
         labelMissionDescription.y = defaultTextFieldY + (defaultTextFieldHeight - labelMissionDescription.textHeight) / (-219333034 ^ -810694151 ^ 0x3D66FE77 ^ 0x2609DA);
         labelMissionReward.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("判到劧勉勸剣剙剡劑劃剅剋剏劵勣刵勒劐刦勺劙劘劄刎刾励勲勫劽劣劳勼勭剖劰勐剳勭劶剸刦功剬剃勻則勚勅創功","剂剉勉割勢勨勥别剙刬劍刣劒到剖励"));
         if(this._c1f8932135eef6886086105d.reward == _704801704e2529c9dcb315d1.FISHBUCKS)
         {
            labelRewardDescription.text = this._c1f8932135eef6886086105d.rewardAmount + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("描掬挩掌捞掍捈挦捩捷","揬捖掹挭挕揥捀挨掴挮挂挶捬挕挖指") + _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刊勚列刷動劥剶劭勅勃剉刎劰划劺労刺刳励剛剃刚劓劚刻务剣刅勻劰","刃切刓劐劐剴勁剾勗动副勪勒剷剀勖"));
         }
         else if(this._c1f8932135eef6886086105d.reward == _704801704e2529c9dcb315d1.FISHCOINS)
         {
            labelRewardDescription.text = this._c1f8932135eef6886086105d.rewardAmount + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揽掝捯按揤揆掷掻捪捪","掞挨捷揃掔挂挮揝捳挽揤捵挓揘挟掌") + _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挘揹揖捘揭揵掶揤捁揊掌挍捯挙揧掓揥掗掮捋捺揱掬揪捅掱掊挝揚挙掼捽挧挨挧挞掻掝捈掿捡掜捭揲授掁插揺揳掇捕捵掬捉","捞掴揁掉揘挺推挏掬掔挬掵挎捧捜掎"));
         }
         else if(this._c1f8932135eef6886086105d.reward == _704801704e2529c9dcb315d1.ENERGY)
         {
            labelRewardDescription.text = this._c1f8932135eef6886086105d.rewardAmount + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勌刐刃効劏勪削勾則势","剉劼勵勭劋切刅剓剅劰剎剤勫勏勸勁") + _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勄剘劇刎加勺刅勶労勋剟劍勲劷劙刢剬剄勡削勐剼劖劙勼勩刽動判勑剴刡刾创刢務劷則劅剦剴劀劰刲勜剬刳剛","切剤别劵剞剦努刡剱刣勌勮劼刲剓劐"));
         }
         else if(this._c1f8932135eef6886086105d.reward == _704801704e2529c9dcb315d1.FURNITURE)
         {
            labelRewardDescription.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႞ၹქခვზယბမဎာၯဖၿფႅဠဵჲჅအၐၷၬမီ၃Ⴏ၀ი","၅ၠၪအ္ႲဟႃႮ჆჋ၦႋჩზႲ") + this._c1f8932135eef6886086105d.rewardTypeId);
         }
         else if(this._c1f8932135eef6886086105d.reward == _704801704e2529c9dcb315d1.ROD)
         {
            labelRewardDescription.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刡劗分剂劾劈利剠劧勭剷划勧剫刌刖","刮劮勁剪剌勂劘勄劼務劲剑劕剋劵刦") + this._c1f8932135eef6886086105d.rewardTypeId);
         }
         else if(this._c1f8932135eef6886086105d.reward == _704801704e2529c9dcb315d1.BAIT)
         {
            labelRewardDescription.text = this._c1f8932135eef6886086105d.rewardAmount + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揫掃捬挚揫捅捏揠掯掦","挼挾掕挩揊捃挛捶捖挱挹揍揓挸揆捧") + _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႥၖჄၕჲ၄ჅჁქႣ္Ⴓၔჱူဳဗხ","ဒၬგၚႸზი၂჌პრထრှ်႕") + this._c1f8932135eef6886086105d.rewardTypeId);
         }
         else
         {
            labelRewardDescription.text = this._c1f8932135eef6886086105d.rewardAmount + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဃၵသာါႊძ჻ကჱ","ၼჶအၮყკၖ၌ၾႊၵၬჰ႒ქဉ") + _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掃揟挻揧揗掋掄掓掉挵揈揇捉捋挔捱挥捓掿揷挮揉揠揮捡挛","揕掔揩揎捩挍採掁掱捥揙捀揦掄換捽") + this._c1f8932135eef6886086105d.rewardTypeId);
         }
         rewardImageContainer.removeChildren();
         kind = _55f94f258094d999ec9ca580(this._c1f8932135eef6886086105d.reward);
         if(kind.length)
         {
            imageFilename = _3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(kind,this._c1f8932135eef6886086105d.rewardTypeId);
            bitmap = new _a4e47350c89a50d87a148c28();
            bitmap.width = 0x4868434A ^ -1667415555 ^ 0x61031620 ^ -1242164201;
            bitmap.height = -1795505974 ^ -393567939 ^ 0x0649E45B ^ 0x7A39852C;
            bitmap.x = -2046759996 ^ -213498611 ^ -1051138611 ^ 0x4BE1B4C4;
            bitmap.y = 0x625E47F1 ^ -572130882 ^ 0x5F0B6CA9 ^ 0x1F4F2D26;
            app.resourceManager.replaceBitmapDataFromURL(bitmap,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(imageFilename));
            rewardImageContainer.addChild(bitmap);
         }
         labelShareProgress.visible = false;
         checkShareProgress.visible = false;
         checkShareProgress.state = _89027603939c39853027fd04.UNSELECTED;
         buttonCollect.label = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႔ှჯးჶါဉၤჱဍჵဓဆ၅ႻၕჺႂკႣႢၮဆိၴႧၤၪ႒ဍჽ်ၧၒၮჟႤ၎ჺၻ႐။ჵჴჅაဉၫჲၪႪშၝဎზၺვႾႭმჇ჆၆ჍჯႲ၈ფဇჱာႲ","ၐဒႷဥ႓ွႨ႘უႄဓ႗Ⴃ၇ჾဧ"));
         buttonCollect.handler = this._9ab232d89fa10ac7531d8b7a;
         buttonCollect.enable();
         super._935ac2966ddad68dfc449202();
      }
      
      private function _9ab232d89fa10ac7531d8b7a(param1:MouseEvent) : void
      {
         buttonCollect.disable();
         this._fc37c2cfcce2702b59d74c41._e99b596ee5cf0280fad04e6e(this._c1f8932135eef6886086105d);
         this.close();
      }
      
      override public function close() : void
      {
         GameSwf.currentLocationDialog._9a62ebd0db0249ee0917d4c7();
         super.close();
      }
      
      override public function onShowComplete() : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_066_MUS_Tournament_win);
      }
   }
}

