package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.states._0c5d7c87ef42d62a09e53b93;
   import com.ax3.utils._cbd58f52130bcef0d9dc895a;
   import com.inkora.easing.Elastic;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.EventDispatcher;
   import flash.events.FocusEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.utils.setTimeout;
   
   public class _7ab28de02e0db526b6beee32 extends EventDispatcher implements IAssetWrapper
   {
      
      private var _704599b3b2fbe843184431aa:MovieClip;
      
      private var _e4753cb9d0f0cb6815b4d6eb:TextField;
      
      private var _79c5f7a30a5580d4e937f6ad:Stage;
      
      private var _a0589633eb6b0f9f7b6553e0:_c1be2790d5419c3da77144f8;
      
      private var _a86a7eee9b0f48018821d0e6:MovieClip;
      
      private var _913d5eb068a41c754049f765:Boolean = false;
      
      public function _7ab28de02e0db526b6beee32()
      {
         super();
      }
      
      public function get child() : MovieClip
      {
         return this._704599b3b2fbe843184431aa;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._704599b3b2fbe843184431aa = param1 as MovieClip;
         this._e4753cb9d0f0cb6815b4d6eb = TextField(DisplayObjectContainer(this._704599b3b2fbe843184431aa).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႐ဟႼ၆ჳီၿ႐တ჆င၍ႶჇ","ဂჺჳ჌მၫႪႧ၍ႏၰငტၲ჋ဴ")));
         this._e4753cb9d0f0cb6815b4d6eb.maxChars = 0x1BA84A98 ^ -164864190 ^ -1890168782 ^ 0x62D24548;
         this._e4753cb9d0f0cb6815b4d6eb.text = "";
         this._e4753cb9d0f0cb6815b4d6eb.addEventListener(FocusEvent.FOCUS_OUT,this._16df90dc74d04da47789badf);
         this._a86a7eee9b0f48018821d0e6 = this._704599b3b2fbe843184431aa.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刌制别刀刀勛勬刭刣劥勄劲剬劚剭劬剀勴勮勰刮利剆剿剭劬","利功剉剥劮勮剂勤勢劇剋勘勛剭剎剛")) as MovieClip;
         this._a86a7eee9b0f48018821d0e6.alpha = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("თၖိဝქმဪაႋဋႱ႗ၦჭႣႝჄဣထ႔პၷზဈ","ဠဌ။ၱဴჰ႑၁ုრჳဈႯნ႔჏");
         this._a86a7eee9b0f48018821d0e6.visible = false;
         this._a0589633eb6b0f9f7b6553e0 = new _c1be2790d5419c3da77144f8((param1 as MovieClip).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揳挫掎掖掩捶掱掝挴揫揄揢挊揱掁捯揾提握揓掗掠掩挞掙捫捩揞挘捞揺揼","捤捣挋揼指掣挜捻捍捍揠揈揠捻掣挬")) as MovieClip);
         this._a0589633eb6b0f9f7b6553e0.visible = false;
      }
      
      public function removeListeners() : void
      {
         var _loc1_:int = 0x21886B6C ^ 0x431CFD0B ^ -1246014523 ^ -1730801619;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x60C8D9BF ^ 0x56E1FE31 ^ -671547430 ^ -1373106725))
            {
               case 0:
                  if(this._e4753cb9d0f0cb6815b4d6eb.hasEventListener(FocusEvent.FOCUS_OUT))
                  {
                     _loc1_ = 0x21E76227 ^ 0x286EEDAB ^ -570693834 ^ -1685340873;
                  }
                  else
                  {
                     _loc1_ = -1440113739 ^ 0x11208DE4 ^ -898697036 ^ 0x3E9E3B6B;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._e4753cb9d0f0cb6815b4d6eb.removeEventListener(FocusEvent.FOCUS_OUT,this._16df90dc74d04da47789badf);
                  _loc1_ = -1512610131 ^ -656543782 ^ 0x209156C4 ^ 0x12620A3D;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _46acce9e8c9547018d0b6c8c() : void
      {
         if(!this._e4753cb9d0f0cb6815b4d6eb.hasEventListener(FocusEvent.FOCUS_OUT) && this.isShowed())
         {
            this._e4753cb9d0f0cb6815b4d6eb.addEventListener(FocusEvent.FOCUS_OUT,this._16df90dc74d04da47789badf);
         }
      }
      
      public function _e7e9991913759be9d51d4c5f(param1:_0c5d7c87ef42d62a09e53b93) : void
      {
         var _loc2_:int = -1854929337 ^ -511231658 ^ 0x536D4D88 ^ -2145279439;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-197049819 ^ -166980151 ^ 0x13F2081B ^ -1308324001))
            {
               case 0:
                  this._a0589633eb6b0f9f7b6553e0._e7e9991913759be9d51d4c5f(param1);
                  if(param1.chatPanelShown)
                  {
                     _loc2_ = 0x2B963DD5 ^ -776222010 ^ 0x162854CA ^ 0x4FBE7373;
                  }
                  else
                  {
                     _loc2_ = -238806668 ^ 0x20B1F80B ^ -667481282 ^ -1426507030;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this.show(false);
                  _loc2_ = 0x11127AAF ^ 0x2EAEFB23 ^ -1772817979 ^ 0x0A53A0E0;
                  break;
               case 3:
                  this.hide(false);
                  _loc2_ = -2013981615 ^ 0x46CF767A ^ 0x6B288838 ^ 0x09A93ABA;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _16df90dc74d04da47789badf(param1:FocusEvent) : void
      {
         if(this._704599b3b2fbe843184431aa.visible && this.isShowed())
         {
            this._79c5f7a30a5580d4e937f6ad.focus = this._e4753cb9d0f0cb6815b4d6eb;
         }
      }
      
      private function _b752449e0f93e59c5e164da8(param1:* = null) : void
      {
         this._913d5eb068a41c754049f765 = false;
      }
      
      public function show(param1:Boolean = true) : void
      {
         var _loc2_:int = 0x6CFB44D3 ^ -1199119368 ^ 0x6D317390 ^ -1840404769;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x69CDA223 ^ -1459280563 ^ 0x7CBBD4A5 ^ -1754127957))
            {
               case 0:
                  return;
               case 1:
                  this.stage.focus = this._e4753cb9d0f0cb6815b4d6eb;
                  TweenCube.destroyTweensOf(this._704599b3b2fbe843184431aa,false);
                  TweenCube.to(this._704599b3b2fbe843184431aa,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("၌ჅၭဈၢာჩტႰႾျႺၚခქႽၪၼႷႀოၼႷ႞","ဿჹბႷမရႆႫၵဧၒႥံဥჷက"),{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勓划勇劋勷勜動刖刀刅","剑创剆勋劗勽剤刡勱劧勡制剖劦列勡")):0x18DECB02 ^ 0x42A31061 ^ -312267023 ^ 0x48E10A55},{
                     (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刼務劀劇労刕劶剿刻勣劖勊勗劋剦劔","劶利剐刵剭劈勿勽劸劖劶剶刡勐劖刚")):Elastic.easeOut,
                     (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勜劐勚刿勏剽刔刐刿到勪剨刷初劒劇刻勢募劇劐剤剠劾則刬勫励","剿刦劍勞勽则刌刘刷勃剙劅剢勡剹勐")):this._b752449e0f93e59c5e164da8
                  });
                  _cbd58f52130bcef0d9dc895a.clear();
                  this._a0589633eb6b0f9f7b6553e0.visible = true;
                  this._a0589633eb6b0f9f7b6553e0._4cc3657f86b3a36252da6cf9();
                  GameSwf.guiState.chatPanelShown = true;
                  if(!this._e4753cb9d0f0cb6815b4d6eb.hasEventListener(FocusEvent.FOCUS_OUT))
                  {
                     _loc2_ = -820588428 ^ 0x4353645F ^ -1642817982 ^ 0x3950500B;
                  }
                  else
                  {
                     _loc2_ = 0x533C60A8 ^ 0x2630EE20 ^ -1242150310 ^ -335825230;
                  }
                  break;
               case 2:
                  this._e4753cb9d0f0cb6815b4d6eb.addEventListener(FocusEvent.FOCUS_OUT,this._16df90dc74d04da47789badf);
                  _loc2_ = -1497761966 ^ -684124325 ^ -233094022 ^ -1466247661;
                  break;
               case 3:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_051_UI_Open_menu);
                  _loc2_ = 0x550C4F81 ^ -500847109 ^ 0x2469F4B0 ^ -1203673941;
                  break;
               case 4:
                  this._913d5eb068a41c754049f765 = true;
                  if(param1)
                  {
                     _loc2_ = -2051189439 ^ -1565982783 ^ -1073865927 ^ -1276460070;
                  }
                  else
                  {
                     _loc2_ = -1774597267 ^ 0x9068A9 ^ 0x523DFFE0 ^ -275435963;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _b1d30d70b5f2d61be4406def(param1:FocusEvent) : void
      {
         var _loc2_:int = -686388983 ^ -1195911989 ^ 0x32D6358D ^ 0x179403CE;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-955475135 ^ 0x0AE004F6 ^ 0x4D8C18B9 ^ -897323890))
            {
               case 0:
                  this._79c5f7a30a5580d4e937f6ad.focus = this._e4753cb9d0f0cb6815b4d6eb;
                  _loc2_ = 0x27DE3253 ^ -1877389142 ^ 0x27323177 ^ -636078068;
                  break;
               case 1:
                  if(this._704599b3b2fbe843184431aa.visible)
                  {
                     _loc2_ = 0x3BB09BEF ^ 0x22427EBA ^ 0x472D30B9 ^ 0x143CBE6C;
                  }
                  else
                  {
                     _loc2_ = -1906741958 ^ 0x3EDD2C8D ^ 0x4D9B51EE ^ -1208189989;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function hide(param1:Boolean) : void
      {
         var _loc2_:int = 0x66081F23 ^ 0x70C205BF ^ 0x5BC16B1C ^ 0x250820FF;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5BCCE004 ^ 0x59DB731D ^ 0x6B8E5089 ^ 0x019A92EE))
            {
               case 0:
                  TweenCube.destroyTweensOf(this._704599b3b2fbe843184431aa,false);
                  TweenCube.to(this._704599b3b2fbe843184431aa,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ႛ္ါ၍ၛႫၡ၃ჼ၁ၢზჀჾႼၭზၑ၏၉။ၠ်ქ","ၔၪႻႭႯႬႪျီဨဨဒဒႬႺ၀"),{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၫညရဧႴ။ေჹჹျ","გჽဘၷစဥၬဪဨႇတစႜძႈႎ")):-1796491213 ^ 0x0D7D7DFE ^ 0x38BB8421 ^ -1590869523},{
                     (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("力勮刈劦剔副剏刅剈创劈劋劳勄剱勡勭勦刖勤剢勆劸刨剜勱劎务","剣剀創剷劉劊勛努剪劆劢剼勘刓剽勌")):this._95d939d615c18483764fe0e5,
                     (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捣揥捅揃援揨挑掖捧捱捸揨掖掃揌挸","捇挭掺探挧揙挹揾挤接捸揠揼挷捶掰")):Elastic.easeOut
                  });
                  this._a0589633eb6b0f9f7b6553e0.visible = false;
                  GameSwf.guiState.chatPanelShown = false;
                  return;
               case 1:
                  if(this._e4753cb9d0f0cb6815b4d6eb.hasEventListener(FocusEvent.FOCUS_OUT))
                  {
                     _loc2_ = 0x54275147 ^ -235241631 ^ 0x4694F112 ^ -1958048178;
                  }
                  else
                  {
                     _loc2_ = 0x5B0D1D5B ^ 0x103AB1DA ^ -673292126 ^ -185950882;
                  }
                  break;
               case 2:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_052_UI_Close_menu);
                  _loc2_ = 0x6AD8343B ^ -865544642 ^ 0x0E6DA5E7 ^ -1059187044;
                  break;
               case 3:
                  if(param1)
                  {
                     _loc2_ = -811748575 ^ 0x52877FA9 ^ 0x40BABD1F ^ -1247600405;
                  }
                  else
                  {
                     _loc2_ = 0x40CBDA22 ^ -1154971571 ^ 0x5A2601DC ^ -909770035;
                  }
                  break;
               case 4:
                  this._e4753cb9d0f0cb6815b4d6eb.removeEventListener(FocusEvent.FOCUS_OUT,this._b1d30d70b5f2d61be4406def);
                  _loc2_ = -214199474 ^ -1377074600 ^ 0x20EE2F06 ^ 0x163D6F6D;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _3664746aeec4641375f1d491() : String
      {
         var _loc1_:String = this._e4753cb9d0f0cb6815b4d6eb.text;
         this._e4753cb9d0f0cb6815b4d6eb.text = "";
         return _loc1_;
      }
      
      private function _95d939d615c18483764fe0e5() : void
      {
         this.stage.focus = null;
         this._b752449e0f93e59c5e164da8();
      }
      
      public function isShowed() : Boolean
      {
         return this._704599b3b2fbe843184431aa.y != (0x7566CE1E ^ -1378331492 ^ 0x7CD92B4C ^ -1536708145) || this._913d5eb068a41c754049f765;
      }
      
      public function get stage() : Stage
      {
         return this._79c5f7a30a5580d4e937f6ad;
      }
      
      public function set stage(param1:Stage) : void
      {
         this._79c5f7a30a5580d4e937f6ad = param1;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._704599b3b2fbe843184431aa.visible = param1;
      }
      
      public function get textField() : TextField
      {
         return this._e4753cb9d0f0cb6815b4d6eb;
      }
      
      public function _c166f8399658c453070b38b6(param1:String, param2:String) : void
      {
         if(param2 == null || param2.length == (0x71557B19 ^ 0x5C928C84 ^ 0x5C95D60A ^ 0x71522197))
         {
            return;
         }
         this._a0589633eb6b0f9f7b6553e0._c0b4096a776edb7b0920ebf6(param1,param2);
         if(this.chatBlocked)
         {
            if(this._a0589633eb6b0f9f7b6553e0.canSendChatMessage)
            {
               this._23d127c4ad9556b4ee9dabcd();
            }
         }
         else if(param1 == app.user.username)
         {
            if(!this._a0589633eb6b0f9f7b6553e0.canSendChatMessage)
            {
               this._047a49ca6ea7255aa77a986e();
            }
         }
      }
      
      public function get draggingNow() : Boolean
      {
         return this._a0589633eb6b0f9f7b6553e0.draggingNow;
      }
      
      public function get historyPanelCapacity() : int
      {
         return this._a0589633eb6b0f9f7b6553e0.capacity;
      }
      
      public function get closeAllowed() : Boolean
      {
         return !(this.draggingNow || this.historyPanelCapacity > (0x61DF85DD ^ -2049987790 ^ -342794795 ^ 0x0F81733A)) || this.chatBlocked;
      }
      
      public function _047a49ca6ea7255aa77a986e() : void
      {
         this._a86a7eee9b0f48018821d0e6.visible = true;
         this._e4753cb9d0f0cb6815b4d6eb.selectable = false;
         this._e4753cb9d0f0cb6815b4d6eb.type = TextFieldType.DYNAMIC;
         this._e4753cb9d0f0cb6815b4d6eb.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勎剡刯勜剈刃刵创剧刭剡劵剃勮劔勖刽剆剻刺勫効勺剐削剠刳势剝勒勗剆刄勢劐刞剆勳削刁刋刃剫勒刦勧別劦剋刡刧労分分","勠勷剙剸勓劔刔剎剎刋劰務勡剀劶劍"));
         setTimeout(this._23d127c4ad9556b4ee9dabcd,-2009101085 ^ 0x406538EC ^ 0x0EFF92B1 ^ -962243698);
      }
      
      public function _23d127c4ad9556b4ee9dabcd() : void
      {
         var _loc1_:int = -1344771515 ^ 0x3F13D9FB ^ 0x7F155D9E ^ -1617163822;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-266356078 ^ 0x5B291D18 ^ -873005585 ^ 0x1082BD97))
            {
               case 0:
                  if(!this.chatBlocked)
                  {
                     _loc1_ = -1381183015 ^ -425687560 ^ 0x19D0598E ^ 0x229EEA5C;
                  }
                  else
                  {
                     _loc1_ = 0x6ADE9972 ^ -524763510 ^ 0x3F589E57 ^ -981705122;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  setTimeout(this._23d127c4ad9556b4ee9dabcd,0x3272591C ^ 0x58244B5F ^ -608880601 ^ -1310498988);
                  return;
               case 3:
                  if(!this.canSendChatMessage)
                  {
                     _loc1_ = 0x057C1117 ^ 0x15672828 ^ 0x39A4176E ^ 0x59FDC9A1;
                  }
                  else
                  {
                     _loc1_ = -562425808 ^ 0x20A364FA ^ -538336516 ^ 0x517231C0;
                  }
                  break;
               case 4:
                  this._a86a7eee9b0f48018821d0e6.visible = false;
                  this._e4753cb9d0f0cb6815b4d6eb.selectable = true;
                  this._e4753cb9d0f0cb6815b4d6eb.type = TextFieldType.INPUT;
                  this._e4753cb9d0f0cb6815b4d6eb.text = "";
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get chatBlocked() : Boolean
      {
         return this._a86a7eee9b0f48018821d0e6.visible;
      }
      
      public function get canSendChatMessage() : Boolean
      {
         return this._a0589633eb6b0f9f7b6553e0.canSendChatMessage;
      }
      
      public function get x() : Number
      {
         return this._704599b3b2fbe843184431aa.x;
      }
      
      public function get y() : Number
      {
         return this._704599b3b2fbe843184431aa.y;
      }
      
      public function get width() : Number
      {
         return this._704599b3b2fbe843184431aa.width;
      }
      
      public function get height() : Number
      {
         return this._704599b3b2fbe843184431aa.width;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this._704599b3b2fbe843184431aa.parent;
      }
   }
}

