package com.ax3.fishao.view.dialogs.missions
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.display.dialogs._eaf1c366e9817b3f7cf20d19;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.model.missions._6c4d7e638317cabf44146578;
   import com.ax3.fishao.model.missions._9e4dde010354b3b2f826e82e;
   import com.ax3.fishao.model.missions._f5cf3700441694e942e33075;
   import com.ax3.fishao.model.types._2779876e190c8116dcb912a5;
   import com.ax3.fishao.model.types._4550d767240c3d7f4adff121;
   import com.ax3.fishao.model.types._704801704e2529c9dcb315d1;
   import com.ax3.fishao.model.types._ab8eeb0459fbe4d045fe04a8;
   import com.ax3.fishao.tutorial._283b592e1b144e604db439f2;
   import com.ax3.fishao.tutorial._3810c68698c1b61dede7885f;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class _b0da6e4b902d47621d963f3d extends _43afb9185ff771963c88456b
   {
      
      private var _7250ce0d9429c6c5674f4d85:String = "active";
      
      private var _d310c9f2bcfdad2cb639b97b:int = 0;
      
      private var _3e3495235498c7fbe2cc686a:_9e4dde010354b3b2f826e82e = new _9e4dde010354b3b2f826e82e();
      
      private var _892f6263665fd96a4de50246:_73899a4de8f83c8d2c26f545;
      
      private var _437d2767176b9f9e766eb288:_73899a4de8f83c8d2c26f545;
      
      private var _831e0682d34986f7f286659e:_73899a4de8f83c8d2c26f545;
      
      private var _47a0d04918e4d91aa3e1d8da:Dictionary;
      
      private var _83c8c7c7e8e30fdd4c8b2328:_283b592e1b144e604db439f2;
      
      public function _b0da6e4b902d47621d963f3d()
      {
         super();
         this._83c8c7c7e8e30fdd4c8b2328 = GameSwf.instance.managerTutorial;
         this._47a0d04918e4d91aa3e1d8da = new Dictionary(true);
         this._47a0d04918e4d91aa3e1d8da[_f5cf3700441694e942e33075.EMID_BOB_MINIGAME] = _3810c68698c1b61dede7885f.ETT_BOB_GAME;
         this._47a0d04918e4d91aa3e1d8da[_f5cf3700441694e942e33075.EMID_CHANGE_CHARACTER] = _3810c68698c1b61dede7885f.ETT_CHANGE_CHARACTER;
         this._47a0d04918e4d91aa3e1d8da[_f5cf3700441694e942e33075.EMID_DECORATE_HOME] = _3810c68698c1b61dede7885f.ETT_DECORATION;
         this._47a0d04918e4d91aa3e1d8da[_f5cf3700441694e942e33075.EMID_GO_TO_FISHMARKET] = _3810c68698c1b61dede7885f.ETT_FISH_MARKET;
      }
      
      public static function _55f94f258094d999ec9ca580(param1:String) : String
      {
         switch(param1)
         {
            case _704801704e2529c9dcb315d1.BAIT:
               §§push(0x72E0F4F3 ^ -467114084 ^ 0x40CC95AF ^ -704379200);
               break;
            case _704801704e2529c9dcb315d1.ROD:
               §§push(0x3048A780 ^ -1494203273 ^ 0x01B8BC2A ^ -1761583140);
               break;
            case _704801704e2529c9dcb315d1.FURNITURE:
               §§push(-774913553 ^ 0x4B7DC3E6 ^ 0x50DB8767 ^ -899054228);
               break;
            case _704801704e2529c9dcb315d1.LUCK_POTION:
               §§push(0x626944B6 ^ 0x68E1AE3D ^ 0x6F1A2C8D ^ 0x6592C605);
               break;
            case _704801704e2529c9dcb315d1.MAGIC_WATCH:
               §§push(-310316585 ^ -1540283492 ^ 0x36EC63C0 ^ 0x7F5DB18F);
               break;
            case _704801704e2529c9dcb315d1.RADAR:
               §§push(-1891780026 ^ -143725910 ^ 0x76F5CED2 ^ 0x0EA69E3B);
               break;
            case _704801704e2529c9dcb315d1.ENERGY:
               §§push(-1850924552 ^ 0x66901D48 ^ 0x4FEE322E ^ -1194127720);
               break;
            case _704801704e2529c9dcb315d1.FISHBUCKS:
               §§push(0x1564B542 ^ 0x6993D642 ^ -1553494744 ^ -544149969);
               break;
            case _704801704e2529c9dcb315d1.FISHCOINS:
               §§push(0x200EC24A ^ -1621905363 ^ -363682355 ^ 0x550FD7A2);
               break;
            case _704801704e2529c9dcb315d1.SHINY_POTION:
               §§push(0x39127CE0 ^ 0x4EF28550 ^ 0x586F092E ^ 0x2F8FF097);
               break;
            default:
               §§push(0x7EB2D39A ^ -826074327 ^ -2015944832 ^ 0x37A6D739);
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
      
      override public function show() : void
      {
         super.show();
      }
      
      override public function close() : void
      {
         super.close();
         this._3e3495235498c7fbe2cc686a.removeEventListener(Event.CHANGE,this._bd0ce7f2e6ef82fefbf9d36c);
         this._3e3495235498c7fbe2cc686a.removeEventListener(Event.ADDED,this._acfb0ade21f273bc56e5dd85);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         closeButton.handler = function(param1:MouseEvent):void
         {
            close();
         };
         buttonAcceptMission.handler = this._dab9231a9b2aa086d7f0cc1e;
         buttonCollect.handler = this._28f6bef491c41ac57a3abda0;
         buttonSwitchView.handler = this._5abcc9bc17e719bdabf4ea4f;
         buttonPrevPage.handler = this._ef13daf18e65cf139b1c0874;
         buttonNextPage.handler = this._acd49bbdb415479e867dd04f;
         buttonAcceptMission.label = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捉挍挡插揳挓揓捜挪捊掑掖掔採挑挡掹掮挥捓挼揱揤描揼挧揠揘挝探挖揵揚掖掮掰揶掸挪掐提捛揧揵揵掄捌掷援掻提揬","掿挚捥掅挔挅捁挟揿掛掞挔据揼措捷"));
         buttonCollect.label = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刜勈勨办勚勰剕剱剋刎刵刖勘勝动剠刏创剹勸动剔剜劓剶劁劵劸剕到劵刏加劦剜刑剬則剬刄剌刱勤剥刺剢刊剟勖剅勁勨劂勣","劤劫刓剎勫別剈刅勦勇劗劉劧勚勠刍"));
         buttonSwitchView.label = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("်ჶႿწიၺၽႧჼჟႢႯၚჃဿဘဦჭႪၲჼွ႘ၯၖၤၿკထႃၙ၈၏႟ၮဪႚ္ცၬჟႲლႍဓၽ","ჇဴჍႜၹၻჹ၆ბဂჩ჆ეၸၥჿ") + (this._7250ce0d9429c6c5674f4d85 == _9e4dde010354b3b2f826e82e.ACTIVE ? _9e4dde010354b3b2f826e82e.COMPLETED : _9e4dde010354b3b2f826e82e.ACTIVE));
         buttonSwitchView.disable();
         labelHeader.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勝勋剙剘劉勍剑剀勡勠劓劁勣勝劾勈勇到劔勔劐刮勡刲剰刮刎剨勗剠劏剰劬勻劋剱勷勎","勢劒勻剾勪剅勼剭勎別剴劉刘刳劁勖"));
         labelProgressOverall.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဗၞ჉ძွၗ့჎ძႎႁဏႷნုၦဵၜქၯဗႆႲၰწႎၡდၐჷဓ႓ယდဴါოလႈနႡ჉ႷၫႻၓဝႩჺႱၫწဋႰဿႩႡႝ","ၫ၆ဟჼဦဒႝဟႌეႻჄတၺဋပ"));
         this._3e3495235498c7fbe2cc686a.addEventListener(Event.CHANGE,this._bd0ce7f2e6ef82fefbf9d36c);
         this._3e3495235498c7fbe2cc686a.addEventListener(Event.ADDED,this._acfb0ade21f273bc56e5dd85);
         this._3e3495235498c7fbe2cc686a._8ef4d75da09e80aac1890c97();
         this._892f6263665fd96a4de50246 = new _73899a4de8f83c8d2c26f545(labelMissionTitle);
         this._437d2767176b9f9e766eb288 = new _73899a4de8f83c8d2c26f545(labelMissionProgressValue);
         this._831e0682d34986f7f286659e = new _73899a4de8f83c8d2c26f545(labelPagesValue);
         title.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掽換掵掜挴掅揍捲掅挩授揅揄掗揉挎揦捗捌捝揉排掔挊挱掷掓捻掁捔挠掵揢挥挡掫挰捒","掸挷揕挤掙挋揌掫揳挠挐掏挔挞揑揲") + this._7250ce0d9429c6c5674f4d85);
         labelHeader.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勍到刼劳勽勭勀刞刿勵勍剹剔募判劌剴加刖剤労分劁剌劌劖初刧劯刎劗動劃勋刼勥创剾","勫刕刮刬勃剚切劃分刚劜剃剞勛劧券"));
         labelProgressOverall.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掤按揦挫揷挞捼捇掶捖掠掼捍揲揋揁捳掭揤捁挞捖揈插揫掣捔挊挦揵挹掚掰挔捏捿控损挃揓揗掙探挂捆掿捥捚捘挼挕掣挻挻揃揯捠捇","掖掫掲捹捵掩揉掅揂掍掷揫换接挪揆"));
         this._831e0682d34986f7f286659e.text = "";
         this._892f6263665fd96a4de50246.text = "";
         labelMissionDescription.text = "";
         labelMissionProgressValue.text = "";
         labelMissionReward.text = "";
         labelMissionRewardDescription.text = "";
         labelProgressOverallValue.text = "";
         labelProgressOverall.text = "";
         progressBarMission.visible = false;
         progressBarMission.gotoAndStop(-94271833 ^ -1825283470 ^ 0x6F3B008D ^ 0x066EE459);
         progressBarOverall.gotoAndStop(0x68D9B91C ^ -203769846 ^ -1757531678 ^ 0x0C3D30F5);
         rewardImageContainer.visible = false;
         buttonAcceptMission.visible = false;
         buttonCollect.visible = false;
         buttonPrevPage.visible = false;
         buttonNextPage.visible = false;
      }
      
      private function _ef13daf18e65cf139b1c0874(param1:MouseEvent) : void
      {
         if(this._d310c9f2bcfdad2cb639b97b > (-1490991933 ^ 0x25BD6BE5 ^ -1397176570 ^ 0x2E24E820))
         {
            --this._d310c9f2bcfdad2cb639b97b;
         }
         else
         {
            this._d310c9f2bcfdad2cb639b97b = -234885384 ^ -182886569 ^ 0x5210A271 ^ 0x56F613DE;
         }
         this._bd0ce7f2e6ef82fefbf9d36c();
      }
      
      private function _acd49bbdb415479e867dd04f(param1:MouseEvent) : void
      {
         if(this._d310c9f2bcfdad2cb639b97b < this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85].length - 1)
         {
            ++this._d310c9f2bcfdad2cb639b97b;
         }
         else
         {
            this._d310c9f2bcfdad2cb639b97b = this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85].length - 1;
         }
         this._bd0ce7f2e6ef82fefbf9d36c();
      }
      
      private function _5abcc9bc17e719bdabf4ea4f(param1:MouseEvent) : void
      {
         var _loc2_:int = -205234351 ^ 0x77F5C30B ^ -1471009709 ^ -798729395;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5577AA20 ^ -121548156 ^ 0x8893F9 ^ 0x51398018))
            {
               case 0:
                  this._7250ce0d9429c6c5674f4d85 = _9e4dde010354b3b2f826e82e.COMPLETED;
                  this._3e3495235498c7fbe2cc686a._f9fdaa0835ee8bff9687158b();
                  _loc2_ = 0x15CD070C ^ -1012937631 ^ -647595660 ^ -214738593;
                  break;
               case 1:
                  if(this._7250ce0d9429c6c5674f4d85 == _9e4dde010354b3b2f826e82e.ACTIVE)
                  {
                     _loc2_ = 0x62F44992 ^ -28686527 ^ -390560085 ^ -2013174979;
                  }
                  else
                  {
                     _loc2_ = -1094651127 ^ -706511966 ^ -824571255 ^ 0x59FE6965;
                  }
                  break;
               case 2:
                  this._7250ce0d9429c6c5674f4d85 = _9e4dde010354b3b2f826e82e.ACTIVE;
                  this._3e3495235498c7fbe2cc686a._8ef4d75da09e80aac1890c97();
                  _loc2_ = 0x0FC40766 ^ 0x70C61B4B ^ -610044826 ^ 0x58A6830D;
                  break;
               case 3:
                  buttonAcceptMission.disable();
                  buttonCollect.disable();
                  buttonSwitchView.disable();
                  buttonPrevPage.disable();
                  buttonNextPage.disable();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _28f6bef491c41ac57a3abda0(param1:MouseEvent) : void
      {
         buttonCollect.disable();
         var _loc2_:_6c4d7e638317cabf44146578 = _6c4d7e638317cabf44146578(this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85][this._d310c9f2bcfdad2cb639b97b]);
         this._3e3495235498c7fbe2cc686a._e99b596ee5cf0280fad04e6e(_loc2_);
         this.close();
      }
      
      private function _dab9231a9b2aa086d7f0cc1e(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = null;
         this._3e3495235498c7fbe2cc686a._b7b02e2a02eb9cbb756497b9(this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85][this._d310c9f2bcfdad2cb639b97b]);
         if((this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85][this._d310c9f2bcfdad2cb639b97b] as _6c4d7e638317cabf44146578).action == _4550d767240c3d7f4adff121.ITEM_USE)
         {
            GameSwf.instance._904abe67d8849826ace64512(_eaf1c366e9817b3f7cf20d19.TAB_ID_EXTRA);
         }
         else if((this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85][this._d310c9f2bcfdad2cb639b97b] as _6c4d7e638317cabf44146578).action == _4550d767240c3d7f4adff121.TOURNAMENT_ENTER)
         {
            GameSwf.currentLocationDialog.gui._0061b798f209ddad9351e332();
         }
         else if((this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85][this._d310c9f2bcfdad2cb639b97b] as _6c4d7e638317cabf44146578).id == (0x5F972266 ^ -1063975876 ^ -664694831 ^ 0x4763A9BD))
         {
            GameSwf.currentLocationDialog.gui.dailyQuestManWidget.onMouseClick();
         }
         else if((this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85][this._d310c9f2bcfdad2cb639b97b] as _6c4d7e638317cabf44146578).action == _4550d767240c3d7f4adff121.SOCIAL_OPEN_LINK)
         {
            _loc2_ = null;
            if((this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85][this._d310c9f2bcfdad2cb639b97b] as _6c4d7e638317cabf44146578).id == (-1288763689 ^ -399575586 ^ 0x3372AB96 ^ 0x687358A6))
            {
               _loc2_ = new URLRequest(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揈揘揀挐捗揋揦捭捵挄挷捼揇揸捿捋揬掵捶捕捱捘掚掐掇捲揉捼挹掯援捾掎挙揆挵掭揀挶揍掀捣挠掘捫挐捽挨揼揼揽捽挚揋接挊","挑揟挣掮掇挅挡插挚掤挧挞换揿挻揚"));
            }
            else if((this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85][this._d310c9f2bcfdad2cb639b97b] as _6c4d7e638317cabf44146578).id == (-1330333965 ^ -1835824164 ^ -94694614 ^ -662950331))
            {
               _loc2_ = new URLRequest(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("别剭刖勌剩劄功劒剹剒創劳剨刭剛刓劧剕勴勢劕劃劓劓劽劻勅勷刕剚刚剬刼剟剞划劒劈勮勔勱刏劄劚力刨刔勝刭刻利勊劏効勰刴动刏","剳劰勸力剖勏刂剃劖剹剁刻勳刬剤刻"));
            }
            if(_loc2_ != null)
            {
               navigateToURL(_loc2_,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဍყეၮၲၳ၃ၔႣၢအკၔႹე႑႘ჩႿႀ","ჴႠტၣჄ၃၎္Ⴁჷၩჰိၷၸჿ"));
            }
         }
         this._e6090a1c07eefd592e27ea6c(this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85][this._d310c9f2bcfdad2cb639b97b] as _6c4d7e638317cabf44146578);
         this.close();
      }
      
      private function _e6090a1c07eefd592e27ea6c(param1:_6c4d7e638317cabf44146578) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:String = this._47a0d04918e4d91aa3e1d8da[param1.id];
         if(_loc2_ == null)
         {
            return;
         }
         this._83c8c7c7e8e30fdd4c8b2328._86a74eb7e4a5c697cea6f526(_loc2_);
      }
      
      private function _acfb0ade21f273bc56e5dd85(param1:Event) : void
      {
         this.close();
      }
      
      private function _bd0ce7f2e6ef82fefbf9d36c(param1:Event = null) : void
      {
         var _loc2_:_6c4d7e638317cabf44146578 = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:_a4e47350c89a50d87a148c28 = null;
         this._d310c9f2bcfdad2cb639b97b = param1 == null ? this._d310c9f2bcfdad2cb639b97b : -1817495728 ^ 0x5E89CEA9 ^ 0x1D1F4F5A ^ -801261917;
         title.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၦႁგၴႎဩ჌ၛၛဿჄၡჾၱყ၀ဓ჏ႁ၎჆ၹျჰႾ၇Ⴓ႘჻၆ეငრჩ჈ူႋდ","ႊၺჿဤၪႩရႬჇၺ၍ဴႚၐၘူ") + this._7250ce0d9429c6c5674f4d85);
         buttonSwitchView.label = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("助劦剮劽勶剐刯刍刼劈剧剘剱刃剿勒剟劯刃勘刊割剥刡务剏利刑勊剚勦剚剩劍刕劣勊勓劅勩勪刨剰剤劾副","劜勪刑勹劳刪勅剳勾勉剛剪劝剆勖剽") + (this._7250ce0d9429c6c5674f4d85 == _9e4dde010354b3b2f826e82e.ACTIVE ? _9e4dde010354b3b2f826e82e.COMPLETED : _9e4dde010354b3b2f826e82e.ACTIVE));
         this._da521cf2f6f710ab00c1c3cf();
         buttonAcceptMission.enable();
         buttonCollect.enable();
         buttonSwitchView.enable();
         if(this._d310c9f2bcfdad2cb639b97b > (-1713005633 ^ -1489595317 ^ -968771616 ^ -124602348))
         {
            buttonPrevPage.enable();
         }
         else
         {
            buttonPrevPage.disable();
         }
         if(this._d310c9f2bcfdad2cb639b97b < this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85].length - 1)
         {
            buttonNextPage.enable();
         }
         else
         {
            buttonNextPage.disable();
         }
         if(this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85].length > (0x17BAC02E ^ -1997484870 ^ 0x149F696B ^ -1948948993))
         {
            _loc2_ = _6c4d7e638317cabf44146578(this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85][this._d310c9f2bcfdad2cb639b97b]);
            _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揉挜挼揌挑捪揘揗挞掊揮揘捐掽挸掳掝揪揓捼捝揮捒揍挠捏揠捆捊揸揤措挴挛掕挻換挻","挔揗揁揘掼掌採排捧挶揤掩揭揤揞揍"));
            _loc3_ = _loc3_.replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剤刈创劤勖剂剎勹勛劂刞刻剡劖刮劲剱勾刡剾勱刺剣労動勹","刾刉刁别别剐劁剂勽勜刞劣刟剅剔剧"),this._d310c9f2bcfdad2cb639b97b + (0x36BC49C1 ^ -606811255 ^ -489234893 ^ 0x0FBE5C7A));
            _loc3_ = _loc3_.replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ო၊ၹဿဏၙျჷႸႥსႢჿძ္ဳးနႯ჊ჺ၌","ြლႍ႐ၓႥၓႷ၎ვ჈ါြძჱတ"),this._3e3495235498c7fbe2cc686a.missions[this._7250ce0d9429c6c5674f4d85].length);
            this._831e0682d34986f7f286659e.text = _loc3_;
            this._6034400fa1c6958553e27a4a(_loc2_);
            this._616d43c922ac3ca54406d7d2(_loc2_);
            _loc4_ = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("တဳၸႶეႭმပဘქ၅Ⴊღၘအ၅ႉცႸၱႧညၫႨ","ၔဃၽპၝწၿႻჁ჈ჀჳႊႎႵი") + _loc2_.id + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捝挜掲揢揕挋捳挵挕揂掃挅捗挙挷掅掷揵据掷","捕捣捜按揣揸揂掸揲挤揲掖揑挼掻揱"));
            _loc4_ = _loc4_.replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("動剎割勯劭刪前刎勫剤剃功劝剏勝勓劝劶勠勴","剒募剙剖劮劭剚刯刧分勮刉剒劸剚割"),_c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(_loc2_.values[0x7A645C12 ^ -598681708 ^ 0x01DB60E5 ^ -1477448861]));
            _loc5_ = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劺劬劶刁勘办劇剜剕刿劮勋剝勯勪剐创剙勫劍剧削劺務","勼劒剌劢勊劲剘勸剙劚刁勏剭勎勯剨") + _loc2_.id + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剪刻務剏劅动劷删劀剩剬刓劫劰剧劗剙劸剎務刅勺劌励刮刵劌刧刴勬剥勭","刈刞刔剗刉刲勘務勺勴劄刍勑利劂勧"));
            _loc5_ = _loc5_.replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勫券剓剺勧刂剂剽勋勦办制勝剺剒剬力勠剞剔券刂剗剥动刎","努劾勭判刪勇剢剹刾勞劕刖剷劆分剢"),app.user.username);
            _loc5_ = _loc5_.replace(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揁捠挺掍揾捵控揫挰掚挼捸挥挝揆揳掹掞揚授","捰掜揢掓掄揉挤捲挊换掃捃掙挙揨掼"),_c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(_loc2_.values[0x5EE87EB9 ^ -959770966 ^ 0x6309CF44 ^ -81084585]));
            this._892f6263665fd96a4de50246.text = _loc4_;
            labelMissionDescription.text = _loc5_;
            rewardImageContainer.removeChildren();
            _loc6_ = _55f94f258094d999ec9ca580(_loc2_.reward);
            if(_loc6_.length)
            {
               _loc7_ = _3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_loc6_,_loc2_.rewardTypeId);
               _loc8_ = new _a4e47350c89a50d87a148c28();
               _loc8_.width = -1515193996 ^ -1492872000 ^ 0x63EBDA56 ^ 0x6140B762;
               _loc8_.height = 0x6BF14DA9 ^ -1173815527 ^ 0x08A0D47C ^ -648452532;
               _loc8_.x = 0x01A02BB6 ^ 0x3E0112B9 ^ 0x2049B593 ^ -535334052;
               _loc8_.y = -113616764 ^ -1961746430 ^ 0x40773D24 ^ -845104542;
               app.resourceManager.replaceBitmapDataFromURL(_loc8_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_loc7_));
               rewardImageContainer.addChild(_loc8_);
            }
            buttonPrevPage.visible = true;
            buttonNextPage.visible = true;
            rewardImageContainer.visible = true;
            buttonAcceptMission.visible = !_loc2_.isAccepted;
            buttonCollect.visible = _loc2_.isDone && !_loc2_.rewardCollected;
         }
         else
         {
            this._831e0682d34986f7f286659e.text = "";
            this._892f6263665fd96a4de50246.text = "";
            labelMissionDescription.text = "";
            labelMissionProgressValue.text = "";
            labelMissionReward.text = "";
            progressBarMission.visible = false;
            progressBarMission.gotoAndStop(0x07DB69B0 ^ 0x32E0836A ^ -411402567 ^ -767454110);
            rewardImageContainer.visible = false;
            buttonAcceptMission.visible = false;
            buttonCollect.visible = false;
            buttonPrevPage.visible = false;
            buttonNextPage.visible = false;
         }
      }
      
      private function _616d43c922ac3ca54406d7d2(param1:_6c4d7e638317cabf44146578) : void
      {
         var _loc2_:int = -118324715 ^ 0x521094E0 ^ 0x5A1A7C1F ^ -252155158;
         var _loc3_:int = -571200537 ^ 0x2323A9B4 ^ 0x0A4D9FF2 ^ -191226463;
         switch(param1.type)
         {
            case _ab8eeb0459fbe4d045fe04a8.ITEM:
               §§push(0x7486833D ^ 0x7C3C3CA9 ^ -292760113 ^ -432641445);
               break;
            case _ab8eeb0459fbe4d045fe04a8.CATCH:
               §§push(0x79B4EA2D ^ -228867127 ^ -1390709335 ^ 0x26F45C4C);
               break;
            case _ab8eeb0459fbe4d045fe04a8.NPC:
               §§push(0x7F786933 ^ 0x4C703BAD ^ -1670276118 ^ -1350973066);
               break;
            case _ab8eeb0459fbe4d045fe04a8.SOCIAL:
               §§push(-1042141317 ^ -246152217 ^ -1551831013 ^ -1825121148);
               break;
            case _ab8eeb0459fbe4d045fe04a8.LOCATION:
               §§push(0x5F2A4FE7 ^ 0x4487BCAA ^ 0x3D5618C9 ^ 0x26FBEB80);
               break;
            case _ab8eeb0459fbe4d045fe04a8.RAFT:
               §§push(0x12ECBDBA ^ -1964681744 ^ -1118032416 ^ 0x2555C5AF);
               break;
            case _ab8eeb0459fbe4d045fe04a8.TOURNAMENT:
               §§push(-1977063417 ^ -1667952967 ^ -259491503 ^ -432726039);
               break;
            case _ab8eeb0459fbe4d045fe04a8.FEATURE:
               §§push(-8287360 ^ 0x4D82CA6B ^ 0x427AA2BD ^ -260447407);
               break;
            default:
               §§push(0x2D8D4FF4 ^ 0x7CA1F020 ^ 0x025F6EF5 ^ 0x5373D129);
         }
         switch(§§pop())
         {
            case 0:
               if(param1.actionProperty == _2779876e190c8116dcb912a5.ITEM_HOME_POINTS)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0x0E407E0D ^ -1898601594 ^ -913380429 ^ 0x491B3638] : -121923225 ^ 0x71BACC3A ^ -2113994167 ^ 0x08FE5714;
                  _loc3_ = param1.values.length ? param1.values[0x53FEAC1F ^ 0x40357396 ^ -2143494608 ^ -1812528711] : 0x1B0391AA ^ 0x4A8C9E19 ^ -1980564783 ^ -662833822;
               }
               else if(param1.actionProperty == _2779876e190c8116dcb912a5.ITEM_COLLECTION)
               {
                  _loc2_ = param1.condition.length ? int(param1.condition.length) : -1971975705 ^ 0x312B0DE6 ^ -516577051 ^ 0x5A68ACE4;
                  _loc3_ = param1.values.length ? int(param1.values.length) : 0x24759833 ^ -1706042538 ^ 0x323C0ABF ^ -1945744933;
               }
               else
               {
                  _loc2_ = param1.condition.length ? param1.condition[-947158273 ^ 0x0BB2F7C9 ^ 0x0DD7BF10 ^ -1041315290] : 0x281BF2AE ^ 0x146141D4 ^ 0x3D8E4A7D ^ 0x01F4F907;
                  _loc3_ = int(param1.values.length);
               }
               break;
            case 1:
               if(param1.action == _4550d767240c3d7f4adff121.CATCH_FISH_IN_NUMBER)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0x1F4DF494 ^ 0x3CDAEFA6 ^ -869447453 ^ -273001519] : 0x4D1D3589 ^ 0x2983605A ^ 0x53D9EDED ^ 0x3747B83E;
                  _loc3_ = param1.values.length ? param1.values[-1082931141 ^ 0x67795C6B ^ -109011559 ^ 0x218A09C9] : -1536461325 ^ 0x57D867AB ^ -436593179 ^ 0x16490FBD;
               }
               else if(param1.action == _4550d767240c3d7f4adff121.CATCH_FISH_DIFFERENT_IN_NUMBER)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0x6EA77F31 ^ 0x20CD681E ^ 0x7EDC23F1 ^ 0x30B634DE] : 0x517B0F9A ^ 0x731C96DE ^ 0x3B589663 ^ 0x193F0F27;
                  _loc3_ = param1.values.length ? param1.values[-1715266926 ^ -1002324200 ^ -1073487901 ^ -1652458903] : -1665431313 ^ 0x75D9BC61 ^ -895119954 ^ 0x23C7B920;
                  _loc3_ = _loc3_ == (0x7EC4FF45 ^ -1113339999 ^ 0x4D0E6623 ^ -1905697081) ? int(app.fishDict.getAll().length) : _loc3_;
               }
               else if(param1.action == _4550d767240c3d7f4adff121.CATCH_FISH_BREED)
               {
                  _loc2_ = param1.condition.length ? param1.condition[-1117939239 ^ -1834340339 ^ -435759341 ^ -906920249] : -1669589216 ^ -1618260363 ^ -1615833418 ^ -1673064477;
                  _loc3_ = param1.values.length ? param1.values[0x3878B148 ^ 0x02C6F284 ^ 0x2BC57A97 ^ 0x117B395B] : 0x01132416 ^ -129277377 ^ 0x3B91665D ^ -1027006348;
                  _loc3_ = _loc3_ == (-71346323 ^ 0x4CD33DD9 ^ 0x624C5233 ^ -719308665) ? int(app.fishDict.getAll().length) : _loc3_;
                  if(this._7250ce0d9429c6c5674f4d85 == _9e4dde010354b3b2f826e82e.COMPLETED)
                  {
                     if(_loc3_ < _loc2_)
                     {
                        _loc2_ = _loc3_;
                     }
                     else if(_loc3_ > _loc2_)
                     {
                        _loc3_ = _loc2_;
                     }
                  }
               }
               else if(param1.action == _4550d767240c3d7f4adff121.CATCH_FISH_BY_DIFFICULTY)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0x26C3C206 ^ -246312460 ^ -1451284861 ^ 0x7EED7571] : 0x7695AF1C ^ -53150607 ^ 0x512244B0 ^ -614262819;
                  _loc3_ = param1.values.length > (-218391756 ^ 0x5D108C5C ^ 0x63BA6721 ^ -867078072) ? param1.values[-1131061138 ^ 0x2F924B1F ^ 0x5F4D0C98 ^ -867555352] : -385792780 ^ -1837842015 ^ 0x21334755 ^ 0x5A46C201;
               }
               else if(param1.action == _4550d767240c3d7f4adff121.CATCH_FISH_SHINY)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0x4454AA7F ^ 0x09F4252D ^ -1471321027 ^ -437394577] : 0x4CF7CD3A ^ -1733759397 ^ 0x60B3CA41 ^ -1259542240;
                  _loc3_ = param1.values.length ? param1.values[-1496927200 ^ 0x64B6BE20 ^ 0x1F224B0D ^ -581811955] : -2044362855 ^ -35124128 ^ 0x4A85F894 ^ 0x31488B6C;
               }
               else if(param1.action == _4550d767240c3d7f4adff121.CATCH_FISH_SHINY_COLLECTION)
               {
                  _loc2_ = int(param1.condition.length);
                  _loc3_ = int(param1.values.length);
               }
               else
               {
                  _loc2_ = int(param1.condition.length);
                  _loc3_ = int(param1.values.length);
               }
               break;
            case 2:
               if(param1.action == _4550d767240c3d7f4adff121.NPC_MINIGAME)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0x16EC02F7 ^ -1442947119 ^ 0x4EA5BA89 ^ -239605841] : -143625436 ^ -258850589 ^ 0x45C781B3 ^ 0x4225B274;
                  _loc3_ = param1.values.length ? param1.values[-266208361 ^ -1612821905 ^ 0x7B406F62 ^ 0x14BFDE9A] : 0x46053836 ^ 0x6ADC496D ^ -131532646 ^ -722368063;
               }
               else if(param1.action == _4550d767240c3d7f4adff121.NPC_CHAT)
               {
                  _loc2_ = param1.condition.length ? int(param1.condition.length) : -254332415 ^ -1544747043 ^ 0x4B267585 ^ 0x181C4059;
                  _loc3_ = param1.values.length ? int(param1.values.length) : 0x34161BD5 ^ -587850416 ^ -937752489 ^ 0x20FB0ED2;
               }
               break;
            case 3:
               _loc2_ = param1.condition.length ? param1.condition[0x3B272D1C ^ 0x79C58456 ^ -1654476372 ^ -545253146] : -1889201373 ^ -248801152 ^ -507342454 ^ -1618208215;
               if(param1.action == _4550d767240c3d7f4adff121.SOCIAL_FRIEND_MAKE)
               {
                  _loc3_ = param1.values.length ? param1.values[0x62566DF2 ^ -580074617 ^ 0x45FEEAF5 ^ -87800704] : 0x2FEDAB2A ^ -758200893 ^ -261306929 ^ 0x0D4FAB26;
               }
               else
               {
                  _loc3_ = param1.values.length > (-362633269 ^ -832174780 ^ -2026138302 ^ -1556138036) ? int(param1.values.length) : -692436090 ^ -553197596 ^ -2087559282 ^ -1976646675;
               }
               break;
            case 4:
               _loc2_ = param1.condition.length ? int(param1.condition.length) : -888836623 ^ 0x61E13964 ^ -774551946 ^ 0x7B3112E3;
               _loc3_ = param1.values.length ? int(param1.values.length) : -1627212768 ^ -662618296 ^ 0x36EEBA30 ^ 0x716D3158;
               break;
            case 5:
               _loc2_ = param1.condition.length ? int(param1.condition.length) : -889115208 ^ 0x711D597D ^ -1910050438 ^ 0x343A85BF;
               _loc3_ = param1.values.length ? int(param1.values.length) : 0x7D62BC1D ^ -31229854 ^ -356233495 ^ 0x69858A96;
               break;
            case 6:
               _loc2_ = param1.condition.length ? param1.condition[0x22A30BBE ^ 0x2D786551 ^ -1442111853 ^ -1513066372] : -395081024 ^ 0x15E57310 ^ -450454447 ^ 0x18B06581;
               _loc3_ = param1.values.length ? param1.values[-411420560 ^ -1403843439 ^ -1322221214 ^ -98978429] : -630215846 ^ 0x318848AC ^ 0x773F568D ^ -1663519365;
               break;
            case 7:
               _loc2_ = param1.condition.length ? param1.condition[-124928992 ^ 0x4B2F24CD ^ 0x7E5D0D2B ^ -838887994] : -612898630 ^ -957696157 ^ -1585045423 ^ -1139048568;
               _loc3_ = param1.values.length ? param1.values[-1622143076 ^ 0x2ECB2B1C ^ 0x51B7D215 ^ -533924203] : -306820769 ^ 0x1443EE08 ^ -698560723 ^ 0x2FA9687A;
         }
         progressBarMission.visible = _loc3_ > (-319008851 ^ -1149057801 ^ 0x70BD3415 ^ 0x27C3BF4E);
         labelMissionProgressValue.visible = _loc3_ > (0x7D16352E ^ 0x3DA8F137 ^ -3587463 ^ -1082685855);
         progressBarMission.gotoAndStop((0x537707D2 ^ -352818816 ^ 0x7D187B81 ^ -996731438) + Math.round(_loc2_ / _loc3_ * (-1730397737 ^ -96490157 ^ 0x455848F1 ^ 0x27BBDC16)));
         this._437d2767176b9f9e766eb288.text = _loc2_ + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挪捚援揁捝揪挺挮捘捘","掞挴揧捘掷揮捝挄揭挐捼挏揩捔掄挮") + _loc3_;
      }
      
      private function _6034400fa1c6958553e27a4a(param1:_6c4d7e638317cabf44146578) : void
      {
         labelMissionReward.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捹捣掲挤挳揠挎揵揼揣掀掃掽揷挽捤掳挢捞挪捭挶挸掰揹揢揸揫揭揨揳揎挺捆掎挊掵捠掃捊揾掋掋挻掣挈揂揎掻挨","揩揢揂揪插掇挦揥捴掓捴挊捔掂揹挦"));
         if(param1.reward == _704801704e2529c9dcb315d1.FISHBUCKS)
         {
            labelMissionRewardDescription.text = param1.rewardAmount + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ှၠ္ჹუျႛ၈ထ႓","။ပაჴၗႏ၉ၜၻၹႽႬႵၨჱၤ") + _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၤဨეဦჼ႑ႻႽၞბႥ႕ဏၯჭႊၧုြႦႽႽႃဌბთဟბტဏ","Ⴖ႘ိႢၪႼႄჄიႠლဟႚၕဿ၍"));
         }
         else if(param1.reward == _704801704e2529c9dcb315d1.FISHCOINS)
         {
            labelMissionRewardDescription.text = param1.rewardAmount + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ါზჇၲ႗ၣၛခၤန","ႱჰႺႡႅၼြၮသၘწႮႎၛဋ႖") + _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挰揠揮揮据挝捦揁援挩揓挝掞掹持捈挫挪揚挛掗掵掱揯挲捦捤挳掣措掸挍挭掯揙揷挐掗掕掯掮捵挺掽挾挒推挣掣捞掏揰揸掤挆捘","挚揆掶掖掇揀揓措捺捚授捘捃掀掘捋") + (param1.rewardAmount > (-1047700907 ^ -1617644608 ^ -191303401 ^ -1434380157) ? _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剺剼刾劳勌勂勖勵刹刯","勖務剕刘則劶剘刃剥勩勔劂刧分削劆") : ""));
         }
         else if(param1.reward == _704801704e2529c9dcb315d1.ENERGY)
         {
            labelMissionRewardDescription.text = param1.rewardAmount + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჲჳဖၢჭၮၬရჺႻ","ၦ჈ာიၼဖၑၣႸၶၭဗ်ၤႏ်") + _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刱剩剄刾剑勸剮勻勸剪切剽剪刧刣劰勃務劥刮制剌剝勊势勹勰剕劍劕勗勎剕劃勱勜剤勸勳劾剝刭勴判剰剉勱剀","劙刍劕前刖劐到勉刋剩劅刚刖剀务別"));
         }
         else if(param1.reward == _704801704e2529c9dcb315d1.FURNITURE)
         {
            labelMissionRewardDescription.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捺揝挣掵捽捱捲揈挈挻捯挔挑挈挦揣揄掎掜捴掣捼揮捚掺揎揵揁挸挀","振捅持捥掋挮揗挺挸捷持捸掺揙揌揬") + param1.rewardTypeId);
         }
         else if(param1.reward == _704801704e2529c9dcb315d1.ROD)
         {
            labelMissionRewardDescription.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႓ဥ႒ჶၑႫႵဂႋႥၹၭ႟ნიႨ","ဨခ၄ၛၹეႭႦၨ၍ၕဴႉწဃႺ") + param1.rewardTypeId);
         }
         else if(param1.reward == _704801704e2529c9dcb315d1.BAIT)
         {
            labelMissionRewardDescription.text = param1.rewardAmount + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၤဒ၎ႹဗေႹფႜხ","ႈႼၽჭဗဏၼႋტၤၹႁဤၗႤრ") + _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劢勂刯勯刪劼剪勑勱勒功剭刓劂劢勒剭勣","劲削刃劲刭利刂刉劳勮励剈勮刲剨剨") + param1.rewardTypeId);
         }
         else
         {
            labelMissionRewardDescription.text = param1.rewardAmount + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဎჾჹ႐ဖჷ။ၤၛႿ","ယႷဆჴၥႵ႞ဣიိဝႏုხიၠ") + _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勎初剖勮剽刔剆刕剄劤创副労势剘劢勭劅剿勰制勀勻剡劷刘","勯刋剞剣劯勚勫剹勒剼剩劝劕剠刍劉") + param1.rewardTypeId);
         }
      }
      
      private function _da521cf2f6f710ab00c1c3cf() : void
      {
         labelProgressOverallValue.text = Math.round((0x2FBA417A ^ -892691838 ^ 0x4A36AF1C ^ -1354337152) * (this._3e3495235498c7fbe2cc686a.completedMissionsNum / this._3e3495235498c7fbe2cc686a.allMissionsNum)) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掻捶挱挠挈揨挽揗揖揄","揗揓挴揆挿捹挬揰揁揊捭挍挽捞掅捃");
         progressBarOverall.gotoAndStop((0x073738CB ^ 0x5A28D670 ^ 0x260EC792 ^ 0x7B112928) + Math.round((-564213769 ^ -843779021 ^ -579187657 ^ -829390953) * this._3e3495235498c7fbe2cc686a.completedMissionsNum / this._3e3495235498c7fbe2cc686a.allMissionsNum));
      }
   }
}

