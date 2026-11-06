package com.ax3.fishao.view.dialogs.trade.controllers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.trade.model._05c4e1b6af1696aeeffa56de;
   import com.ax3.fishao.view.dialogs.trade.model._394d2d1e72d06151d1adc157;
   import com.ax3.fishao.view.dialogs.trade.model._3f231537217a2498942b645b;
   import com.ax3.fishao.view.dialogs.trade.model._664206d546fdcb718f944b31;
   import com.ax3.fishao.view.dialogs.trade.model._d7abd67b46e338be06899109;
   import com.ax3.fishao.view.dialogs.trade.model._f3cf344e3850578c3978a02c;
   import com.ax3.fishao.view.dialogs.trade.views._67e27c96dcce91c2931b803e;
   import flash.display.DisplayObjectContainer;
   
   public class _2153ca80a127b10e78ae3477 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _fe57f2be4d7bdeb5bea0a508:_394d2d1e72d06151d1adc157;
      
      private var _f4d2b30df69933dc8c74ee5b:_67e27c96dcce91c2931b803e;
      
      private var _7b09886f5fcaa33db2991f07:String;
      
      private var _0b85323d6d29352f69bb6493:String;
      
      private var _28f3ecaf2e8b6777a6e5e57a:String;
      
      private var _name:String;
      
      private var _d4ece147b7301b6d4f280071:Array;
      
      private var _c177631db9f307720b092a4d:_f3cf344e3850578c3978a02c;
      
      public function _2153ca80a127b10e78ae3477(param1:_394d2d1e72d06151d1adc157, param2:DisplayObjectContainer, param3:String)
      {
         this._b8acfbbd53bc0fc15a5f6a7b = param3;
         this._fe57f2be4d7bdeb5bea0a508 = param1;
         this._f4d2b30df69933dc8c74ee5b = new _67e27c96dcce91c2931b803e(this,param2);
         super(this._f4d2b30df69933dc8c74ee5b);
         this.init();
      }
      
      public function set sidePlayerType(param1:String) : void
      {
         if(param1 == this._0b85323d6d29352f69bb6493)
         {
            return;
         }
         switch(param1)
         {
            case _3f231537217a2498942b645b.ETT_NPC:
               §§push(0x5DADBA0C ^ -278780660 ^ -192762045 ^ 0x464D3043);
               break;
            case _3f231537217a2498942b645b.ETT_PLAYER:
               §§push(0x1C3807D9 ^ 0x4A2FA168 ^ 0x3A16419B ^ 0x6C01E72B);
               break;
            default:
               §§push(0x6524583D ^ 0x401EDEBB ^ 0x10B28B0A ^ 0x35880D8E);
         }
         switch(§§pop())
         {
            case 0:
               this._f4d2b30df69933dc8c74ee5b.viewTradeStatus.source.visible = false;
               break;
            case 1:
               if(this._c177631db9f307720b092a4d.tradeSideTarget.type == _3f231537217a2498942b645b.ETT_NPC)
               {
                  this._f4d2b30df69933dc8c74ee5b.viewTradeStatus.source.visible = false;
               }
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挬挚捵掶挱接挏掵挨掏揶捅揫揓挴掕挓揀揞推掷掶捊掖挒捸捫掫掹挰揟掴挨揱掰捀捅捎授挸揳挝揹揎捴捩捁掫掘捸换排捻挆掂挐揻提","揗捜掔换掤捹捍捌揞捊捶挚捧挆捑挱") + param1);
         }
         this._0b85323d6d29352f69bb6493 = param1;
      }
      
      private function set _b8acfbbd53bc0fc15a5f6a7b(param1:String) : void
      {
         if(param1 == this._28f3ecaf2e8b6777a6e5e57a)
         {
            return;
         }
         switch(param1)
         {
            case _d7abd67b46e338be06899109.ETST_TARGET:
               §§push(0x540E9AEF ^ -1055367338 ^ -319725089 ^ 0x79E7A466);
               break;
            case _d7abd67b46e338be06899109.ETST_OWNER:
               §§push(0x5A5B951D ^ 0x3C9E6235 ^ -2052220302 ^ -479695525);
               break;
            default:
               §§push(0x739C157B ^ -1178918504 ^ -825843769 ^ 0x04E1AB26);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               this._28f3ecaf2e8b6777a6e5e57a = param1;
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刓利剒剿剛剭劵刈勀剆勣劋剜劊到刣勳勦剴劼勐勑刕剆劌刏勯劌勓劇刦劤刁剁労勣刿利勇勥加刪剑剑勱劬剖刿勬剗剦刢動劊刊剥劕劮","劋劂劼剑刐刋剧剀剰劵勜勇勈剈刑刿") + param1);
         }
      }
      
      public function set tradeStatus(param1:String) : void
      {
         var _loc2_:int = -2059442041 ^ 0x61CCF6C2 ^ 0x4F6740E5 ^ -1040562542;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-2068122648 ^ -636445461 ^ -1918345483 ^ -1184060987))
            {
               case 0:
                  return;
               case 1:
                  if(param1 == this._7b09886f5fcaa33db2991f07)
                  {
                     _loc2_ = 0x7ACCD815 ^ -375882569 ^ -1105464904 ^ 0x4721CD29;
                  }
                  else
                  {
                     _loc2_ = 0x25A617BC ^ -1792526515 ^ 0x354AC54F ^ -274039409;
                  }
                  break;
               case 2:
                  this._7b09886f5fcaa33db2991f07 = param1;
                  this._f4d2b30df69933dc8c74ee5b.viewTradeStatus.status = param1;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:int = -767738069 ^ 0x535177CF ^ -1857415323 ^ -1395952022;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1115955502 ^ -1671347728 ^ 0x4B3E1F36 ^ -691426819))
            {
               case 0:
                  this._name = param1;
                  this._f4d2b30df69933dc8c74ee5b.name = param1;
                  return;
               case 1:
                  return;
               case 2:
                  if(param1 == this._name)
                  {
                     _loc2_ = 0x631490D1 ^ -873317436 ^ 0x156329D6 ^ 0x0168AB2B;
                  }
                  else
                  {
                     _loc2_ = 0x6C7FBFE4 ^ -1029203161 ^ -358234170 ^ -124728596;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._c177631db9f307720b092a4d = GameSwf.instance.managerTrade.tradeModel;
         this.sidePlayerType = this._fe57f2be4d7bdeb5bea0a508.type;
         this.name = this._fe57f2be4d7bdeb5bea0a508.login;
         this._2860f5e1dcc1db9b026620eb();
         this._7350ffa9a4996f08e0610d01();
      }
      
      private function _2860f5e1dcc1db9b026620eb() : void
      {
         var _loc1_:String = null;
         var _loc2_:_664206d546fdcb718f944b31 = null;
         var _loc3_:_0efd1708c978d0fe0983d06e = null;
         this._35a8c309d9c4e66c1a905101();
         var _loc4_:Array = this._fe57f2be4d7bdeb5bea0a508.items;
         this.tradeStatus = this._fe57f2be4d7bdeb5bea0a508.status;
         switch(this._28f3ecaf2e8b6777a6e5e57a)
         {
            case _d7abd67b46e338be06899109.ETST_OWNER:
               §§push(0x4C68F2F4 ^ 0x35947E4E ^ -2069326567 ^ -44820061);
               break;
            case _d7abd67b46e338be06899109.ETST_TARGET:
               §§push(0x79669B26 ^ 0x10A9DAF1 ^ 0x1B942CE4 ^ 0x725B6D32);
               break;
            default:
               §§push(-557171606 ^ 0x57F9AD20 ^ 0x7039E347 ^ -116755953);
         }
         switch(§§pop())
         {
            case 0:
               _loc1_ = _05c4e1b6af1696aeeffa56de.ETIS_OFFER_OWNER;
               break;
            case 1:
               _loc1_ = _05c4e1b6af1696aeeffa56de.ETIS_OFFER_TARGET;
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၂ၯဘပ၉ဌၨ჊ၚ၂ဏტာယ႞პၥႵႶဃჁဒ၏ဟဧჟၻၙဂႳၱၔဘၟ၈჌႑ႄဝၤႜ၎ထႴၽဿၑგာႥჵၴငႮနႳနႫမო၊ႄ႘ჸ႓ၷီဗဃဝႈႷၦၣოႈဆრႜდဓႩბჁႚ၂၊ဎႤၜ჈ჯၶთၲဨტ်၆ႾႺႬိၒႺးႃႹၳლႮၘဓံ჏ၳၱაჁၲწႃႷპႪဩ္ქ႐ခჾဵၵအၕၰကဗႻႮჩသ","ၾႴ၎ဓြၧბჅႾံဍჹႛါიႨ") + this._28f3ecaf2e8b6777a6e5e57a);
         }
         this._d4ece147b7301b6d4f280071 = [];
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = new _0efd1708c978d0fe0983d06e(_loc2_,new gViewTradeItem());
            _loc3_.state = _loc1_;
            this._d4ece147b7301b6d4f280071.push(_loc3_);
         }
      }
      
      private function _7350ffa9a4996f08e0610d01() : void
      {
         var _loc1_:_0efd1708c978d0fe0983d06e = null;
         var _loc2_:Array = [];
         for each(_loc1_ in this._d4ece147b7301b6d4f280071)
         {
            _loc2_.push(_loc1_.view.source);
         }
         this._f4d2b30df69933dc8c74ee5b.items = _loc2_;
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_TRADE_OFFER_CHANGED_OWNER:
               §§push(0x420DD237 ^ 0x11AA3115 ^ 0x7C0A8452 ^ 0x2FAD6770);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TRADE_OFFER_CHANGED_TARGET:
               §§push(-1983833023 ^ -951448774 ^ -388903571 ^ -1503995369);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TRADE_STATUS_CHANGED:
               §§push(0x35EE143C ^ -935895336 ^ 0x338F8894 ^ -833174926);
               break;
            default:
               §§push(0x7255105C ^ -631200055 ^ 0x5F005B36 ^ -147460704);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               this._2860f5e1dcc1db9b026620eb();
               this._7350ffa9a4996f08e0610d01();
               break;
            case 2:
               this.tradeStatus = this._fe57f2be4d7bdeb5bea0a508.status;
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function _35a8c309d9c4e66c1a905101() : void
      {
         var _loc1_:_0efd1708c978d0fe0983d06e = null;
         if(this._d4ece147b7301b6d4f280071 == null)
         {
            return;
         }
         for each(_loc1_ in this._d4ece147b7301b6d4f280071)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
            _loc1_ = null;
         }
         this._d4ece147b7301b6d4f280071 = null;
      }
   }
}

