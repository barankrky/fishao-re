package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.dialog._d248fcdc0f7611518f3784e3;
   import com.ax3.display.wrappers._0936f2bb14fbc5e7f1f78e94;
   import com.ax3.display.wrappers._84f980b3493d42da7117586f;
   import com.ax3.display.wrappers._eab9eb27b629f65692d2112b;
   import com.ax3.fishao.model.vo._4958d20007bef43d6fa5624d;
   import com.ax3.fishao.model.vo._9cff77d5f188667f75b09b59;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl._593f9faa4abfdef2dd5e6544;
   import com.ax3.fishao.view.wrappers.impl._6b91a781d828662e84e05553;
   import com.ax3.fishao.view.wrappers.impl._e8798cc6b38bda4d1c07c41a;
   import com.ax3.fishao.view.wrappers.impl._f4e580d87c390c028b8b56dc;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class _1e8aa1e901f6cb055eb6d9c9 extends _8071087ebe26c264282580d0
   {
      
      public var title:_6b91a781d828662e84e05553;
      
      public var closeButton:FishaoButtonWrapper;
      
      public var tabs:_593f9faa4abfdef2dd5e6544;
      
      public var activeReportsTab:_84f980b3493d42da7117586f;
      
      public var historyReportsTab:_eab9eb27b629f65692d2112b;
      
      public var usersTab:_0936f2bb14fbc5e7f1f78e94;
      
      public var settingsLanguageDropdown:_f4e580d87c390c028b8b56dc;
      
      protected var _languageDropdownMediator:_e8798cc6b38bda4d1c07c41a;
      
      protected var _activeReportsTabIndex:int = -1;
      
      protected var _historyReportsTabIndex:int = -1;
      
      protected var _usersTabIndex:int = -1;
      
      private var _6fdbadb505084e7f773efff6:Vector.<_4958d20007bef43d6fa5624d>;
      
      private var _ee5e931bce9f0bcf756735bc:Vector.<_4958d20007bef43d6fa5624d>;
      
      private var _35132eb102680c2b356850a5:Vector.<_9cff77d5f188667f75b09b59>;
      
      private var _1badb611b985726041dea717:int;
      
      private var _1d3085dbd87f4a98bfea57b8:int;
      
      private var _6408601d9f47a2a1e69e6dcd:int;
      
      private var _bc98699dba8ff9452522f032:int;
      
      public function _1e8aa1e901f6cb055eb6d9c9()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဘჁဣ၌ၕႽჇၷြႮდჇၣძჁၝ႘დფႄၩၲမ႕ჴၙဤိჳၧဦစ၆ႼၩႀმၟဟყႶუၖოჷၚ჏ၟ","ႍႨယგၟ႔ခႄ၃გ႘ႮႽჃႽဓ");
         super(_loc1_);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this.closeButton.handler = this._dbf2b936f65ad4c2b8190eb0;
         this._activeReportsTabIndex = this.tabs._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掅掙捔揈捄掓掸掺挾掞掔接捕掚捍掳採揉揮捡掜捣掘捰挲挞挭掬換掽掟控捂掭挹掛揿掸挦揥","捤掤揝捆持捉捸掦捠掘揝揕掊揢挖揉")));
         this._historyReportsTabIndex = this.tabs._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揃捔掆捻捕捎握掍揩挩揟揞揚揪掩挶捡挘挊揠损掭挏掓挲捵挮挛掬挻掎掞捼挳揔捯掛揕揬挷接挓","揶掤挧掓捈挷挮捴掆捖掷揽挿捇揂揎")));
         this._usersTabIndex = this.tabs._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဉუဈႀႭჽဧႥႬႹ჻Ⴓဠံၾი჻წဃ၏პყၴჭ","჊ႽၨၵဇႀჂနႲဒႜည။ჭၿၷ")));
         this._languageDropdownMediator = new _e8798cc6b38bda4d1c07c41a(GameSwf.instance.gameSettings[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剥勃勽劎刃務劂勸剒劅勞剶勸剧则刅劤劄劵勖刎勬劗劽剾勍加剓刿剴勵劚","剬募刉劇剜勋刾劦勴劸刃刑剥務勘刟")]);
         this._languageDropdownMediator.config(this.settingsLanguageDropdown);
         this.tabs.addEventListener(_593f9faa4abfdef2dd5e6544.TAB_CHANGED,this._a9ce1f018b95613d5a8894d6,false,0x3C6FF52A ^ -1792134298 ^ 0x61E65B05 ^ -928539319,true);
         this.title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捿控换据捄捁揾捆挤揗捧捱捧捰掎掃捠揝掸掁揸揋捒捘揹挷捳掂掞指挧挏掚揃揰捦挆揋揥捠持揜捋掍捶捖掣措揁掓","捤挼揪揬捜换揇挎挿挲探接挼揊捦掙"));
         super._935ac2966ddad68dfc449202();
      }
      
      private function _dbf2b936f65ad4c2b8190eb0(param1:MouseEvent) : void
      {
         close();
      }
      
      private function _a9ce1f018b95613d5a8894d6(param1:Event) : void
      {
         this._068aa8ade82a90a9f7d8c4bb(this.tabs.currentTab);
      }
      
      protected function _068aa8ade82a90a9f7d8c4bb(param1:int, param2:Boolean = false) : void
      {
         this.activeReportsTab.visible = false;
         this.historyReportsTab.visible = false;
         this.usersTab.visible = false;
         switch(param1)
         {
            case this._activeReportsTabIndex:
               §§push(0x0AC37A8F ^ 0x318F5F8A ^ 0x2316A2C2 ^ 0x185A87C7);
               break;
            case this._historyReportsTabIndex:
               §§push(0x60A51542 ^ -652238404 ^ 0x4C82FF11 ^ -180859922);
               break;
            case this._usersTabIndex:
               §§push(-1769301466 ^ 0x7054982F ^ 0x751C35 ^ -424993218);
               break;
            default:
               §§push(-1746194668 ^ 0x68C47DDC ^ 0x1ED29F38 ^ -503460365);
         }
         switch(§§pop())
         {
            case 0:
               this.settingsLanguageDropdown.visible = true;
               this.activeReportsTab.visible = true;
               this.activeReportsTab._c725eaefa0e53c4c1cd30fbd(this._6fdbadb505084e7f773efff6);
               break;
            case 1:
               this.settingsLanguageDropdown.visible = false;
               this.historyReportsTab.visible = true;
               this.historyReportsTab._b04ce7bbc1816c6333dbabd1(this._ee5e931bce9f0bcf756735bc,this._1badb611b985726041dea717,this._1d3085dbd87f4a98bfea57b8);
               break;
            case 2:
               this.settingsLanguageDropdown.visible = false;
               this.usersTab.visible = true;
               this.usersTab._b04ce7bbc1816c6333dbabd1(this._35132eb102680c2b356850a5,this._6408601d9f47a2a1e69e6dcd,this._bc98699dba8ff9452522f032);
         }
      }
      
      public function _c3739d0cb157bdef3a42da98(param1:Vector.<_4958d20007bef43d6fa5624d>) : void
      {
         var _loc2_:int = -281341350 ^ -329755486 ^ 0x25751990 ^ 0x26FC49AA;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1190956567 ^ 0x3260A5D3 ^ 0x1B768299 ^ -1862320030))
            {
               case 0:
                  this.activeReportsTab._c725eaefa0e53c4c1cd30fbd(this._6fdbadb505084e7f773efff6);
                  _loc2_ = -770140216 ^ -868007655 ^ 0x147961A7 ^ 0x0AC8A1B5;
                  break;
               case 1:
                  if(this.tabs.currentTab == this._activeReportsTabIndex)
                  {
                     _loc2_ = 0x477F40C3 ^ -341087013 ^ -1751639940 ^ 0x3BA622A5;
                  }
                  else
                  {
                     _loc2_ = -1471746144 ^ 0x11D69A63 ^ 0x6F50B117 ^ -701836777;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  this._6fdbadb505084e7f773efff6 = param1;
                  if(_state == _d248fcdc0f7611518f3784e3.READY)
                  {
                     _loc2_ = 0x5CB7A7C5 ^ 0x6ABECBF5 ^ -1354230288 ^ -1716818176;
                  }
                  else
                  {
                     _loc2_ = 0x661EF2E7 ^ 0x676DEC0C ^ -64197727 ^ -38444151;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _26d2d14335d049b2f8f354e6(param1:Vector.<_4958d20007bef43d6fa5624d>, param2:int, param3:int) : void
      {
         var _loc4_:int = -2087693232 ^ -1550459592 ^ -1175838523 ^ -1628919877;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x4A812F39 ^ 0x57E1688F ^ -1448541020 ^ -1278325499))
            {
               case 0:
                  if(this.tabs.currentTab == this._historyReportsTabIndex)
                  {
                     _loc4_ = 0x090736C0 ^ -1075020957 ^ -791859898 ^ 0x61216EF0;
                  }
                  else
                  {
                     _loc4_ = 0x1B12772D ^ 0x633532FB ^ -1888034848 ^ -262761438;
                  }
                  break;
               case 1:
                  this._ee5e931bce9f0bcf756735bc = param1;
                  this._1badb611b985726041dea717 = param2;
                  this._1d3085dbd87f4a98bfea57b8 = param3;
                  if(_state == _d248fcdc0f7611518f3784e3.READY)
                  {
                     _loc4_ = 0x5E489EF6 ^ 0x3C4AEB8C ^ -507788882 ^ -2067875133;
                  }
                  else
                  {
                     _loc4_ = -818320276 ^ -322081651 ^ -2111139483 ^ -1495687280;
                  }
                  break;
               case 2:
                  this.historyReportsTab._b04ce7bbc1816c6333dbabd1(this._ee5e931bce9f0bcf756735bc,this._1badb611b985726041dea717,this._1d3085dbd87f4a98bfea57b8);
                  _loc4_ = 0x176433F1 ^ 0x101A9AB5 ^ -1994820457 ^ -1990143033;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _7279a6cd0fad4fd0c8fb2fdc(param1:Vector.<_9cff77d5f188667f75b09b59>, param2:int, param3:int) : void
      {
         var _loc4_:int = -1491595865 ^ -1934947003 ^ -1390298247 ^ 0x7A87DFBE;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x2CD9FCE0 ^ -1807204567 ^ -1642493862 ^ -627232842))
            {
               case 0:
                  this._35132eb102680c2b356850a5 = param1;
                  this._6408601d9f47a2a1e69e6dcd = param2;
                  this._bc98699dba8ff9452522f032 = param3;
                  if(_state == _d248fcdc0f7611518f3784e3.READY)
                  {
                     _loc4_ = -845265859 ^ -1272672444 ^ 0x78317BF7 ^ -39922519;
                  }
                  else
                  {
                     _loc4_ = -133984150 ^ 0x7EA42BDD ^ 0x2DDD7CE2 ^ 0x576FA373;
                  }
                  break;
               case 1:
                  this.usersTab._b04ce7bbc1816c6333dbabd1(this._35132eb102680c2b356850a5,this._6408601d9f47a2a1e69e6dcd,this._bc98699dba8ff9452522f032);
                  _loc4_ = 0x41EF135A ^ -736163126 ^ -1417038023 ^ -1033057649;
                  break;
               case 2:
                  if(this.tabs.currentTab == this._usersTabIndex)
                  {
                     _loc4_ = 0x6ADBFA96 ^ -318854675 ^ -1709650186 ^ -534185559;
                  }
                  else
                  {
                     _loc4_ = -1795318908 ^ 0x5B839D4A ^ 0x53484EB6 ^ 0x60232C5E;
                  }
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

