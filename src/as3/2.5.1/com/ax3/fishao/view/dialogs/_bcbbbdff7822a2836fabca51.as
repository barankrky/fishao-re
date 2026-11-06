package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.NpcDialogWindow;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   
   public class _bcbbbdff7822a2836fabca51 extends Sprite
   {
      
      public static const CLICK_ON_YES:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勗劆刼勶劾勉劶劔勵力勪剠剑劍剗刄刭刦劆刡刺刉勓刹剤劈刟刬勫劑刉勂","剘勷勑剡勍刺勲勳剋劍劊劄劓努刳剎");
      
      public static const CLICK_ON_NO:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("გဇၷဟ჏ႈစႽ჻ၸဪ႞ႝႉၕၐჹႎၬႈဠႾႯეႻႃ၍ჼၨၷ","တტ၇ღცႲ၊ၬ၎ၧႌჁ႒ႀၔႅ");
      
      public static const CLOSED:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴭ၁Ⴄ჋၇ႁკჅ႔იႹၤၘႃ၅თლႛႽႍ","ნၐჾံ၆ဥဣၓႈႇ၂လႈဘ႙ဥ");
      
      private const _0b12e527743033b7df8ae650:Event = new Event(CLICK_ON_YES);
      
      private const _12f7d475724e5e7e42d682a2:Event = new Event(CLICK_ON_NO);
      
      private const CLOSED:Event;
      
      private var _asset:NpcDialogWindow = new NpcDialogWindow();
      
      private var _5c1afe8864271a27718bcfee:Boolean = false;
      
      private var _d6e2791236e3c2b7a45b4be7:Function;
      
      private var _056e2327832f464d8d08b4ef:Object = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၔဉ႖Ⴘဦ႞၎ႻၕႭ","჊႐ႍჁჴၺ၇ႀႎၔုჹူါႤႰ")):0x6A9D908F ^ 0x767D1A0B ^ 0x12685B5F ^ 0x0E88D1DA};
      
      public var npcName:TextField;
      
      public var yesButton:FrameButtonWrapper;
      
      public var noButton:FrameButtonWrapper;
      
      public var message:TextField;
      
      public var nextButton:MovieClip;
      
      public var mouse:MovieClip;
      
      public var npcNameBack:MovieClip;
      
      public function _bcbbbdff7822a2836fabca51(param1:Function)
      {
         this.CLOSED = new Event(CLOSED);
         super();
         y = -height;
         addChild(this._asset);
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         UtilsTextField.setBoldFont(this.message);
         var _loc2_:StyleSheet = new StyleSheet();
         var _loc3_:Object = {
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჀဦႯႤႥႮဣၶၨၽზၑၭထျჱაဍၟၚჁთာၨဲჟႶႭ","၃ၒအဟႅ႞ၗၸခႢႉჷ၂ზႉჯ")):_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჭ჉ႺႦცჅၱဃႵ႞ၲႜဲხႵႵ","ဈ჏ဈႣဇცႺႃၻဆုၳჰႣစ၎"),
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揰挻揬挤揨挒挆捑掛揦挗挫揧揟挲掑揽掇","捿捒挥捺挏捚揭挨捼捗挨掰掷捘捘掱")):_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掉捬掁挺揻挩捑揈揍挢揿挱掬掅揸揂換挝揭掿控挱","揗揁掁掷捚掀掦挐捣掬换挽掷揆掩捡")
         };
         var _loc4_:Object = {
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("労剄勫勸刈刺劋剺募剔勊勳初勱劚刮勒劍刂刬劢創劅刣劽剢剶剖","劐剶劧勊剄力刏刏劃剪剿勛劰剅劏剽")):_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၢႰႋ၇ႢျဒဧဟႌჅ၇Ⴔ၈Ⴂ႔","ၰ၉နჹၭ၀ၺာხ၎Ⴒჸွဿჶ၄"),
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("းႶၥါႶ၃ဍၼီႳ჊თდႱႰေყအჩဒჼჳၺ၏ုၬმႶၘၜ၈ဌჵၔဍ။","ူႇၒရგဳၭၟဏၕჩဳႬ၈სლ")):_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဍမ჌ႅჩွႺჱၼ႕ჺၺჺვვြၳတၲဠ၌Ⴙ႙Ⴃစၨ","ჴိႯြჽႿႱძၲ႞ဨဉၠႠ၆လ"),
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揍捞据探掩掾揅捺捹捨掇揇挅揹挗揯挅揨","推採挗挫揪捝挙捽揗揇捔捙挺揤挼挨")):_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၅ႛიၪ႟ၖႋႠတၦဋႮჹၹၬႢဟႵსႵ႙Ⴖ","ႀႷၽ၁႐Ⴏၲႂၑမ၎ၥწၕဢჍ")
         };
         _loc2_.setStyle(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勗劐刹剗剛刁剪利劖勮勢劾刍剥勲勍創劮劂剾","剞勊動劐勑勰劭劺劔剛劦勅刓劝刻勏"),_loc4_);
         _loc2_.setStyle(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揬揇揝揖挜掌捲掴捙揲掶捃掰揕挂掰揶採揕揢捠掿","揼掆持掻揌掜捑捽捹揈按挱捷掼挩捴"),_loc3_);
         _loc2_.setStyle(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剨刜勧勉刞刐勦剛劼勘刈務剫刾刯劳勁劊勝劺劈刉勭劻","勀刌剣劗刋势刞勆勓刐刢勐劗勯刡刃"),_loc4_);
         _loc2_.setStyle(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劣劍勌剂勽劗効勽剹剤割勐刈刈刘勽勱刌剕剺劔勬勑勾","劭勒勞勳剕勄劧切勊刼初剪勩勺剦勀"),_loc4_);
         this.message.styleSheet = _loc2_;
         this.yesButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刂刅剺勿剠募劙劼剁加剨劋勈勘","勳刬刦勇剶刅剓割剗劖勵刬剈勥勂勓"));
         this.noButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挄挟换掫挶捋掵揞掖捜控掎","掽掣掅掟挪排挫挅捌挠挅掣捙授掓推"));
         this._asset.yesButton.addEventListener(MouseEvent.CLICK,this._61d5c4ad5038c3e83edfc558,true,0x65F5F331 ^ 0x10C128AF ^ 0x7DA985C4 ^ 0x089D5E3E);
         this._asset.noButton.addEventListener(MouseEvent.CLICK,this._fa9e674325c07d41e54b79ad,true,0x7110F2ED ^ 0x62A54223 ^ 0x54DE07BF ^ 0x476BB715);
         this.mouse.visible = false;
         this.mouse.x = 0x535BD2C6 ^ 0x4C5F1B65 ^ 0x530EB112 ^ 0x4C0A7987;
         if(param1 != null)
         {
            this._d6e2791236e3c2b7a45b4be7 = param1;
            this.message.addEventListener(TextEvent.LINK,this._f1178936557e95708f34ff7d);
         }
      }
      
      public function set npcNameText(param1:String) : void
      {
         this.npcName.text = param1;
         var _loc2_:int = this.npcName.textWidth;
         this.npcName.width = _loc2_ + (-775011583 ^ 0x0D7FD054 ^ 0x345A6464 ^ -387188933);
         this.npcNameBack.width = this.npcName.width + (-1806843058 ^ -1440775539 ^ -1670797161 ^ -1573131940);
      }
      
      public function get showButtons() : Boolean
      {
         return this._5c1afe8864271a27718bcfee;
      }
      
      public function set showButtons(param1:Boolean) : void
      {
         this._5c1afe8864271a27718bcfee = param1;
         this.yesButton.visible = false;
         this.noButton.visible = false;
         app.user.canMove = param1;
      }
      
      private function _61d5c4ad5038c3e83edfc558(param1:MouseEvent) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_053_UI_Confirm_click);
         param1.stopPropagation();
         dispatchEvent(this._0b12e527743033b7df8ae650);
      }
      
      private function _fa9e674325c07d41e54b79ad(param1:MouseEvent) : void
      {
         param1.stopPropagation();
         dispatchEvent(this._12f7d475724e5e7e42d682a2);
      }
      
      public function close() : void
      {
         var _loc1_:int = 0x5E7851EE ^ -1555545334 ^ -576783663 ^ -1963744480;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x55C26C73 ^ -1636915723 ^ -1574504759 ^ -1009290149))
            {
               case 0:
                  dispatchEvent(this.CLOSED);
                  return;
               case 1:
                  this._ef55e7e736d11d4cfef7a7af();
                  if(parent != null)
                  {
                     _loc1_ = 0x5505230E ^ -2059425730 ^ -503745429 ^ -1684097971;
                  }
                  else
                  {
                     _loc1_ = 0x404C3B2A ^ 0x13B6B440 ^ 0x0BC355EA ^ -228290156;
                  }
                  break;
               case 2:
                  parent.removeChild(this);
                  _loc1_ = 0x32AE923E ^ -1213880897 ^ 0x16E98E90 ^ 0x39BFF205;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function show() : void
      {
         var _loc1_:int = 0x673C3FB6 ^ 0x6A8ACDEF ^ 0x60D6EC20 ^ -1843472727;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-765804489 ^ -97125049 ^ 0x0287F3D8 ^ -711588229))
            {
               case 0:
                  this._b0fa6fa089785ef9b88841fa();
                  _loc1_ = 0x0757B240 ^ -1869378198 ^ -1066303873 ^ -1463055996;
                  break;
               case 1:
                  addEventListener(Event.ADDED_TO_STAGE,this._b0fa6fa089785ef9b88841fa);
                  _loc1_ = 0x4DC0C9FF ^ -1292324619 ^ -1882439196 ^ -1886719937;
                  break;
               case 2:
                  return;
               case 3:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_051_UI_Open_menu);
                  _bd60f9ad6ef4aaf28041ce8f.charMessagesLayer.addChild(this);
                  if(stage == null)
                  {
                     _loc1_ = 0x3D8F992D ^ 0x34408E9A ^ -1906522514 ^ 0x78ED190B;
                  }
                  else
                  {
                     _loc1_ = 0x7FB82006 ^ 0x417AB073 ^ -645907858 ^ 0x183C62C8;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _b0fa6fa089785ef9b88841fa(param1:Event = null) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this._b0fa6fa089785ef9b88841fa);
         stage.addEventListener(MouseEvent.CLICK,this._425f59740df00c7945c6c267,true,0x46D19E2F ^ -986289005 ^ 0x4E20A0B3 ^ -842575346);
      }
      
      public function _092fe24ce632a5b72de0c8a2(param1:String) : void
      {
         var _loc2_:_a4e47350c89a50d87a148c28 = new _a4e47350c89a50d87a148c28();
         _loc2_.width = 0x2C3B5846 ^ 0x505EA621 ^ -2013584205 ^ -73475359;
         _loc2_.height = 0x182B4319 ^ -1238108713 ^ -1759031146 ^ 0x393FE66D;
         _loc2_.x = 0x661F6E05 ^ -308509060 ^ -1454204276 ^ 0x22D172FD;
         _loc2_.y = -786394648 ^ 0x50BAC1FD ^ 0x14B191 ^ -2121342566;
         app.resourceManager.replaceBitmapDataFromURL(_loc2_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("利勮剌别勋加勳勪剗劫劅劆刁刏刧勤勦勶劢刉劜剹劂刢劗劘刢劺勿则劙剴","刟剗刵劅勷删剥劷剛刾勫剮券刦务券") + param1.toLowerCase()));
         this._asset.addChild(_loc2_);
      }
      
      public function set text(param1:String) : void
      {
         TweenCube.destroyTweensOf(this._056e2327832f464d8d08b4ef,false);
         var _loc2_:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၕဋႏႅ၍ჩယ჌Ⴃၐၔჺჴ့","ဴჴစႠჇၢჯဖღ့჏ဲႊთႼ႓") + param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၰၰ჎ႊၓၱီၲრသၴေႇဠჄ႟","ဝႥၙၼဋၽ႒ၡხჱဦბႌေႷပ");
         this.message.scrollV = -1482269640 ^ -1017733303 ^ 0x75FF1C8F ^ 0x110FDFFE;
         this.message.htmlText = _loc2_;
         while(this.message.maxScrollV % (0x46EB597D ^ 0x11EA9614 ^ 0x21C65CDF ^ 0x76C793B5) != (-1679549928 ^ 0x0830CAAC ^ -1572494455 ^ 0x3191733C))
         {
            _loc2_ += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挿掦掵挧掊捉掽揨捞掮揰掛揷换掍捫","挽捏掍揗掃挿挦掞揇揊掕掭揇掬揤揰");
            this.message.htmlText = _loc2_;
         }
         this.mouse.visible = true;
         if(this.message.height < this.message.textHeight)
         {
            this.nextButton.visible = true;
         }
         else
         {
            this.nextButton.visible = false;
            if(this._5c1afe8864271a27718bcfee)
            {
               this.yesButton.visible = true;
               this.noButton.visible = true;
               this.mouse.visible = false;
            }
         }
         this._b28890e67508df133d2fb31a();
         this.show();
      }
      
      private function _b28890e67508df133d2fb31a() : void
      {
      }
      
      private function _425f59740df00c7945c6c267(param1:MouseEvent) : void
      {
         if(param1.target == this.yesButton || param1.target is DisplayObject && DisplayObject(param1.target).parent == this.yesButton)
         {
            this._61d5c4ad5038c3e83edfc558(param1);
         }
         else if(param1.target == this.noButton || param1.target is DisplayObject && DisplayObject(param1.target).parent == this.noButton)
         {
            this._fa9e674325c07d41e54b79ad(param1);
         }
         else if(!_0737efdbd5337ba3fbc64b2e.getInstance().isDialogBaseOpen)
         {
            param1.stopPropagation();
            if(!this.yesButton.visible && !this.noButton.visible)
            {
               if(!this.nextButton.visible)
               {
                  if(this._5c1afe8864271a27718bcfee && !this.yesButton.visible && !this.noButton.visible)
                  {
                     this.yesButton.visible = true;
                     this.noButton.visible = true;
                     this.mouse.visible = false;
                     _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_042_UI_Click_button);
                  }
                  else
                  {
                     _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_052_UI_Close_menu);
                     if(app.user.completedMissionData.length > (-302015452 ^ -1440022048 ^ -433886029 ^ -1577586313))
                     {
                        GameSwf.currentLocationDialog._9a62ebd0db0249ee0917d4c7();
                     }
                     this.close();
                  }
               }
               else
               {
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_042_UI_Click_button);
                  this.message.scrollV += 0x6D581676 ^ -1000003778 ^ 0x2CC4EA4C ^ -2047223033;
                  if(this.message.maxScrollV <= this.message.scrollV)
                  {
                     if(this._5c1afe8864271a27718bcfee && !this.yesButton.visible && !this.noButton.visible)
                     {
                        this.yesButton.visible = true;
                        this.noButton.visible = true;
                        this.mouse.visible = false;
                     }
                     this.nextButton.visible = false;
                  }
               }
            }
         }
      }
      
      private function _ef55e7e736d11d4cfef7a7af() : void
      {
         var _loc1_:int = 0x51894A44 ^ 0x5C72C021 ^ -513433105 ^ -830672883;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4457CEEE ^ -971121730 ^ 0x6E262164 ^ -829493326))
            {
               case 0:
                  GameSwf.currentLocationDialog._3b066905b0f5817cc1c91273();
                  _loc1_ = -1650841163 ^ 0x51ADA500 ^ 0x1E2FE16F ^ -252004776;
                  break;
               case 1:
                  if(stage != null)
                  {
                     _loc1_ = 0x6F7F8189 ^ -993843174 ^ 0x72C3629B ^ -73592692;
                  }
                  else
                  {
                     _loc1_ = -1819534848 ^ 0x15CA5899 ^ -1126714879 ^ 0x18732B1D;
                  }
                  break;
               case 2:
                  stage.removeEventListener(MouseEvent.CLICK,this._425f59740df00c7945c6c267,true);
                  _loc1_ = 0x68E31C5E ^ 0x095FD02A ^ -952231400 ^ -2074079767;
                  break;
               case 3:
                  app.user.canMove = true;
                  if(GameSwf.currentLocationDialog != null)
                  {
                     _loc1_ = 0x1CFDDFCE ^ 0x78EA56E4 ^ 0x39038891 ^ 0x7FF6DA3D;
                  }
                  else
                  {
                     _loc1_ = 0x4E81CF35 ^ 0x5CD31CB8 ^ 0x1A6B2E0D ^ 0x2ADB2602;
                  }
                  break;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function destroy() : void
      {
         var _loc1_:int = -2109216895 ^ 0x780D25CA ^ 0x5D047E9A ^ 0x683B6BAD;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x52220F24 ^ 0x42CBB22D ^ -1164670916 ^ 0x6508E249))
            {
               case 0:
                  TweenCube.destroyTweensOf(this._056e2327832f464d8d08b4ef,false);
                  if(this._d6e2791236e3c2b7a45b4be7 == null)
                  {
                     _loc1_ = 0x1C549884 ^ 0x3F962102 ^ 0x0DEF096E ^ -514300011;
                  }
                  else
                  {
                     _loc1_ = 0x385480D3 ^ -247156791 ^ 0x1BBF86AF ^ 0x1DDA7ECB;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this.message.removeEventListener(TextEvent.LINK,this._d6e2791236e3c2b7a45b4be7);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _acda19e4a8d6bcc0d8ab1b06() : void
      {
         TweenCube.destroyTweensOf(this._056e2327832f464d8d08b4ef,false);
         this._056e2327832f464d8d08b4ef.x = 0x0734BFFA ^ -1084229847 ^ 0x1F67513C ^ -1492379154;
         new TweenCube(this._056e2327832f464d8d08b4ef,-211282914 ^ -2058265490 ^ -1567168387 ^ -726687730,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("းႆႊ႕ၦ႑ႴၞႱႢ","ႩუဿၙჶႦ჌ჯႝသაჲႚၱႺၣ")):-1512165140 ^ 0x23BB1A6D ^ -1835565669 ^ 0x14F2577E},{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刭勐勱剋剛勎刉剦劇劰勼劊剹剹務刊划勯勤剔刄劦勜勀務刬刯勪","刹刅剝刮劧剟刪刡剦勅删刴刢勜剨刺")):this.close});
      }
      
      private function _f1178936557e95708f34ff7d(param1:TextEvent) : void
      {
         var _loc2_:int = -666431620 ^ -796743491 ^ -172439288 ^ 0x07BE1EAB;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x093E8829 ^ 0x0CBA3BC2 ^ 0x75CA6C ^ -13497881))
            {
               case 0:
                  return;
               case 1:
                  this.close();
                  this._d6e2791236e3c2b7a45b4be7(param1);
                  return;
               case 2:
                  if(this._d6e2791236e3c2b7a45b4be7 == null)
                  {
                     _loc2_ = 0x4D964003 ^ 0x58F82556 ^ -1178533285 ^ 0x566C176E;
                  }
                  else
                  {
                     _loc2_ = 0x487E2525 ^ 0x2BFD733E ^ -157353145 ^ 0x6FDEDD3D;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get asset() : NpcDialogWindow
      {
         return this._asset;
      }
   }
}

