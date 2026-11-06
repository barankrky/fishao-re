package com.ax3.fishao.view.dialogs.tournaments.models
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.core._da2facf75d08e7f9226a6df7;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   
   public class _4a26c3e739ada00470a83032 implements _da2facf75d08e7f9226a6df7
   {
      
      protected var _position:uint;
      
      protected var _login:String;
      
      protected var _criteria:Number;
      
      protected var _isReady:Boolean;
      
      protected var _level:int;
      
      protected var _criteriaBoost:Number;
      
      protected var _rewardFishcoins:int;
      
      public function _4a26c3e739ada00470a83032()
      {
         super();
      }
      
      public static function _19732dd0d7063a3c949aeaa3(param1:_4a26c3e739ada00470a83032, param2:_4a26c3e739ada00470a83032) : int
      {
         var _loc3_:int = -769975375 ^ 0x197ECDDC ^ -1650305274 ^ 0x56C7816B;
         var _loc4_:int = -2012622773 ^ 0x5EF3E88B ^ -719553771 ^ 0x4C3AC294;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x691555F9 ^ -763785076 ^ 0x2AB21BC8 ^ -570269704))
            {
               case 0:
                  _loc3_ = 0x228AEF50 ^ -1031066245 ^ 0x1FC9E2EE ^ 0x37DF3A;
                  _loc4_ = -670364718 ^ -1503297180 ^ 0x225CB2B9 ^ 0x13EEB948;
                  break;
               case 1:
                  if(param1._position < param2._position)
                  {
                     _loc4_ = 0x605F366D ^ 0x2FA98A30 ^ -913331145 ^ -911896273;
                  }
                  else
                  {
                     _loc4_ = -924314685 ^ -294938683 ^ 0x3D049F3D ^ 0x545B9A7D;
                  }
                  break;
               case 2:
                  return _loc3_;
               case 3:
                  _loc3_ = _400a8e4f11b7af1868293e1f(param1,param2);
                  _loc4_ = -72014623 ^ 0x5B7D8650 ^ -1503409190 ^ 0x4977E82C;
                  break;
               case 4:
                  _loc3_ = 0x710623C4 ^ -28715882 ^ -1948299507 ^ 0x0490B85F;
                  if(param1._position > param2._position)
                  {
                     _loc4_ = -1400314767 ^ -1172434156 ^ 0x0D830C91 ^ 0x54C97AB4;
                  }
                  else
                  {
                     _loc4_ = 0x115AB7DA ^ 0x1B01E96C ^ -2002418735 ^ -853386205;
                  }
                  break;
               case 5:
                  _loc3_ = -1651932329 ^ -694903504 ^ -12705119 ^ -1272759097;
                  _loc4_ = 0x27AFDAEF ^ 0x0C247F48 ^ -625172792 ^ -1091847640;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private static function _400a8e4f11b7af1868293e1f(param1:_4a26c3e739ada00470a83032, param2:_4a26c3e739ada00470a83032) : int
      {
         var _loc3_:int = 0x1A9B9452 ^ 0x4CD9C774 ^ 0x01C781C2 ^ 0x5785D2E4;
         var _loc4_:int = 0x4D9DB889 ^ 0x01781D23 ^ -919049526 ^ 0x174A4F59;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x4B3396E3 ^ -659505080 ^ -31498539 ^ -16021435))
            {
               case 0:
                  _loc3_ = -1353670865 ^ 0x6E53B324 ^ 0x490F0B08 ^ -2012469502;
                  _loc4_ = 0x25ED5FBB ^ 0x5114258C ^ 0x6E1E47A7 ^ -2005877329;
                  break;
               case 1:
                  if(param1._criteria > param2._criteria)
                  {
                     _loc4_ = -1757065232 ^ 0x028DB332 ^ 0x33CDAB31 ^ 0x3492D7CB;
                  }
                  else
                  {
                     _loc4_ = 0x42840D22 ^ 0x1DD6AC6C ^ -710835789 ^ 0x1864A0C2;
                  }
                  break;
               case 2:
                  _loc3_ = 0x4B5E2A84 ^ -1898514291 ^ 0x66A60BAF ^ -1557210714;
                  if(param1._criteria < param2._criteria)
                  {
                     _loc4_ = -281139586 ^ 0x03C898F9 ^ -543506895 ^ -1577353075;
                  }
                  else
                  {
                     _loc4_ = 0x6CA658F4 ^ -1445524708 ^ 0x271720B4 ^ 0x70F1F366;
                  }
                  break;
               case 3:
                  _loc3_ = 0x453CB762 ^ 0x7072969C ^ -340625093 ^ 0x2103A73A;
                  _loc4_ = -1600643048 ^ 0x6066BD49 ^ 0x4F4FC852 ^ 0x1D26D53C;
                  break;
               case 4:
                  return _loc3_;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get position() : uint
      {
         return this._position;
      }
      
      public function get login() : String
      {
         return this._login;
      }
      
      public function get criteria() : Number
      {
         return this._criteria;
      }
      
      public function get isReady() : Boolean
      {
         return this._isReady;
      }
      
      public function get level() : int
      {
         return this._level;
      }
      
      public function get isPlayer() : Boolean
      {
         return this._login == app.user.username;
      }
      
      public function get criteriaBoost() : Number
      {
         return this._criteriaBoost;
      }
      
      public function get rewardFishcoins() : int
      {
         return this._rewardFishcoins;
      }
      
      public function _8d59c3a16e986a170b6230b5() : void
      {
         this._criteriaBoost = 0x50B5ACCA ^ 0x044BD2B7 ^ 0x49A690 ^ 0x54B7D8ED;
      }
      
      public function updateInfo(param1:Object) : void
      {
         this._position = Debug.getPropertyOrDefault(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("务刺刭剫勄則刿剽加勱剿剫創労劼則劢刱則劫劕勻劊副","勬刂勫剐劂刧劉刂勄勊剅割勼副動勿"),this._position);
         this._login = Debug.getPropertyOrDefault(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捣挿揞挼掀挾掐挈揶捇採捱挔捁揝揸捩揗","揯推掁掰揬捋揅挖挅挸挥揌捁捦換挢"),this._login);
         var _loc2_:Number = Debug.getPropertyOrDefault(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揸挂挈掿挋挐掖揧掝挻捼揇援挒捏掜揺揙挆揅揅掘揉捾","揨挥接換掿捝揱挍揬揓挡掆掖揟挬挈"),this._criteria);
         this._criteriaBoost = _loc2_ - this._criteria;
         this._criteria = _loc2_;
         var _loc3_:String = Debug.getPropertyOrDefault(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掕挲捵挬捽掖捅捣掾掔挗捫挃捴掄揺揥控掓捽挡捤揚挪","掮捽捤掭揫捕揳揘掿揪挞捏捹捃揮插"),this._isReady);
         this._isReady = _loc3_ == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("რჸ္ၹၕႆეႶჁთჰၹჴျფქ","჊ႾျၴမჳၐႥი჆ၛဩၼိၗ႙");
         this._level = Debug.getPropertyOrDefault(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掑挏捓挾损捁揭挻揮揾揥挷揿挾换掌掗排","揱掚揜捂挑捨捌揀捘捏揞揯捫揅揎揄"),this._level);
         this._rewardFishcoins = Debug.getPropertyOrDefault(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勼劀勢剺刬剓切勸勱剌則劥刍势効劆勧动劕刉刿刻剬勆劅劒剼刟初勌労勵剩刏剚劶勭労勢劮","刯剧劏勚剢刪剛剡剨勹刣割勶剅刌剜"),-1412620926 ^ -926003321 ^ 0x24455749 ^ 0x4746054C);
      }
      
      public function serialize() : Object
      {
         return null;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._position = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("前劫劻劽勥剏利別刽勻勎剂劣利劳劄剾刁剸剃勦功勔勣","勸勆刟剥剘剔剑勻剩劭剜勯努刘剚刀"));
         this._login = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႃჳၕႣသნჷႦ჌ၝၮဏၸჄჟဍცჃ","ဤၥქြးါ၈ცၞႃႮ჆၀Ⴝၘဢ"));
         this._criteria = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劳剔刮劳剌刍剱劭剔劉勻剁則勼劊刽刵剰剄刘刴劷剹剝","刭剶勲剠剰勎劶勆刹刂切刴劊副劺剔"));
         var _loc2_:String = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၷႣဲჹჷ႑၀ၻဵဴၣႰჺაၑႨၞ၊ဦთ၅ဏသ့","ႊဌ၀ၗညူ၎႕ွၞနၙჷ႞ဆႝ"));
         this._isReady = _loc2_ == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捹揢捻挫掑排揲捙捰掟措挣掕捙挢掌","换授挤掷挩捅掺探握挀捾挭捷揸挹挒");
         this._level = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捙揠授捸揰挲挂揜掝捴捊换揘揬挜掁控揊","掑挒挀捝捸捀捝挃揧挄掎捡捕捦持挃"));
         this._8d59c3a16e986a170b6230b5();
      }
      
      public function _3324dc4279f24bf4ba6351d3(param1:Object) : void
      {
         this._position = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჰြဦႺေၵဩႊႍရႡၙႻႤႧჯခဳჽ჎ၤ၊ၛ႑","လအၽႲჰၜၥဋჩ႙ვႫၛၵჂႛ"));
         this._login = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("့Ⴧဂ၊Ⴄჹჰ႓჻႒႗၏ႚၕჀႪွჇ","ၖႾႢჰတဦႲვၞდဍဉႫჇႨၓ"));
         this._criteria = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၛტဴჸႷၤგှၠဗူႝၢ჌ၬႶჱ၆ဏ၈ီეၽჹ","၅ၬဵဥლာ႞ჀႿႄွჵဝဣၺၕ"));
         this._rewardFishcoins = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劊刂创則勵刷劚剩功则剰剭劒刦劌勯劁勨劗劸剑勌劕剷勃勻勥刔刡劗動勮剰刺劶効則功勛勬","刖劣勲刴剄勭刀剬剝勓副劔剜剼剞剭"));
      }
   }
}

