package com.ax3.fishao.locations
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.utils.sound._c5aa52fca149ae6f0be6dc5b;
   import flash.utils.Dictionary;
   
   public class _8d59d661459118aa8e94ae34
   {
      
      public static var _typeByColor:Dictionary = new Dictionary();
      
      public static const NONE:_8d59d661459118aa8e94ae34 = new _8d59d661459118aa8e94ae34(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဦჱჟჍၯႄაეၕაႌჰႱှၒလ","ဒညၜၓსრၝვჅ႘ဠၑ჏ဂပဦ"),0x478969E2 ^ 0x765998F7 ^ -906336167 ^ -131425972,null);
      
      public static const SOIL:_8d59d661459118aa8e94ae34 = new _8d59d661459118aa8e94ae34(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჹყძკ႑ႢၾႽႨၴჶၵႧၐၹဠ","Ⴖၡჷၓာუဢ႓သნႚး၅စၴၙ"),_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捜挰掏掝揟挓揯挱揑挞掔捐揈掩揌捧挤挭掙捑揖捂捺掘","掯捹捱援揥捐挏捈捽挆掶掀掑持握挍"),_3a8a2602dcf9bf49b62e62af.SFX_003_MOV_Step_soil_MERGED);
      
      public static const GRASS:_8d59d661459118aa8e94ae34 = new _8d59d661459118aa8e94ae34(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၹჩ၅၂ၧ႙ႛႋၞဃყႄჿ၊Ⴁშဠၞ","ღ႟ၑဠႽသၑၱზၬႭႡၻမၶႦ"),_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劀刢剾勱刢制刻力劧勻刃劜劇剎刷劮刅勰勚勍刼動労刟","劊創剧剹劸勾刄刹加則劈剥勚削劌募"),_3a8a2602dcf9bf49b62e62af.SFX_013_MOV_Step_grass_MERGED);
      
      public static const SNOW:_8d59d661459118aa8e94ae34 = new _8d59d661459118aa8e94ae34(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၹၻဆဌႷჶ္ကရႾႊႬဉႤႣჩ","჌သၚၲ႞ဩၢၒ၎ၔၠါჂၪ၍ၤ"),_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揳掫挛揵挽提掇捵揙掕掤揗推掁授揸挢揳挿揹捪挍揜捲","挢揲挃掴捕捌揘捕捍掊掣据持揼捃揲"),_3a8a2602dcf9bf49b62e62af.SFX_014_MOV_Step_snow_MERGED);
      
      public static const WOOD:_8d59d661459118aa8e94ae34 = new _8d59d661459118aa8e94ae34(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚刮劁刳劙勦動剐分勛刳劋劧勮刄劮","劎勝剼刳创勿勹勪利刕剗勿劉功勔劬"),_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挌掔捿捖换描捫挟掄揫挺揢捾掊掮揝掯揝挔揗捜授挐揀","掆揓掫揌揧捙握捙掝捨挸揦揦捘挷掹"),_3a8a2602dcf9bf49b62e62af.SFX_015_MOV_Step_bridge_MERGED);
      
      public static const SAND:_8d59d661459118aa8e94ae34 = new _8d59d661459118aa8e94ae34(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挚揠捒捿掋掲揖掣捧捁捯挊掼揎揹捨","揙挝挺挛挜揠挳挾挃掸推揋挾掆揹揮"),_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("႒ၻ၏჌ဖခ჻ှႢှႧჶႎႺိုყဍၛငზႠჩႣ","უႽ၁ှ჉ც၀ჹႇႿဤპဴံင၆"),_3a8a2602dcf9bf49b62e62af.SFX_016_MOV_Step_sand_MERGED);
      
      public static const GRAVEL:_8d59d661459118aa8e94ae34 = new _8d59d661459118aa8e94ae34(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劙劣効剛刘劕剣剀剢勽剩加刉劙劆剿勑勘劃删","劾刺劽刃到劫劫勾剘剒勿剳刚加剏劃"),_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჹ჻Ⴀႃ႑႓႐Ⴡနဆთ၀ၲႀ჎႑ၕვიემႻვၠ","ဧၕၺႭჴဎရ႐ႂ႔ဓဓႪဘၕႺ"),_3a8a2602dcf9bf49b62e62af.SFX_055_MOV_Step_gravel_MERGED);
      
      public static const WATER:_8d59d661459118aa8e94ae34 = new _8d59d661459118aa8e94ae34(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揷挐挑揖揞捯挞掂掜挏挽按捵挒揈挋揿揸","捶捷掙捸揞捙捘揨捔援揱捝掔援据换"),_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("გၼၣိလၰ႖ၔၹၽဦၩဋပးႬၝြသიယ႗ိ႞","ჶလႛျၕြღႆၢရუ႖ზႆၴႃ"),_3a8a2602dcf9bf49b62e62af.SFX_056_MOV_Step_water_MERGED);
      
      public static const STEEL:_8d59d661459118aa8e94ae34 = new _8d59d661459118aa8e94ae34(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剹勸劐刨勽剮剘剹勽刻劋劬刴删劾剳刳別","劃劊劇割募勘刔勤删剠刌刹劸劙勐剓"),_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勵勆刏労劍勳勂剠勥剓刻刯劁刱势刿刘刎則勋券勶勢勤","勥刅劺勢剓劒划劁务剿劙剾勏勈劺力"),_3a8a2602dcf9bf49b62e62af.SFX_071_MOV_Step_metal);
      
      public var name:String;
      
      public var color:uint;
      
      public var soundFile:_c5aa52fca149ae6f0be6dc5b;
      
      public function _8d59d661459118aa8e94ae34(param1:String, param2:uint, param3:_c5aa52fca149ae6f0be6dc5b)
      {
         super();
         this.name = param1;
         this.color = param2;
         this.soundFile = param3;
         _typeByColor[param2] = this;
      }
      
      public static function _4c7842d414250ba47287ac93(param1:uint) : _8d59d661459118aa8e94ae34
      {
         return param1 in _typeByColor ? _typeByColor[param1] : NONE;
      }
      
      public function toString() : String
      {
         return this.name;
      }
   }
}

