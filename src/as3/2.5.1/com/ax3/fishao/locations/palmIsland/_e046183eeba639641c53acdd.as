package com.ax3.fishao.locations.palmIsland
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.events._4986c362bed569a2ffb299b4;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.objects._4b3a19177d4e1a122105301b;
   import com.ax3.fishao.quests._6010cdd97b2c9adb7381e433;
   import com.ax3.fishao.quests._601efb0207d0488bb235ec83;
   import com.ax3.fishao.quests._9f9b0437732a732f27c8da80;
   import protocol.sr.UpdateResp;
   
   public class _e046183eeba639641c53acdd extends _4039c287ddb4ef46ab65ab0e
   {
      
      private var _ec7f9703cff5b28452629ffa:_1b141b5c2c59d77012d7d70f;
      
      private var _3708efe52303c300ad9f7470:_601efb0207d0488bb235ec83;
      
      public function _e046183eeba639641c53acdd(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function _3592e9d0ea73ddd76fed836f() : void
      {
         super._3592e9d0ea73ddd76fed836f();
         this._ec7f9703cff5b28452629ffa = (dialog as _f4067a57d9559198586ce9c8).locationLayersBase as _1b141b5c2c59d77012d7d70f;
      }
      
      override public function _74c869ae3d29b2df7f677f8a(param1:UpdateResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         super._74c869ae3d29b2df7f677f8a(param1);
         for(_loc3_ in param1.data)
         {
            if(param1.data.hasOwnProperty(_loc3_))
            {
               var _loc6_:String = _loc3_;
               switch(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("握挰捐揪捽捐掵挒掅掲挲揼揇挖挧捆援挓掫揢","掭捱揳揺捿捂挽揹捺挮揿揆揁捄掌捜") === _loc6_ ? 0x23ADB5DA ^ -1129701424 ^ -867398452 ^ 0x534B26C6 : (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႕ဤႆჂံ႙ဒၘဍကဘႉზႠႴ်ၰဤჺၜ၁ၐ","Ⴞၘ၌ძၔၓჾ႗ၔ်ၝე။ၝာႃ") === _loc6_ ? 0x33EB7058 ^ -832758934 ^ -649191663 ^ 0x24F87422 : (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揞捉捖捤挖掀揃捀採挿挫掌揑掂掮推揨挤捅揽捔挡捸捸揖挜挷捡揮掵捪揯掻挞","捧挈捘揟提挱挞掾掝揦挖挺掫掽掳掴") === _loc6_ ? 0x53C1595C ^ 0x4883337A ^ 0x2F954CCE ^ 0x34D726EA : (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၬპქႴႯ၅ჁၢၱယჄၽშဎပၼႄგႥ႒ညၕყ၅ဍზႡქႹႸ၁ှငჱ၄ၐ","წၗၚჃၗ႕ၡჶဴၚႽიႯწျ჆") === _loc6_ ? -1832760411 ^ 0x36FEAE16 ^ 0x7C6E193A ^ -665650038 : (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捨揋挼揬掩捖揼揼揞排挱掲揽掷控提揬掍捱揫揠捽挒揝捑挶挒捓挑挣接掵掌捞掲揠","揤揢揔挨捨捶揋掻揦捉揧揱描挿挘挈") === _loc6_ ? -808943356 ^ 0x17BDE4D3 ^ 0x1C68A5BB ^ -1004683160 : (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჍႩ჋င჉ႁ႗ჰჲဍႸჷဢလဵဢႻჴ္უွႊႀႥსშႡၿဩ၏နၺဩ႗ღၛၤၬ","჻ဴႼဪဪၢ႐Ⴟႜ၃Ⴚ၌ၢါဎႳ") === _loc6_ ? -307302017 ^ 0x6AF237CC ^ 0x10A51735 ^ -1745235581 : -829069852 ^ 0x7F3BF4D9 ^ -75087595 ^ 0x4A28D02E))))))
               {
                  case 0:
                  case 1:
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.LOAD_LOCATION_ITEMS,_loc2_));
                     break;
                  case 2:
                  case 3:
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.ADD_LOCATION_ITEM,_loc2_));
                     break;
                  case 4:
                  case 5:
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.REMOVE_LOCATION_ITEM,_loc2_));
               }
            }
         }
      }
      
      private function init() : void
      {
         this._3708efe52303c300ad9f7470 = GameSwf.instance.managerQuests;
      }
      
      public function _c17c6bbb6ddc332c4fe2d2b6() : void
      {
         var _loc1_:_4b3a19177d4e1a122105301b = null;
         var _loc2_:_6010cdd97b2c9adb7381e433 = this._3708efe52303c300ad9f7470._344867a3030aa4d0c44e7c27(_9f9b0437732a732f27c8da80.EQT_PIRATE_CAVE) as _6010cdd97b2c9adb7381e433;
         if(_loc2_ != null)
         {
            _loc1_ = this._ec7f9703cff5b28452629ffa.viewPirateCave;
            _loc1_.isEnabled = _loc2_.pirateCaveAccessible;
         }
      }
   }
}

