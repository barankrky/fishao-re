package com.ax3.fishao.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.ConstantsBase;
   
   public class _8eb7be594ef79158478ab7c2
   {
      
      public function _8eb7be594ef79158478ab7c2()
      {
         super();
      }
      
      public static function _673e079784b150f4ee1845d5(param1:String, param2:String, param3:String, param4:String) : Boolean
      {
         var _loc5_:Array = [];
         _8ca73aea090f906a1dbde100(param1,_loc5_);
         _c020fc5c5335223f79b592fa(param2,param3,_loc5_);
         _47a760ede25e11e3790e38db(param3,_loc5_);
         _6e44d88b568e43ef467f21e2(param4,_loc5_);
         if(_loc5_.length == (-1068431781 ^ -436465017 ^ 0x71361852 ^ 0x549B0C8E))
         {
            return true;
         }
         GameSwf._63ab194bba25b717472ccdfb(_loc5_);
         return false;
      }
      
      private static function _8ca73aea090f906a1dbde100(param1:String, param2:Array) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1 == "")
         {
            param2.push(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捏挅挵捍揺捜捘挓捥掽掅掓揊捪揯捼掓捃揬掱捖掠揟掷捦掀捶挜揹掅掌揯掱揯揖捡援捄掗掾捄掶捅揬捚掅揢揢掺挠挃揚措掶掙损捩掎","挻挂捽掚揶挜捊掅揞揉捑捠捄揩揗揓")));
         }
         else
         {
            if(param1.length < (0x0CF5DFC3 ^ -1607584601 ^ 0x272B2896 ^ -1947155471) || param1.length > (-1284012894 ^ 0x5E3AAB66 ^ 0x027D63B9 ^ -282047379))
            {
               param2.push(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揞挔捃据採捼措接挗挎掳揦接掩捽揲揘揺挴捯掹揞接掜揩掞捬掤掆捖揝捬挢挠掠捘揾捃持捴捘捂掯挹揑揷掰捡挫掞掇掙掝推揄採挝揘揹揳","描掉捺挵捆挟掖掣捘掬掀捥捀捐挍掘")));
            }
            if(param1.match(ConstantsBase.USERNAME_REG_EXP_PATTERN) == null)
            {
               param2.push(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴑ႖႒჻ၩ႗ႷဘထဋႫოჿႥ႐ဒჹჶჹႍႆဤოႎီ႑იံ႞ံဆ჏Ⴌဃ၈ჳဇႳცႰနဦ၍ီၞ႑၁჉ႬტႥღრႊႝြၮႍ","၄ဴႛႎႌ჻ၫ႞ဪၗၝძဵ႕Ⴠშ")));
            }
         }
      }
      
      private static function _c020fc5c5335223f79b592fa(param1:String, param2:String, param3:Array) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1 == "")
         {
            param3.push(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揺掏捝插捙捭揾振捆捤挃捛掁揕捅捉掅掶接挐採揱挂掆挚捃挫掩揮捅捁掀挼挥握挔挙捧捗挈捎掏揄揇揄挫掲揗捎掱","捡揠掼挛捖掵捼挅揣掴揌捏挟揋掶捑")));
         }
         else
         {
            if(param1.length < (0x7358A6EB ^ -66197097 ^ 0x2F616531 ^ -1607194043) || param1.length > (-639589334 ^ -1329515332 ^ -617609773 ^ -1307470579))
            {
               param3.push(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勧劒剻劘剣劚刯刱刲割勒刧刷勣剭勗劏刖刻剶刖刑剡剐勺剰前势刳剘勇勈剰勤勘剓劄勦劍力力前勂助剳刱则剈勉动判勾","勨制剁剗剗剖功劚剮劓刕刦剧勨務勲")));
            }
            if(!Config.IS_BETA && param1 != param2 && !Config.SKIP_CONFIRM_PASSWORD)
            {
               param3.push(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဖႍ႕ၷဎၔနဍლဿဤယြჀဢၙცႜტ႗႔၏ဒသ၃ုჾჲႥႃဖႎ႖ၣჺჶထႊჷ჆ၑ჌ვჱဍ჆ჀႯრႇႴႿႵဆჍႻႠ႙Ⴝვၚრ","ჼჄဵၕူလၾကၘၹზႴგჄ၁ၨ")));
            }
         }
      }
      
      private static function _47a760ede25e11e3790e38db(param1:String, param2:Array) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(Config.IS_BETA && param1 == "")
         {
            param2.push(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捪挫掳掙捝挑捶揨挊挞掵持捤据捖揢捰揊揻捁挆捝挀挔掵挑挭掙措掲捞挷掷捨掛揪振揝捦揦捊捔","挜掻挼揽揸挪挏揧挭挭揯掐捊挈捉捵")));
         }
      }
      
      private static function _6e44d88b568e43ef467f21e2(param1:String, param2:Array) : void
      {
         var _loc3_:int = -1016975291 ^ 0x7B800D2E ^ -568435820 ^ 0x4D5405EB;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x3291E0CB ^ 0x3D52AF75 ^ -17416535 ^ -627240445))
            {
               case 0:
                  if(param1 == null)
                  {
                     _loc3_ = 0x75EC26C0 ^ -998252757 ^ -756191050 ^ 0x48D6EA4D;
                  }
                  else
                  {
                     _loc3_ = -915631684 ^ 0x5B4791E9 ^ -2054807858 ^ 0x3C057D8C;
                  }
                  break;
               case 1:
                  param2.push(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("制励前刧切删劈動励刃劑劉勭勗剧劀刬刊剫剖勞劌勍勥削劬刦勵切刻勭勀剙劥刯剥刈剿劕勵刋刨剳刖劳刑刲勼劯剟労勫剘剦刏勽剴勃剋劘剉剐刭剬勓勀","勀勻刪刪剻剂剘勽勼初剜勈劕勪刬剗")));
                  _loc3_ = -51287817 ^ -1958697198 ^ -219388086 ^ -1359623239;
                  break;
               case 2:
                  return;
               case 3:
                  if(param1 == "")
                  {
                     _loc3_ = -516484395 ^ 0x3A155C3C ^ 0x764AA4B2 ^ -2034202295;
                  }
                  else
                  {
                     _loc3_ = 0x68C0BAE5 ^ 0x10D20259 ^ 0x3FE5ECF2 ^ 0x6C5F375F;
                  }
                  break;
               case 4:
                  return;
               case 5:
                  if(param1.match(ConstantsBase.EMAIL_REG_EXP_PATTERN) == null)
                  {
                     _loc3_ = -271510812 ^ -685554802 ^ 0x4E09E713 ^ 0x5D53D56C;
                  }
                  else
                  {
                     _loc3_ = 0x60A00769 ^ -1233231831 ^ 0x2BEB6009 ^ -694328225;
                  }
                  break;
               case 6:
                  param2.push(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剎務勲刨刽剖劥剶办勇初刪勢剑剈勦剃勋勩剓勆劆刓劼勒剡剱劅劒加刳勏刦劯剃刱刚努努刽勾前募勺势剎勄刪刁劣勩勺","劝剻刲刅剞刏剂劳勸剧勦列劅勈刹剀")));
                  _loc3_ = 0x3C7C9B53 ^ -852609000 ^ 0x403764AA ^ -1697798921;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

