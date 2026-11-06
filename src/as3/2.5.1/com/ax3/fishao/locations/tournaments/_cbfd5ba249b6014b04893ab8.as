package com.ax3.fishao.locations.tournaments
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.entries._c9513c48978d5034cc9ff2f4;
   import com.ax3.fishao.model.info._9f0379c95e97da0c1ff2a833;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown._c4969a6bb20461a897733432;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown._ddb31413e3f8701e7e98beaf;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown._706b9e8a05fa6a971551d21d;
   import com.ax3.fishao.view.dialogs.tournaments._9adbacee9e79da53f4cf55bb;
   import com.ax3.fishao.view.dialogs.tournaments.models._2a31502166ae419b5332a782;
   import com.ax3.fishao.view.dialogs.tournaments.models._4a26c3e739ada00470a83032;
   import com.ax3.fishao.view.dialogs.tournaments.models._87c5db8b779e4199260f7152;
   import com.ax3.fishao.view.dialogs.tournaments.models._a1842a5c36511100aec6f1ca;
   import com.ax3.utils.math.limit;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObjectContainer;
   
   public class _cbfd5ba249b6014b04893ab8 extends _67f8febc099eaa05c48aa41e
   {
      
      private var _162a6289f8c802d44c9ac9a9:Boolean = false;
      
      private var _347cce96d0081deeaeb6c3be:_2a31502166ae419b5332a782;
      
      private var _6fc407917b8363a7989e5d22:_9adbacee9e79da53f4cf55bb;
      
      public function _cbfd5ba249b6014b04893ab8(param1:_4039c287ddb4ef46ab65ab0e)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:int = 0x39498827 ^ 0x53282FBA ^ -2126707649 ^ 0x01E647B0;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x5D8A0B17 ^ 0x0F589369 ^ 0x516B78B0 ^ -385678114))
            {
               case 0:
                  Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挬挡挔掑挱捚捣挪揣揷捙捘挧捳描掩掭揧揨捇挿採捹掆","掳掴挣捕捃挬掶捝揁挮捨掔揀挟揇掊"),this.openWall);
                  _loc1_ = -281157913 ^ -1344683700 ^ -382535336 ^ 0x436C02E2;
                  break;
               case 1:
                  this._6fc407917b8363a7989e5d22 = GameSwf.instance.managerTournaments;
                  this._347cce96d0081deeaeb6c3be = this._6fc407917b8363a7989e5d22.tournamentCurrent;
                  return;
               case 2:
                  if(!_9f0379c95e97da0c1ff2a833._17cfc701aba420494fc10653())
                  {
                     _loc1_ = -1918676715 ^ 0x50CF324C ^ 0x26038B8B ^ 0x11D50CC2;
                  }
                  else
                  {
                     _loc1_ = 0x3C275DA6 ^ -2141456579 ^ 0x3DDC9F4C ^ 0x6B1AD1C6;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function openWall(param1:int) : void
      {
         _locationLayersBase.tournamentWalls.openWall(param1);
      }
      
      public function _15bce4113fc79eef0a5468c4() : void
      {
         _playerChar._e0fa1409bf0227106cc53a79();
         this._16b21f2214b2d51b10f4ac9c();
      }
      
      private function _16b21f2214b2d51b10f4ac9c() : void
      {
         var _loc1_:int = -1532221877 ^ 0x317148B9 ^ -851136286 ^ 0x03463A2C;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x3B75E308 ^ 0x56D15BCB ^ 0x47CB2E86 ^ 0x71B07279))
            {
               case 0:
                  if(this._347cce96d0081deeaeb6c3be.type == _a1842a5c36511100aec6f1ca.ETT_RACE)
                  {
                     _loc1_ = -782639325 ^ -1241432447 ^ -1844705274 ^ -1366618724;
                  }
                  else
                  {
                     _loc1_ = -561790291 ^ 0x47FE8DFE ^ -2063719458 ^ 0x465C88B3;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  if(_gui._b66d5fe309c22d89cc02cda6(_706b9e8a05fa6a971551d21d.ECT_TOURNAMENT) == null)
                  {
                     _loc1_ = -1579068080 ^ 0x4C2C93E8 ^ -673667627 ^ 0x61CA8752;
                  }
                  else
                  {
                     _loc1_ = 0x51277021 ^ -1583783592 ^ 0x6359252F ^ -935800725;
                  }
                  break;
               case 3:
                  _gui._b95c50dd0c652423b4b1846b(this._347cce96d0081deeaeb6c3be.timeLeftEnd,this._347cce96d0081deeaeb6c3be.duration,_706b9e8a05fa6a971551d21d.ECT_TOURNAMENT);
                  this._83a62d9fe5db584adea4e9b9();
                  _loc1_ = 0x4DB7CD85 ^ -925991309 ^ 0x35F25CAB ^ -346813600;
                  break;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _7c3199ffd99d260f92822e62() : void
      {
         var _loc1_:_4a26c3e739ada00470a83032 = null;
         if(locationModel.isTournament == false)
         {
            return;
         }
         if(this._347cce96d0081deeaeb6c3be.type != _a1842a5c36511100aec6f1ca.ETT_RACE && _gui._b66d5fe309c22d89cc02cda6(_706b9e8a05fa6a971551d21d.ECT_TOURNAMENT) != null)
         {
            this._83a62d9fe5db584adea4e9b9();
         }
         if(this._347cce96d0081deeaeb6c3be.type == _a1842a5c36511100aec6f1ca.ETT_RACE)
         {
            _loc1_ = this._347cce96d0081deeaeb6c3be._386b700ee35253aed185d2b6();
            if(_loc1_.criteria >= Math.round(this._347cce96d0081deeaeb6c3be.fishToWinCount / (-522360874 ^ 0x267275F4 ^ 0x677F1C28 ^ -1580200439)))
            {
               this.openWall(-1809020830 ^ 0x284E575C ^ -381766365 ^ 0x555C6A1D);
            }
            if(_loc1_.criteria >= Math.round(this._347cce96d0081deeaeb6c3be.fishToWinCount / (0x5B8AAF19 ^ -2076463735 ^ -1205620319 ^ 0x6792B332) * (0x06E1BD0D ^ 0x1E8E623C ^ 0x77FC29B4 ^ 0x6F93F687)))
            {
               this.openWall(0x775C9F34 ^ -84180362 ^ -110422163 ^ 0x74CC0A2E);
            }
            if(_loc1_.criteria >= this._347cce96d0081deeaeb6c3be.fishToWinCount)
            {
               this.openWall(-1891066112 ^ 0x0E261EB1 ^ -1531056175 ^ 0x25D36E62);
            }
         }
      }
      
      override protected function _5d9322c5c09d1a59d4784fcf() : void
      {
         if(locationModel == null || !locationModel.isTournament)
         {
            return;
         }
         if(!_locationLayersBase.tournamentFinish || !_locationLayersBase.tournamentFinish.hitTestPoint(_playerChar.graphic.x,_playerChar.graphic.y) || this._162a6289f8c802d44c9ac9a9)
         {
            return;
         }
         this._162a6289f8c802d44c9ac9a9 = true;
         _playerChar._1963d0a948fa760e5dca0769();
         this._6fc407917b8363a7989e5d22.sendTournamentFinish();
      }
      
      private function _cf76871a3c77d5ade4cc5f9e() : void
      {
         var _loc1_:int = 0x622CC4B5 ^ 0x56F2B41A ^ -1888178806 ^ 0x059DE39B;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-289854826 ^ 0x6AF3AF81 ^ 0x541B0991 ^ 0x6E66B23A))
            {
               case 0:
                  return;
               case 1:
                  if(this._347cce96d0081deeaeb6c3be.state == _87c5db8b779e4199260f7152.ETS_SIGNING)
                  {
                     _loc1_ = 0x1904FF55 ^ -760809647 ^ -1073343767 ^ -1248648108;
                  }
                  else
                  {
                     _loc1_ = -1480324095 ^ 0x36B92A85 ^ 0x3F526065 ^ 0x1018785E;
                  }
                  break;
               case 2:
                  if(_playerChar == null)
                  {
                     _loc1_ = 0x274C1678 ^ 0x08F84116 ^ -1586164196 ^ 0x30F667CA;
                  }
                  else
                  {
                     _loc1_ = 0x37703492 ^ -1965211072 ^ 0x189A3F3B ^ 0x1B007754;
                  }
                  break;
               case 3:
                  _playerChar._e0fa1409bf0227106cc53a79();
                  _loc1_ = -373652903 ^ -1670939348 ^ 0x5ED98D6F ^ -1791800154;
                  break;
               case 4:
                  return;
               case 5:
                  _playerChar._1963d0a948fa760e5dca0769();
                  _loc1_ = 0x10D3B3BF ^ 0x3E72D45A ^ -1783484957 ^ 0x052474BA;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         super.updateWithType(param1);
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_TOURNAMENT_ENTER:
               §§push(0x31662E17 ^ 0x0FE7F126 ^ -186292847 ^ -899368288);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_TOURNAMENT_START:
               §§push(-725047105 ^ -468736416 ^ 0x6068F655 ^ 0x50AFF88B);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED:
               §§push(-931865540 ^ 0x4DC9B842 ^ 0x4D444782 ^ -923196418);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_MEMBER_FINISH:
               §§push(-1855592947 ^ -1579601797 ^ 0x6D9E15FA ^ 0x5D22C38F);
               break;
            default:
               §§push(-388244854 ^ -2040128374 ^ 0x57445B2E ^ 0x39F99D2A);
         }
         switch(§§pop())
         {
            case 0:
               if(this._347cce96d0081deeaeb6c3be.state == _87c5db8b779e4199260f7152.ETS_IN_PROGRESS)
               {
                  this._16b21f2214b2d51b10f4ac9c();
               }
               this._cf76871a3c77d5ade4cc5f9e();
               break;
            case 1:
               this._15bce4113fc79eef0a5468c4();
               break;
            case 2:
               this._7c3199ffd99d260f92822e62();
               break;
            case 3:
         }
      }
      
      public function _83a62d9fe5db584adea4e9b9() : void
      {
         var _loc1_:_4a26c3e739ada00470a83032 = null;
         var _loc2_:_c4969a6bb20461a897733432 = null;
         var _loc3_:_4a26c3e739ada00470a83032 = null;
         var _loc4_:_c4969a6bb20461a897733432 = null;
         var _loc5_:_ddb31413e3f8701e7e98beaf = _gui._b66d5fe309c22d89cc02cda6(_706b9e8a05fa6a971551d21d.ECT_TOURNAMENT);
         Debug.assertNotEqual(_loc5_,null,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၌ၨဘေჁსါၘჅ჻ჭဵკჟၾႜဨტၢၟၓგ၉ါေ၁တჵႉဂၣ၌ွტ၅ၵႧტტ၃်ႣဧႿნႅၒ႔Ⴥဗ့ၐშ႖သჱჂၗ၌သ၅ႽიჇၓၜ჻စၔႂၝႜၶლျჃၢუႿ჻ႻႫဍၜစმ၆်ဉၰဩၮနိ္Ⴭဍჱ႙၍၅Ⴝწႊ႗ၒჸႺကჸ჈ၽႾნშႩ႔ჸპტყၓႥၪၹ႑ႌၖႌဇჴ၈ၔჼჩყႸႦႽგ႖ဒႚ၇ႈႡၥპვေ჊င၈ჽႂჹ၏ၮသწၞႫၗႅသႀႷႽჩၻაၣၸ၅ჹჺု၆ႄႪჩဠჂၟၾႻძ၊ႎၶ႙Ⴋွვႏၠ჻႕ၤၽၶၺဥႥႨ၇ၿ့႕ჀႾუါ္Ⴍၓဵတ႗ႍၴႛ႞့ြဏჷღနႥჯၾ","ကေှფჵေရဖၔၱ၆ၷၤဠႽႄ") + _706b9e8a05fa6a971551d21d.ECT_TOURNAMENT + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勘刐剃削劋劂刓勛刧剩刈勝刬剷剋勄剔刔剭剴割剥剔勫制剛刀剀刋刵券剕刹剋功勁剬劶勪剂利劥剼劺刐剜刭勸勓刔刏刨劺刂","劜剱勔剱势勣劍剂勈劾刭劻劀勇剝勖"));
         var _loc6_:Array = [];
         var _loc7_:int = Math.min(_loc5_.controllerCountdown.itemsLimit,this._347cce96d0081deeaeb6c3be.members.length);
         var _loc8_:Boolean = false;
         var _loc9_:int = -1220263946 ^ -1847489694 ^ 0x39DB1FA2 ^ 0x1F7EAB37;
         while(_loc9_ <= _loc7_)
         {
            _loc1_ = this._347cce96d0081deeaeb6c3be._b791b98a9f3de94ffe6bb5e9(_loc9_);
            Debug.assertNotEqual(_loc1_,null,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ტဴ။ၮ႐သჸრၣჱႊၐჽჿဓჅႎჳႬაბထာငწဂႢ၂ၥဏჟဪზၑ႘ႬဪၾჇ၄რႠ჊ბဉညႛိႣႅ႒ეၼဍၷရჅლႿჷၻၓႵၠნცၝ်Ⴢ჊ჅႈဏზၷထဍႆဠჺငႸၱႪဏၲჟႮးမၱၑსမၐჿ၁ဟၙჹ႗ၲႄქ႒ဒၚႈძ႒Ⴙဦსზ႐ကာၹၘႥჺ႑ႣჀ့Ⴤဂ၌჉Ⴎၑქဏჶၬဦ၆ႹၷဘႣြ၄ႈ","ႂჅცဆჯႌာპဃ၁ტ့ငၲယႁ") + _loc9_.toString());
            if(_loc1_.isPlayer && !_loc8_)
            {
               _loc8_ = true;
            }
            _loc2_ = this._8e86c7cb85f8220ac460cc4e(_loc1_);
            _loc6_.push(_loc2_);
            _loc9_++;
         }
         if(!_loc8_)
         {
            _loc6_.pop();
            _loc3_ = this._347cce96d0081deeaeb6c3be._386b700ee35253aed185d2b6();
            Debug.assertNotEqual(_loc1_,null,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揶揪揈排掩掯掷挦揽掸捖捄推掮揨揧掸揽掲掬捉挝掣掎接挰捷掻挂掓接揀揨捠接挈捓捝掯揕揘捙掌掶捆掿描揅挅捨掉掂挾掯捊揰捘掤挚挱挪掉挝掇掶掵捥揻挪挤揘掺按捰揗掐捤揪捡掏捩捿挍揕揃揌挧捀揫揔捱揨","捁挿捐捜挤揈挱挢揑掔揲揧挻揸描揢"));
            _loc4_ = this._8e86c7cb85f8220ac460cc4e(_loc3_);
            _loc6_.push(_loc4_);
         }
         _loc5_.controllerCountdown.items = _loc6_;
         this._347cce96d0081deeaeb6c3be._c819e1b755a434d9c8a283f5();
      }
      
      private function _8e86c7cb85f8220ac460cc4e(param1:_4a26c3e739ada00470a83032) : _c4969a6bb20461a897733432
      {
         var _loc2_:_c4969a6bb20461a897733432 = null;
         var _loc3_:DisplayObjectContainer = new gViewCountdownItem();
         var _loc4_:_c4969a6bb20461a897733432 = new _c4969a6bb20461a897733432(param1,_loc3_);
         _loc4_.tournamentType = this._347cce96d0081deeaeb6c3be.type;
         return _loc4_;
      }
      
      override public function _b24937139cc44ffe53f7fc23(param1:Number, param2:Number, param3:_08c120b706560fce9302bcab = null) : Boolean
      {
         var _loc4_:Boolean = false;
         if(!(param3 is _c9513c48978d5034cc9ff2f4))
         {
            return _loc4_;
         }
         if(_locationLayersBase == null)
         {
            return _loc4_;
         }
         return Boolean(_locationLayersBase.tournamentWalls) && _locationLayersBase.tournamentWalls.hitTest(param1,param2,param3);
      }
      
      override public function update(param1:uint, param2:uint) : void
      {
         super.update(param1,param2);
         this._374af5697f0fbd2c2ee67ed0();
      }
      
      private function _374af5697f0fbd2c2ee67ed0() : void
      {
         var _loc1_:int = -1130361029 ^ -1840139598 ^ -874367499 ^ -451704708;
         var _loc2_:int = 0x756F96DB ^ -1555382210 ^ 0x7A5B0E81 ^ -1401005980;
         var _loc3_:int = 0x0DD559EA ^ -1048771821 ^ -585773229 ^ 0x7FB6924A;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1705465604 ^ -23781880 ^ 0x7E329986 ^ 0x74F42891))
            {
               case 0:
                  _loc1_ = GameSwf.instance.managerTournaments.tournamentCurrent.timeLeftStart;
                  _loc2_ = limit(_loc1_ + (-190888963 ^ 0x792BF703 ^ -291325373 ^ 0x63160EBC),0x6E1EED51 ^ 0x24A92EC2 ^ -1295221698 ^ -126107732,0x054A6FF2 ^ 0x0C88CFBA ^ -132283569 ^ -237034750);
                  if(_loc2_ != _locationLayersBase.startLineCounter.currentFrame)
                  {
                     _loc3_ = -682572101 ^ -1359796931 ^ -1495142035 ^ -1320610550;
                  }
                  else
                  {
                     _loc3_ = 0x2581503F ^ -1411781840 ^ -1573185112 ^ 0x4268A540;
                  }
                  break;
               case 1:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_062_UI_Timer_count_normal);
                  _loc3_ = 0x01F3D856 ^ -1216365663 ^ -1906204104 ^ 0x56E6C628;
                  break;
               case 2:
                  _locationLayersBase.startLineCounter.gotoAndStop(_loc2_);
                  if(_loc2_ > (-46563039 ^ 0x70ED23F1 ^ -1127331923 ^ 0x311AE57C))
                  {
                     _loc3_ = -360533112 ^ -864062698 ^ -1341780813 ^ -118436913;
                  }
                  else
                  {
                     _loc3_ = -911883213 ^ -629660561 ^ 0x46EE117F ^ 0x3B38F6C5;
                  }
                  break;
               case 3:
                  _loc1_ = -1037310641 ^ 0x7D3CEEF6 ^ -1600875432 ^ 0x1F839FE1;
                  _loc2_ = -80976474 ^ 0x42B87B3C ^ 0x131C0877 ^ -1433921811;
                  if(_locationLayersBase.startLineCounter != null)
                  {
                     _loc3_ = 0x44A93A6E ^ 0x0477A8E9 ^ -635495177 ^ -188053101;
                  }
                  else
                  {
                     _loc3_ = -811756694 ^ 0x4497E044 ^ 0x7E3FF7AF ^ -1690401946;
                  }
                  break;
               case 4:
                  return;
               case 5:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_062_UI_Timer_count_end);
                  _locationLayersBase.startLineCounter = null;
                  _loc3_ = -840001378 ^ 0x626274BE ^ -42022158 ^ 0x3CF92135;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function destroy() : void
      {
         Cc.removeEqualSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၠ၉၍ჽႴၵჹဤႩ႔ႵბထာჇ჋ဇႝ႟လႿၓႷႨ","ႉ႐ჰၗჾႫაჹ၂ၪဢၡშဈ့မ"),this.openWall);
         super.destroy();
      }
   }
}

