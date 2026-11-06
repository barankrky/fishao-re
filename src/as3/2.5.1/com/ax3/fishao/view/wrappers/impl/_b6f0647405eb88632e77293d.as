package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers._67a7ec125a01811d64af4dcc;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _b6f0647405eb88632e77293d extends ShiftWrapper implements IAssetWrapper
   {
      
      protected var _label:TextField;
      
      protected var _open:_63865f1c8d49da076fa9e449;
      
      private var _2432643eaac3134b741d9bb6:MovieClip;
      
      private var _ca67ff1273e4b9bbeeb45a2f:Boolean = false;
      
      protected var _arrow:DisplayObject;
      
      private var _543e7cade85baca3cdbcddf7:int = -1;
      
      private var _ccf6089ccc39d29851fa7ed0:Function;
      
      public function _b6f0647405eb88632e77293d()
      {
         super();
      }
      
      public function get items() : Array
      {
         return this._open.items;
      }
      
      public function set handler(param1:Function) : void
      {
         var _loc2_:int = -1401760763 ^ -938307893 ^ 0x523C2483 ^ 0x64BE1C62;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1706757462 ^ -1086729023 ^ 0x1291B22B ^ 0x650EF66E))
            {
               case 0:
                  return;
               case 1:
                  if(param1 == this._ccf6089ccc39d29851fa7ed0)
                  {
                     _loc2_ = -792111057 ^ 0x195B65A5 ^ -316414507 ^ 0x7653BA71;
                  }
                  else
                  {
                     _loc2_ = 0x1CD7DAAA ^ -1597339145 ^ -2044676632 ^ 0x68DF8499;
                  }
                  break;
               case 2:
                  this._ccf6089ccc39d29851fa7ed0 = param1;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get itemTemplate() : DisplayObject
      {
         return this._open.itemDisplay;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         addChild(param1);
         this._label = (_child as DisplayObjectContainer).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揖揑掻挝挞掿捓挺挿换挢揥揋挍挈揖揪推","揖掋挳捿掓掌揾掋掆指捈揀挔揄捜捐")) as TextField;
         this._arrow = (_child as DisplayObjectContainer).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၛမოၫၟ။ၬჯၔဇႼლႪၿ၆ჇჃ჌","္ာဟႛၸႆႊၲჷႏၤဩႅოၩဆ"));
         this._open = new _63865f1c8d49da076fa9e449();
         var _loc2_:DisplayObject = (_child as DisplayObjectContainer).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勢勓剶勥剹勠劧利劂剚劍劵列刺刏刓剆劜剀勆剋劫务刣刳勦","刀勫刦刴势刺勶剪劰剄劁剴勮勧刕劤"));
         this._open.process(_loc2_);
         this._open.onItemClickHandler = this.onItemClickHandler;
         this._2432643eaac3134b741d9bb6 = (_child as DisplayObjectContainer).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剗劚勁劻刿剠勰劔剿劗剂勳","勫勔剟勘剮勦刧刻劽剮剈劆劫勔刞刞")) as MovieClip;
         this.hide();
         this.disable();
         addEventListener(MouseEvent.ROLL_OVER,this._2035c3757771b7be1d59ca64);
         addEventListener(MouseEvent.ROLL_OUT,this._26ca31902a9839574a7cc90f);
         addEventListener(MouseEvent.MOUSE_DOWN,this._36dcfef6d553291c3f062515,false);
      }
      
      protected function onItemClickHandler(param1:MouseEvent) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_050_UI_Select_item);
         var _loc2_:_9eacfd4ff26a9d83bb66df5f = param1.currentTarget as _9eacfd4ff26a9d83bb66df5f;
         this.text = _loc2_.displayValue;
         this._543e7cade85baca3cdbcddf7 = _loc2_.index;
         this.hide();
         param1.stopPropagation();
         dispatchEvent(new Event(Event.CHANGE));
         if(this._ccf6089ccc39d29851fa7ed0 != null)
         {
            this._ccf6089ccc39d29851fa7ed0(param1);
         }
      }
      
      private function _36dcfef6d553291c3f062515(param1:MouseEvent) : void
      {
         var _loc2_:int = -5017364 ^ -2126298739 ^ -227906175 ^ -749750567;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x10E09F62 ^ 0x367A8697 ^ 0x780C6D44 ^ 0x01439E88))
            {
               case 0:
                  if(this._open.visible)
                  {
                     _loc2_ = 0x4B2D4A1E ^ 0x3BBE7C9D ^ 0x53C625EA ^ 0x7C80F953;
                  }
                  else
                  {
                     _loc2_ = -15048582 ^ 0x27E426ED ^ -878417534 ^ 0x4C8FC529;
                  }
                  break;
               case 1:
                  this.hide();
                  _loc2_ = -114352265 ^ 0x1CFD2DBA ^ -784467567 ^ 0x6B3A2161;
                  break;
               case 2:
                  return;
               case 3:
                  if(this._open.isScrolling() == false)
                  {
                     _loc2_ = 0x39DC7839 ^ 0x184CD8DC ^ -858284595 ^ -1298999536;
                  }
                  else
                  {
                     _loc2_ = -1724224063 ^ -1023396 ^ 0x68F25ACD ^ 0x51EDBF6D;
                  }
                  break;
               case 4:
                  _loc2_ = -1532915104 ^ -52118703 ^ 0x2D51D0AD ^ 0x2AC113A7;
                  break;
               case 5:
                  this.show();
                  _loc2_ = -1181921076 ^ 0x5E5D47D1 ^ -612228659 ^ 0x6387DCEB;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function show() : void
      {
         if(this._open.visible == false && this._ca67ff1273e4b9bbeeb45a2f)
         {
            this._open.visible = true;
            this._open.mouseEnabled = true;
            if(stage)
            {
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this._6e38204d48fad922ad1b9301,true,-54083605 ^ -1004273465 ^ 0x25CF2365 ^ 0x1D2D9C49,true);
            }
         }
      }
      
      private function hide() : void
      {
         var _loc1_:int = -1872359774 ^ 0x6F6AFB0F ^ 0x33B42E2B ^ 0x24D8B9FF;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1531392994 ^ -1159580892 ^ -651654245 ^ 0x2F1216DB))
            {
               case 0:
                  stage.removeEventListener(MouseEvent.MOUSE_DOWN,this._6e38204d48fad922ad1b9301,true);
                  _loc1_ = 0x2C479EE2 ^ 0x2231702E ^ -877394073 ^ 0x2DA28BD3;
                  break;
               case 1:
                  (this._2432643eaac3134b741d9bb6 as MovieClip).gotoAndStop(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剟劂劫勵剀剈券剏削効剳剤勥勐勱剀刡列判勍","勿剮務刀剄剭勥勥刓勓劃刁劊務劈初"));
                  this._open.visible = false;
                  this._open.mouseEnabled = false;
                  if(stage)
                  {
                     _loc1_ = 0x43EB0578 ^ 0x4F4562AF ^ 0x488D0DCF ^ -1404893086;
                  }
                  else
                  {
                     _loc1_ = -2015351202 ^ -113114414 ^ -938193051 ^ 0x5ED60191;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  if(this._open.visible == true)
                  {
                     _loc1_ = 0x4E926FC8 ^ 0x09594734 ^ -282609934 ^ 0x408CFC75;
                  }
                  else
                  {
                     _loc1_ = -459161558 ^ 0x49F79E78 ^ -1178977653 ^ -57932127;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set text(param1:String) : void
      {
         this._label.text = param1;
      }
      
      private function _2035c3757771b7be1d59ca64(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x0B626635 ^ 0x4881B924 ^ -1460369131 ^ -2065904891;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1392437431 ^ 0x65083E03 ^ -1167285826 ^ 0x1DAE15F4))
            {
               case 0:
                  return;
               case 1:
                  if(this._ca67ff1273e4b9bbeeb45a2f)
                  {
                     _loc2_ = 0x3C2046F5 ^ 0x3C282BB3 ^ -1971047878 ^ -448281986;
                  }
                  else
                  {
                     _loc2_ = -526625750 ^ 0x3DCED757 ^ -1619729289 ^ 0x2DEDFA0A;
                  }
                  break;
               case 2:
                  (this._2432643eaac3134b741d9bb6 as MovieClip).gotoAndStop(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("删劎劣剷刽删剛劺劇劸勮刨劲刽剀刡","剖勍劍創勋刺剳劯勍劳劌刪剂刂剭刽"));
                  _loc2_ = 0x089E76C3 ^ 0x23A8A171 ^ -1496412223 ^ -499923597;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _26ca31902a9839574a7cc90f(param1:MouseEvent) : void
      {
         (this._2432643eaac3134b741d9bb6 as MovieClip).gotoAndStop(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၓၜ჌ჱၢႾသყၤ჉အრှၛჾီႜဢႄထ","ၕဂႁဂხႌဣფဃჱႉ႓ဖၸႢჺ"));
      }
      
      public function get displayValue() : String
      {
         return this._label.text;
      }
      
      private function _6e38204d48fad922ad1b9301(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x3A64DC65 ^ 0x0611136B ^ -2047859227 ^ -818441163;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1082333613 ^ -1690525182 ^ -560328071 ^ -1939330830))
            {
               case 0:
                  this.hide();
                  _loc2_ = -1013121536 ^ -560915591 ^ -3105471 ^ -1804663071;
                  break;
               case 1:
                  if(this._open.visible)
                  {
                     _loc2_ = 0x27A8E85F ^ -41595394 ^ 0x3D57B9BA ^ -1849138495;
                  }
                  else
                  {
                     _loc2_ = -222325456 ^ 0x7BCA66C1 ^ 0x6E822E40 ^ -1857707160;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  param1.stopPropagation();
                  _loc2_ = 0x083F5E93 ^ -1699983302 ^ 0x745BF604 ^ -1871018379;
                  break;
               case 4:
                  if(this._open.contains(DisplayObject(param1.target)) == false)
                  {
                     _loc2_ = -1103892056 ^ -1557681660 ^ 0x21C60075 ^ 0x4A602502;
                  }
                  else
                  {
                     _loc2_ = 0x18CA1EA9 ^ -514510593 ^ 0x22E7B904 ^ -1379210870;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function create(param1:Vector.<String>) : void
      {
         var _loc2_:int = -819860010 ^ -1510426776 ^ 0x50F25608 ^ 0x243CA25D;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x321A19C5 ^ 0x7B40B0F0 ^ -668975160 ^ -1888667629))
            {
               case 0:
                  this.disable();
                  _loc2_ = 0x090B9506 ^ 0x1D850B4A ^ 0x3FCFB654 ^ 0x355686F5;
                  break;
               case 1:
                  this.enable();
                  _loc2_ = 0x1FD5C9EB ^ 0x399D98CC ^ 0x620A5BA3 ^ 0x5A55A469;
                  break;
               case 2:
                  if(param1.length > (-1028251387 ^ -1894808900 ^ 0x6DEB0618 ^ 0x2052A5A1))
                  {
                     _loc2_ = 0x4E72F5D9 ^ 0x2D7BF84C ^ 0x2A5B027E ^ 0x5745A101;
                  }
                  else
                  {
                     _loc2_ = 0x71C7EEDD ^ -222329918 ^ 0x2B159AC4 ^ -1233495755;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  this.selectedItemIndex = -1336197625 ^ -1722036043 ^ 0x6E2283B9 ^ 0x47226D0B;
                  _loc2_ = -1627620535 ^ -2083077971 ^ 0x3620C9AF ^ 0x351DDCA5;
                  break;
               case 5:
                  this._open.create(param1);
                  if(param1.length > (0x4C75CC50 ^ -518079429 ^ -163411078 ^ 0x5B29FB10))
                  {
                     _loc2_ = -1666605415 ^ 0x66EF64EF ^ 0x108ECD88 ^ -186672879;
                  }
                  else
                  {
                     _loc2_ = -65607237 ^ -24897574 ^ -896235582 ^ -703473841;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function enable() : void
      {
         var _loc1_:int = 0x6FAE85E3 ^ 0x08707C86 ^ -1327339273 ^ -2101155714;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x644F5242 ^ 0x59392235 ^ -481591057 ^ -1950119562))
            {
               case 0:
                  return;
               case 1:
                  this._arrow.visible = true;
                  this._2432643eaac3134b741d9bb6.visible = true;
                  _loc1_ = 0x5C7475F8 ^ 0x3464D78B ^ -802017859 ^ -304286176;
                  break;
               case 2:
                  this._ca67ff1273e4b9bbeeb45a2f = true;
                  buttonMode = true;
                  if(this._arrow != null)
                  {
                     _loc1_ = 0x190BA269 ^ -1728132801 ^ -1104771236 ^ 0x6A2D95E5;
                  }
                  else
                  {
                     _loc1_ = 0x50979FDF ^ 0x7400F663 ^ 0x7714991A ^ 0x067D8948;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function disable() : void
      {
         var _loc1_:int = 0x2AB6706A ^ -31854029 ^ 0x4D03C394 ^ 0x54E0045C;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-553738439 ^ 0x50938FD8 ^ -1159921477 ^ -100903478))
            {
               case 0:
                  this._arrow.visible = false;
                  this._2432643eaac3134b741d9bb6.visible = false;
                  _loc1_ = 0x360FE038 ^ -1256891434 ^ -703999860 ^ -1738592528;
                  break;
               case 1:
                  this._ca67ff1273e4b9bbeeb45a2f = false;
                  buttonMode = false;
                  if(this._arrow != null)
                  {
                     _loc1_ = -130449139 ^ 0x0E33A54C ^ 0x649AFADA ^ 0x5FDC9B0B;
                  }
                  else
                  {
                     _loc1_ = 0x74E41355 ^ -421038375 ^ 0x079DFCAD ^ 0x58D2DCB3;
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
      
      public function _c5d5235acc70f20f98ab98c9(param1:_67a7ec125a01811d64af4dcc) : void
      {
         this._open.itemFactory = param1;
      }
      
      public function get selectedItemIndex() : int
      {
         return this._543e7cade85baca3cdbcddf7;
      }
      
      public function set selectedItemIndex(param1:int) : void
      {
         this._543e7cade85baca3cdbcddf7 = param1;
         var _loc2_:String = this._open._16bd6cdf460c2ef8f42efde9(param1);
         if(_loc2_ != null)
         {
            this.text = _loc2_;
         }
      }
   }
}

