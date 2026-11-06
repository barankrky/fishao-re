package com.ax3.fishao.locations.npc.base
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.NpcArrow;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.core._8456759d89f0c8868eb7daca;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.chars._709a8761c08236d1b5935ace;
   import com.ax3.fishao.locations.chars._85c463930cec98e06d72d6a3;
   import com.ax3.fishao.locations.chars._d557186cde1a474d8468f3b2;
   import com.ax3.fishao.locations.chars._faab80cfc2fee99ff0930b0b;
   import com.ax3.fishao.locations.entries.*;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._9c52777792d76fde110d23c0;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._bcbbbdff7822a2836fabca51;
   import com.ax3.geom._a5c3dbdfbeb709a5bf92d27c;
   import com.ax3.utils.TimeConverter;
   import com.ax3.utils.removeAllChildren;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.geom.Rectangle;
   
   public class _ba120ae720a391732e866217 extends _08c120b706560fce9302bcab implements _8456759d89f0c8868eb7daca
   {
      
      public var onStartTalk:Function;
      
      private var _223390a3f3d760fa28a50d76:Boolean = true;
      
      protected var _npcName:String = "";
      
      private const _13442f49e6b3642639a142c8:int = 100;
      
      private var _17ea847266ad891aa23cb6ee:Boolean = false;
      
      protected var _dialogStep:int = 0;
      
      private var _0b98acb0bfc3b183868e56ef:_bcbbbdff7822a2836fabca51;
      
      private var _9b5d54f40988a9333ab05642:NpcArrow = new NpcArrow();
      
      public var player:_c9513c48978d5034cc9ff2f4;
      
      private var _3c33b095e89a161ad4564e5e:Boolean = false;
      
      public function _ba120ae720a391732e866217(param1:_810c4ade948afb64e9c7ee25, param2:_3e7dee0195ecd6b652b730f1)
      {
         this._npcName = param1.username;
         super(param1,param2);
         this._0b98acb0bfc3b183868e56ef = new _bcbbbdff7822a2836fabca51(this._68a3dcc8d0f054b5928b721e);
      }
      
      public function set canMove(param1:Boolean) : void
      {
         this._223390a3f3d760fa28a50d76 = param1;
      }
      
      public function _13b29a0b45bcfef2fe05674b(param1:String, param2:Object) : void
      {
         switch(param1)
         {
            case _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("描捣掱挅捓揂挬揇掬挺控掋捏推掷揶掗掕捡揝捍捇捄损挷捒揲挤捫採挻揣捶掌挈揄揾捺揦揮捧揲捅捱揆挻换捻","挴捭握挀挮揩揆掭掙掆掤握挶捻揸揜"):
               §§push(0x6F36C35D ^ 0x7801EAF7 ^ -975774891 ^ -756944129);
               break;
            case _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挷挦挫挸挘挌挾挖揾掶援捠掆掘揢捶捼捞揿揲揦接掛捚捆捙捤掦揰捭掉捃揣揋揲捩捤揈揻挟","按揷掇揑捇捠揥捍挆挆挺挾揧挩揚捚"):
               §§push(0x35A0A17A ^ -1650672091 ^ -820874008 ^ 0x672E6BB6);
               break;
            default:
               §§push(-1119784214 ^ 0x71FFD91C ^ 0x7674FBC4 ^ -1161146320);
         }
         switch(§§pop())
         {
            case 0:
               this.dialogStep = -511673025 ^ -2120007308 ^ 0x6BEE39E3 ^ 0x0BCD05A8;
               this._37496d81243d975a8f2daa70();
               GameSwf.instance._bd4c805ccb102f50450d7145();
               break;
            case 1:
               this.dialogStep = -224271869 ^ -955615905 ^ 0x44E2E670 ^ 0x7149712C;
               this._37496d81243d975a8f2daa70();
               GameSwf.instance._99745ded2682acc368640b08();
         }
      }
      
      protected function _68a3dcc8d0f054b5928b721e(param1:TextEvent) : void
      {
         switch(param1.text)
         {
            case _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၒ႞၀၏ႏႺႇခဆ႗ၓსၠၔႌეႬ့ၟႲၸၦၰဖႀၹ","၎ုါႭ၃Ⴚ္ၫၥ჊႓ေႺၠၡႡ"):
               §§push(0x5ED7F1C3 ^ -1393553959 ^ 0x763BC5F3 ^ -2078524951);
               break;
            case _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刢劭勯劙刃前勳剤劻劸刕剑刬勞剆刭劳剂務勒动劯勮劀剈刻勭刜剜勡劷割","剘剠劇判削劆勨削勇剢勗勲劺勢剢勏"):
               §§push(0x7EB422B8 ^ 0x0E334EB1 ^ -1227317276 ^ -966790164);
               break;
            default:
               §§push(0x28C8AE57 ^ 0x0CE45537 ^ -1553654691 ^ -2025199809);
         }
         switch(§§pop())
         {
            case 0:
               GameSwf.instance._e6f0a7b005cacf7751286e97();
               break;
            case 1:
               GameSwf.instance._825ea3c2451d64893c2367e0();
               break;
            default:
               Cc.warnch(this,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("အႤၦၷၦ႖ყ၇ေႯსၚ၂ထჲ႖დပဠႎဎჲၛ႗ေ჻ၽႼ႞ညၖ၂ၾဿက႞၂჏႘Ⴢ","၃ოျႆჱႇვ့ၲၲႧဋ၈ვ၄ၑ") + param1.text + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劁勩劚勫勦劫劀刲勀刎劫刚刄判則刦剽剄剣劭勂刣劂募努劰勛剌剠劥刑剎券剳剚劒勾剑勥勴创劣刭刞劑剼副刬劦刌刏刴列刘","勧動剏刣刂剏劷剾勧剎助刨勘剡劘勧"));
         }
      }
      
      public function _5272526dfaa41b97a460733d(param1:_a5c3dbdfbeb709a5bf92d27c) : void
      {
         if(param1 != null && _9c52777792d76fde110d23c0._6a4e609a6fcabf8099412895(param1,position) <= this._13442f49e6b3642639a142c8 && visible)
         {
            this._17ea847266ad891aa23cb6ee = true;
            this._4e62ae6f0bd798d3863d6a1a();
            _bd60f9ad6ef4aaf28041ce8f.charMessagesLayer.addChild(this._9b5d54f40988a9333ab05642);
            graphic.addEventListener(MouseEvent.CLICK,this.onClick);
            graphic.name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勓创剕刓劇剎勃刨刂劒劖判剸勶勉刚","劮刟剀剀勆動刑劙劊勆剄別刟勿劮刵") + this._npcName;
            Sprite(graphic).buttonMode = true;
            Sprite(graphic).useHandCursor = true;
         }
         else
         {
            this._37496d81243d975a8f2daa70();
         }
      }
      
      public function _37496d81243d975a8f2daa70() : void
      {
         this._17ea847266ad891aa23cb6ee = false;
         if(this._0b98acb0bfc3b183868e56ef.visible && this._0b98acb0bfc3b183868e56ef.parent != null)
         {
            this._0b98acb0bfc3b183868e56ef.close();
         }
         graphic.removeEventListener(MouseEvent.CLICK,this.onClick);
         Sprite(graphic).buttonMode = false;
         Sprite(graphic).useHandCursor = false;
         this._01d492b920fb69c9c84325e1();
      }
      
      public function onClick(param1:MouseEvent = null) : void
      {
         if(Boolean(app.user.inFishingProcess.value) || !GameSwf.currentLocationDialog._e45563bad3bc0a6e80958b6a())
         {
            return;
         }
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(!this._ab376ae0025d75a943d06517())
         {
            _dfa25706e58a240c1e33e5c6.locationExtension._abd393c870e6d7f9e4acc6dd(this.npcName,position,this._dialogStep,_95e09934be04b5ca92831e4b.ENA_NO,this._dialogStep > (0x73FD99E2 ^ 0x4050568E ^ -1821201720 ^ 0x5F209A5B) ? _745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb() : null);
            this._17d1307788aadfaf6218377c();
         }
      }
      
      protected function _ab376ae0025d75a943d06517() : Boolean
      {
         return _moveStrategy is _709a8761c08236d1b5935ace;
      }
      
      override public function _22529d44305d9d9ce9be7148() : _faab80cfc2fee99ff0930b0b
      {
         var _loc1_:int = -51632761 ^ 0x6F92F6AC ^ -1033893766 ^ 0x2D229802;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x6533D771 ^ -917417912 ^ 0x6BA5EDCC ^ -1141167710))
            {
               case 0:
                  if(_charAnimationSource)
                  {
                     _loc1_ = -996770255 ^ -231320409 ^ 0x5B1DF9B7 ^ 0x1181907C;
                  }
                  else
                  {
                     _loc1_ = -413815952 ^ 0x42993517 ^ -1331381644 ^ 0x69546745;
                  }
                  break;
               case 1:
                  _charAnimationSource = new _85c463930cec98e06d72d6a3();
                  if(locationUser.username.toLowerCase() == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၴძၻრႸညႆკၩ჋ၖၤဿჸဇ჋ႂႠჷပ","ြჷၨဈြ၊ၥჲჩၴშယဖၱံ჌"))
                  {
                     _loc1_ = -1076627923 ^ -1468218405 ^ 0x3F4A2B81 ^ 0x54D95D26;
                  }
                  else
                  {
                     _loc1_ = -5173248 ^ -1854070520 ^ -1181789759 ^ -1417731178;
                  }
                  break;
               case 2:
                  var _temp_3:* = _charAnimationSource;
                  var _temp_2:* = §§findproperty(BitmapData);
                  var _temp_1:* = 0x52B910A2 ^ -1324099060 ^ -788756708 ^ 0x33564DD6;
                  _temp_3.bitmapData = new BitmapData(_temp_1,_temp_1,true,0x67282DA4 ^ 0x47E81D9B ^ -317614330 ^ -841898042);
                  _charAnimationSource.addEventListener(Event.CHANGE,this.onChange);
                  this._3c33b095e89a161ad4564e5e = true;
                  graphic.alpha = -1334562634 ^ 0x0767D4FB ^ 0x3C40C564 ^ -1957486295;
                  app.resourceManager.replaceBitmapDataFromURL(_charAnimationSource,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刷刽劒劰剠剫勍剫剰劓励劬勯剟別则","劾刿剿剀刵刽剱劥勡別劾勜剂办劲勇") + this.npcName.toLowerCase()));
                  _charViewport = new _d557186cde1a474d8468f3b2();
                  _charViewport.smoothing = true;
                  if(graphic is DisplayObjectContainer)
                  {
                     _loc1_ = 0x6EA2E019 ^ -1357138056 ^ -301184968 ^ 0x53895C07;
                  }
                  else
                  {
                     _loc1_ = 0x2B1BA31D ^ 0x2181FD87 ^ -112878319 ^ -1880915749;
                  }
                  break;
               case 3:
                  _charSprite.removeChild(_charViewport);
                  _loc1_ = 0x6BD34B6E ^ -1622322235 ^ 0x2B067D3C ^ -1549523264;
                  break;
               case 4:
                  if(_charViewport)
                  {
                     _loc1_ = -1895581442 ^ 0x523D35BC ^ -1152765854 ^ 0x1A48FE72;
                  }
                  else
                  {
                     _loc1_ = 0x77F7C7B4 ^ 0x291B4833 ^ -292078829 ^ -867698749;
                  }
                  break;
               case 5:
                  _charViewport.destroy();
                  if(_charViewport.parent == _charSprite)
                  {
                     _loc1_ = 0x720FEFAF ^ -1184226051 ^ -337626097 ^ 0x5CB9B409;
                  }
                  else
                  {
                     _loc1_ = -1869015449 ^ -820215818 ^ -1805118734 ^ -1211025356;
                  }
                  break;
               case 6:
                  var _temp_7:* = _charAnimationSource;
                  var _temp_6:* = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჎ေႌႡ჏ၰႚ၌ရ့ြစჴလუႅ၎ၻႄჱႫႀ჊თ","Ⴢჺჾႊၣႝ჻ოၙၙဈၚၩႇႾာ");
                  var _temp_5:* = §§findproperty(Rectangle);
                  var _temp_4:* = 0x3D6EDBF7 ^ -1060065708 ^ 0x79D6972F ^ -2073501044;
                  _temp_7.config({(_temp_6):new Rectangle(_temp_4,_temp_4,0x35898BFB ^ -748007928 ^ 0x7F9F450D ^ -1719893862,0x597042CD ^ 0x2275D601 ^ 0x44EACAD8 ^ 0x3FEF5E69)});
                  _loc1_ = -1757340001 ^ 0x2F46269F ^ 0x4657E29D ^ -2106811960;
                  break;
               case 7:
                  _frameIndex = int.MIN_VALUE;
                  _lastRotationAngle = int.MIN_VALUE;
                  this._0224dc224792aa25034cbe6d();
                  _656c9dc6e99f5cc1326f5a53();
                  return _charAnimationSource;
               case 8:
                  var _temp_11:* = _charAnimationSource;
                  var _temp_10:* = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၪဿႼဖဲဝტჀჵჅჅၗႩၷჲငლႪႴၨဒကႨႄ","ნဟဗတ჏პၯာზ၆Ⴐၽ႔ၳဤ჻");
                  var _temp_9:* = §§findproperty(Rectangle);
                  var _temp_8:* = -2026859781 ^ -93632554 ^ -1061225371 ^ -1109055160;
                  _temp_11.config({(_temp_10):new Rectangle(_temp_8,_temp_8,0x74160C3B ^ -1465373957 ^ -2085036603 ^ 0x5F06FB37,-1405379778 ^ -162272650 ^ -1562832952 ^ -122585392)});
                  _loc1_ = 0x7E09F0F3 ^ 0x58F9BB1E ^ 0x5E1BA3D2 ^ 0x04D7AB6A;
                  break;
               case 9:
                  removeAllChildren(DisplayObjectContainer(graphic));
                  removeAllChildren(_charSprite);
                  _charSprite.addChild(_charViewport);
                  DisplayObjectContainer(graphic).addChild(_charSprite);
                  DisplayObjectContainer(graphic).addChild(_rod);
                  _bd60f9ad6ef4aaf28041ce8f.charMessagesLayer.addChild(chat);
                  _bd60f9ad6ef4aaf28041ce8f.charMessagesLayer.addChild(_controllerUserPopup.view.source);
                  _loc1_ = 0x159752B9 ^ 0x6731B6BC ^ -555639461 ^ -797230578;
                  break;
               case 10:
                  _charAnimationSource.destroy();
                  _loc1_ = 0x59E4A267 ^ 0x1A9C6902 ^ 0x5DC9F1D5 ^ 0x628D79E6;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function onChange(param1:Event) : void
      {
         var _loc2_:int = 0x041909F9 ^ -304790564 ^ -295031032 ^ -1037796030;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x444E0440 ^ -410828634 ^ 0x10521BFB ^ 0x761D4771))
            {
               case 0:
                  if(this._3c33b095e89a161ad4564e5e)
                  {
                     _loc2_ = -710229079 ^ -315332593 ^ 0x9A354D ^ -41515387;
                  }
                  else
                  {
                     _loc2_ = 0x0BCAB7DF ^ 0x41A0EF65 ^ 0x0560694B ^ -1970787940;
                  }
                  break;
               case 1:
                  _frameIndex = -464366605 ^ 0x5D644819 ^ -343171784 ^ 0x52BD86D3;
                  this._0224dc224792aa25034cbe6d();
                  return;
               case 2:
                  this._3c33b095e89a161ad4564e5e = false;
                  TweenCube.destroyTweensOf(graphic);
                  graphic.alpha = -1132704850 ^ -1125238941 ^ 0x153F3FF2 ^ 0x15AD433F;
                  TweenCube.to(graphic,0x2E2DA8D0 ^ -407589288 ^ 0x1D672EE2 ^ -721541016,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剈刽勳勐剓劄劑剖办剮剎刔剔刹剂刢別勣","劗刋剮勤剛剿劎勅剗剂剌剛剱務剸劇")):0x3BB5D44B ^ 0x5215C27B ^ -1985467498 ^ -536330841});
                  _loc2_ = -1737644542 ^ 0x149FA838 ^ 0x4BF81FA7 ^ 0x028809F0;
                  break;
               case 3:
                  param1.target.removeEventListener(Event.CHANGE,this.onChange);
                  if(graphic == null)
                  {
                     _loc2_ = -1184792767 ^ 0x31EB1C03 ^ 0x11E60EE2 ^ 0x5CEE75C8;
                  }
                  else
                  {
                     _loc2_ = -1216660240 ^ -1772223584 ^ 0x4D5B3CA3 ^ -1443095649;
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
      
      public function _a1a668e8856e6cdb006ace10() : String
      {
         return this._17ea847266ad891aa23cb6ee ? _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挫挆揽捌揖揣揦控揔揢挝捕挻揪挕捃","挏揸捋掜捸捈挋换掾捬捧掾换捋挲捀") : _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ტဲွჵၜၳჄကႺဨၽၫჴၵჽჃ","Ⴞჷၘဨმႉ႙ၗံၑၙპအწჶႈ");
      }
      
      public function _418df8970de8f29cbeee5a0f(param1:String, param2:int) : void
      {
         var _loc3_:int = -752246433 ^ 0x7F115E4B ^ -1483559608 ^ -94785370;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-2103773411 ^ -1250794798 ^ -1891770662 ^ 0x4926A9ED))
            {
               case 0:
                  this._0b98acb0bfc3b183868e56ef.showButtons = false;
                  this._0b98acb0bfc3b183868e56ef._acda19e4a8d6bcc0d8ab1b06();
                  _loc3_ = -1822244296 ^ -214768780 ^ 0x28A01DA2 ^ -1190928875;
                  break;
               case 1:
                  this._0b98acb0bfc3b183868e56ef.text = param1;
                  this._01d492b920fb69c9c84325e1();
                  this._0b98acb0bfc3b183868e56ef.addEventListener(_bcbbbdff7822a2836fabca51.CLOSED,this._58f0b8852995b42532b1552e);
                  app.user.isTalkingWithNPC.value = true;
                  _loc3_ = 0x1EFED6F8 ^ -514693458 ^ -726643622 ^ -621863184;
                  break;
               case 2:
                  _e4a9539bc08e42b3d1467d8a(this.player);
                  this.dialogStep = param2;
                  if(param1 != "")
                  {
                     _loc3_ = 0x0DC0AD93 ^ -1880278695 ^ -1111419591 ^ -836803830;
                  }
                  else
                  {
                     _loc3_ = -1481755428 ^ -1973160583 ^ -1461621582 ^ 0x74DF4FEB;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  if(param2 == (-1391339618 ^ -1446783708 ^ -682078014 ^ 0x2C75AD86))
                  {
                     _loc3_ = -1101108321 ^ 0x32A91DA2 ^ -101588941 ^ -2064288522;
                  }
                  else
                  {
                     _loc3_ = -1543969465 ^ -135010313 ^ 0x4127DBBC ^ -455132169;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _01d492b920fb69c9c84325e1() : void
      {
         if(this._9b5d54f40988a9333ab05642 != null && this._9b5d54f40988a9333ab05642.parent != null)
         {
            this._9b5d54f40988a9333ab05642.parent.removeChild(this._9b5d54f40988a9333ab05642);
         }
      }
      
      public function set dialogStep(param1:int) : void
      {
         var _loc2_:int = 0x1C85458C ^ -1695709747 ^ 0x24AC2430 ^ -748708719;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x7D9C4B28 ^ -1557231326 ^ 0x28435C9A ^ -2023037327))
            {
               case 0:
                  this._0b98acb0bfc3b183868e56ef.addEventListener(_bcbbbdff7822a2836fabca51.CLICK_ON_YES,this._8b19ce587279a576ff527689);
                  this._0b98acb0bfc3b183868e56ef.addEventListener(_bcbbbdff7822a2836fabca51.CLICK_ON_NO,this._f01b68fcf25872eb60d126a8);
                  _loc2_ = 0x59E15589 ^ -2052081724 ^ -556187688 ^ 0x730CA576;
                  break;
               case 1:
                  this._dialogStep = param1;
                  this._0b98acb0bfc3b183868e56ef.showButtons = this._dialogStep != (-1756503606 ^ 0x64A9B9D0 ^ 0x1F52507D ^ -323614617);
                  if(this._0b98acb0bfc3b183868e56ef.showButtons)
                  {
                     _loc2_ = 0x4ED194DB ^ 0x08B01AD2 ^ -602894386 ^ -336955098;
                  }
                  else
                  {
                     _loc2_ = 0x527ED2CE ^ -1773067720 ^ -150108152 ^ 0x42B9001D;
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
      
      protected function _8b19ce587279a576ff527689(param1:Event) : void
      {
         var _loc2_:int = -865703011 ^ 0x2D1D3553 ^ 0x54AE6D62 ^ -326428260;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6806B581 ^ 0x1DD920F5 ^ 0x544951EB ^ 0x78C8EEAD))
            {
               case 0:
                  if(GameSwf._d3e1b275b210647ff7fe10f6())
                  {
                     _loc2_ = 0x7FA7E705 ^ 0x2E79797C ^ -1847014039 ^ -1721206493;
                  }
                  else
                  {
                     _loc2_ = 0x55A90E9B ^ -1047335164 ^ 0x1285F4E2 ^ -538951860;
                  }
                  break;
               case 1:
                  this.dialogStep = 0x307EB73B ^ 0x1609FF56 ^ -659878884 ^ -19118991;
                  this._37496d81243d975a8f2daa70();
                  return;
               case 2:
                  this._0b98acb0bfc3b183868e56ef.removeEventListener(_bcbbbdff7822a2836fabca51.CLICK_ON_YES,this._8b19ce587279a576ff527689);
                  this._0b98acb0bfc3b183868e56ef.removeEventListener(_bcbbbdff7822a2836fabca51.CLICK_ON_NO,this._f01b68fcf25872eb60d126a8);
                  if(this.npcName == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႗Ⴁ႐჻Ⴏწၣၾၻდ၁Ⴆၙဥၯႂ","Ⴊ၇ႢტდჃჩၓႸჯဋႳჂ჈ႶႺ"))
                  {
                     _loc2_ = -163800975 ^ 0x2CF8D4E3 ^ -1269704896 ^ 0x37CBB1E0;
                  }
                  else
                  {
                     _loc2_ = -1916335871 ^ -537255288 ^ -1997777535 ^ -2087758791;
                  }
                  break;
               case 3:
                  _dfa25706e58a240c1e33e5c6.locationExtension._abd393c870e6d7f9e4acc6dd(this.npcName,position,this.dialogStep,_95e09934be04b5ca92831e4b.ENA_YES);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _f01b68fcf25872eb60d126a8(param1:Event) : void
      {
         this._0b98acb0bfc3b183868e56ef.removeEventListener(_bcbbbdff7822a2836fabca51.CLICK_ON_YES,this._8b19ce587279a576ff527689);
         this._0b98acb0bfc3b183868e56ef.removeEventListener(_bcbbbdff7822a2836fabca51.CLICK_ON_NO,this._f01b68fcf25872eb60d126a8);
         _dfa25706e58a240c1e33e5c6.locationExtension._abd393c870e6d7f9e4acc6dd(this.npcName,position,this.dialogStep,_95e09934be04b5ca92831e4b.ENA_NO);
      }
      
      protected function _58f0b8852995b42532b1552e(param1:Event) : void
      {
         app.user.isTalkingWithNPC.value = false;
         _dfa25706e58a240c1e33e5c6.locationExtension._e6ed5ca811912fa8200ba0f8(this._npcName);
         this._0b98acb0bfc3b183868e56ef.removeEventListener(_bcbbbdff7822a2836fabca51.CLOSED,this._58f0b8852995b42532b1552e);
      }
      
      public function get dialogStep() : int
      {
         return this._dialogStep;
      }
      
      public function get npcName() : String
      {
         return this._npcName;
      }
      
      public function set npcName(param1:String) : void
      {
         this._npcName = param1;
         this._0b98acb0bfc3b183868e56ef.npcNameText = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("გၝႉ႓႑ၗჃვღჇဢၠႺლၶငჱၺ္ႹၕჶၠှငႽ","჏ქჀ၇ဃ၉ဵႫဥႽყၠწჱრၹ") + this.npcName.toLowerCase());
         this._0b98acb0bfc3b183868e56ef._092fe24ce632a5b72de0c8a2(this.npcName);
      }
      
      override public function _0224dc224792aa25034cbe6d(param1:uint = 0, param2:uint = 0) : void
      {
         var _loc3_:Rectangle = null;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0x66FF4CF0 ^ -1115465313 ^ 0x3F46E9C5 ^ -465896278;
         if(this._0b98acb0bfc3b183868e56ef != null && graphic != null)
         {
            this._0b98acb0bfc3b183868e56ef.x = graphic.x - (0x098CAD20 ^ 0x2D850CD7 ^ -243512377 ^ -713692506);
            if(this._0b98acb0bfc3b183868e56ef.x < (0x543364F1 ^ -1304915982 ^ 0x298AB5D4 ^ -813605166))
            {
               this._0b98acb0bfc3b183868e56ef.x = 0x515BE3A6 ^ -766771687 ^ -1572693608 ^ 0x21528422;
            }
            else
            {
               _loc3_ = _08c120b706560fce9302bcab.locationLayersScrollRect;
               _loc4_ = locationLayers != null ? locationLayers.fullWidth : Number.MAX_VALUE;
               _loc5_ = Math.min(_loc3_.x + _loc3_.width,_loc4_);
               if(_loc5_ < this._0b98acb0bfc3b183868e56ef.x + this._0b98acb0bfc3b183868e56ef.width + (0x08EE1421 ^ 0x078A0055 ^ -1195975533 ^ -1210922782))
               {
                  this._0b98acb0bfc3b183868e56ef.x = _loc5_ - (this._0b98acb0bfc3b183868e56ef.width + (0x0EEC7E83 ^ -1569152277 ^ 0x7EB1AFE3 ^ -769297522));
               }
            }
            this._0b98acb0bfc3b183868e56ef.y = graphic.y - graphic.height - (-794211474 ^ 0x68AF70DC ^ 0x53D8CF2A ^ -337709910);
            if(this._0b98acb0bfc3b183868e56ef.y < (0x6648812C ^ -1772065920 ^ 0x7324EC01 ^ -2096363864))
            {
               this._0b98acb0bfc3b183868e56ef.y = graphic.y + (0x126EA5AD ^ 0x5754D332 ^ -2115279704 ^ -992931278);
            }
            if(this._9b5d54f40988a9333ab05642.parent != null)
            {
               this._4e62ae6f0bd798d3863d6a1a();
            }
         }
         super._0224dc224792aa25034cbe6d(param1,param2);
      }
      
      private function _4e62ae6f0bd798d3863d6a1a() : void
      {
         this._9b5d54f40988a9333ab05642.x = graphic.x - this._9b5d54f40988a9333ab05642.width / (0x25D4D1C0 ^ -1731803435 ^ -2113082638 ^ 0x3F1EFDE5);
         this._9b5d54f40988a9333ab05642.y = graphic.y - graphic.height - (0x6389C617 ^ -1133392211 ^ -1704384829 ^ 0x45912E6D);
      }
      
      override public function destroy() : void
      {
         this._0b98acb0bfc3b183868e56ef.destroy();
         this._01d492b920fb69c9c84325e1();
         super.destroy();
      }
      
      public function _90f73c26c30429a55cbbdca7() : void
      {
         moveStrategy = _forceMoveStrategy;
         _forceMoveStrategy.maxCalculationTimeMs = TimeConverter.fromMinutes(0x221E9DEC ^ 0x387E2717 ^ 0x2BF1BDD2 ^ 0x3191072B);
         _forceMoveStrategy.moveTo(0x1D90B868 ^ 0x7D4E9F59 ^ -2034794350 ^ 0x1996589B,0x6A6A034F ^ 0x4B3B0236 ^ -1193245398 ^ 0x664E7BAC,NaN);
      }
      
      override public function _b1f7457b16931a1882a5f4ed(param1:Number, param2:Number, param3:Number = NaN) : void
      {
         var _loc4_:int = 0x38172F3E ^ 0x741DE3FF ^ -1929409038 ^ 0x6757254C;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x40E9077E ^ 0x140A4A11 ^ 0x484F9B75 ^ -1156664729))
            {
               case 0:
                  if(this.player == null)
                  {
                     _loc4_ = 0x41F0A558 ^ 0x5FA7C2B3 ^ -592824287 ^ 0x655F3BB3;
                  }
                  else
                  {
                     _loc4_ = -401042298 ^ -2081588872 ^ 0x0888EB6F ^ -991993107;
                  }
                  break;
               case 1:
                  _e4a9539bc08e42b3d1467d8a(this.player);
                  _loc4_ = 0x1B935276 ^ 0x54772C25 ^ 0x3E9DBA5C ^ -690249609;
                  break;
               case 2:
                  if(!this._223390a3f3d760fa28a50d76)
                  {
                     _loc4_ = 0x7D9C5D25 ^ 0x1821B918 ^ 0x3F66F91A ^ -42370727;
                  }
                  else
                  {
                     _loc4_ = -1722725272 ^ -1299830421 ^ 0x172CC64D ^ -1688615117;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  super._b1f7457b16931a1882a5f4ed(param1,param2,param3);
                  _loc4_ = 0x02883E44 ^ 0x0A6B7066 ^ -2021824428 ^ 0x283C420E;
                  break;
               case 5:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _1ac276fa38c42f5b354104cd(param1:Boolean = false) : Boolean
      {
         return false;
      }
      
      protected function _17d1307788aadfaf6218377c() : void
      {
         var _loc1_:int = -1665053666 ^ -661660417 ^ -1657940117 ^ 0x3107BFBD;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1359811919 ^ 0x1F0C4140 ^ 0x3B6358EF ^ 0x62F90B28))
            {
               case 0:
                  this.onStartTalk(this);
                  return;
               case 1:
                  if(this.onStartTalk == null)
                  {
                     _loc1_ = 0x4EAB1E7B ^ -1818907053 ^ 0x0C1E7169 ^ 0x39443975;
                  }
                  else
                  {
                     _loc1_ = -603493163 ^ -703944773 ^ -943609375 ^ 0x25A89AB9;
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
      
      public function get npcDialog() : _bcbbbdff7822a2836fabca51
      {
         return this._0b98acb0bfc3b183868e56ef;
      }
   }
}

