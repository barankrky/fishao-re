package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.dialog._d248fcdc0f7611518f3784e3;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.breeding._f2b1c613b43475620da0eb28;
   import com.ax3.fishao.view.dialogs.breeding.model._60df203c5bd65d9824423405;
   import com.ax3.fishao.view.wrappers._ca27b8d2ca815ae75d3ef02d;
   import com.ax3.fishao.view.wrappers.impl._6b91a781d828662e84e05553;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _03100b485ccd2264fe0ad493 extends _8071087ebe26c264282580d0
   {
      
      public var title:_6b91a781d828662e84e05553;
      
      public var currentFishbucksAmount:TextField;
      
      public var youHave:TextField;
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var addMoreButton:ConfirmFrameButtonWrapper;
      
      public var fish1:_ca27b8d2ca815ae75d3ef02d;
      
      public var fish2:_ca27b8d2ca815ae75d3ef02d;
      
      public var fish3:_ca27b8d2ca815ae75d3ef02d;
      
      private var _b9f5548664b01bc352e5c8d6:_cff30366d510ea862540bfef;
      
      private var _6814f166c2cd6e688c1bb684:_cff30366d510ea862540bfef;
      
      private var _921160040ad60c9615faa348:_cff30366d510ea862540bfef;
      
      public function _03100b485ccd2264fe0ad493()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挎挳揄掝掬挠挭掷揱挮掂掞捚揤揃捡掋揱揮揇挋掼捈挞捣援揊挟插掙挀捒捑捃挎揫挾捩捂掛捗捞挑揁掷揸揉挽掺揣掜捝揯揯揀挴","掎掐捤揹掺揉掰掉揵挃捘捁挢捐揽挪");
         super(_loc1_);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var _loc1_:int = 0x51B4B40E ^ 0x7861439A ^ 0x27B625C9 ^ 0x1158CD1E;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x7DF6F785 ^ -1545226431 ^ -309236548 ^ 0x2CB93339))
            {
               case 0:
                  this.addMoreButton.handler = GameSwf.instance._cb81036d0354ae254b0556b1;
                  _loc1_ = 0x373ACF9C ^ -2099522644 ^ -2051087704 ^ 0x2F64E1D8;
                  break;
               case 1:
                  this._366c28b86daf8abf33bb8d11();
                  this._2ad1aa9b4c35c611b7757bee();
                  super._935ac2966ddad68dfc449202();
                  return;
               case 2:
                  this.title.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჳဇႡႫၑ႙ဢဤႂჴჿჿၴုჷ჈ნဇრ၈ဢუჁညტဒ၄ဆယနၙီၘၼႵၧ႔ჁဏအဈწႏႷჰႈှႿၰႛႎဇႣ჻჊Ⴐတ၏န၉","჆ၺႍဝု႞ဠႄჩდ႗်ႭႺၥျ"));
                  this.youHave.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၬჰქၵၭၘဲႸႧၸၔჀ၂ဵႅႃჵဦႁဘဨႲၧဤჀႏ့ვၟဂლဉႃဏჲჅდီჭၝႬ჈ၙၯႁၨ჋႞ჇှၛႤဗၺဪჰၞ၎ဧႸးჂმႩဝႅ","ჱႊဲႴၱႅშၰႝၟ၂့ၵ၁Ⴃ჻"));
                  this.addMoreButton.label = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("თဥ჊ခკ႑႕ფၗჼႥးრႅဋၐဳႰფၳნ႙ჶ၈ၙ႟ံჄ႗ღდအဧၲႪ၃ჲလၵဠჃႼူჿჺၞၚ၍ၙცცၺၭႇ၊ႝၼ်ၶၟႡႍ၃ႁၐႮ","၆ထႆႭ့ၚေ၇ၬပზႃၦႶႋთ"));
                  tabChildren = false;
                  this.closeButton.handler = this._3f0c413862ffad096d00f6aa;
                  if(GameSwf.instance != null)
                  {
                     _loc1_ = -1954498449 ^ 0x779CA60B ^ 0x63249E9F ^ -2147246150;
                  }
                  else
                  {
                     _loc1_ = -1728040640 ^ -1174573124 ^ 0x1753E9D8 ^ 0x2895A864;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _3ab9ee943b31041ea986182e() : void
      {
         var _loc1_:_60df203c5bd65d9824423405 = null;
         var _loc2_:_cff30366d510ea862540bfef = null;
         var _loc3_:_f2b1c613b43475620da0eb28 = GameSwf.instance.managerBreeding;
         var _loc4_:Array = _loc3_.fishes;
         this._b9f5548664b01bc352e5c8d6 = this._6814f166c2cd6e688c1bb684 = this._921160040ad60c9615faa348 = null;
         var _loc5_:int = -2066267261 ^ -1819003044 ^ 0x7195BF25 ^ 0x66D6CBFA;
         for each(_loc1_ in _loc4_)
         {
            _loc2_ = app.fishDict.get(_loc1_.id) as _cff30366d510ea862540bfef;
            _loc2_.breedingSuccessRateCurrent = _loc1_.succesRate;
            _loc2_.breedingDuration = _loc1_.timeLeft;
            _loc5_++;
            var _loc8_:Number = _loc5_;
            switch((0x45C06CE0 ^ 0x58F153B3 ^ 0x4275C17C ^ 0x5F44FE2E) === _loc8_ ? -144435824 ^ 0x1D912277 ^ -1944220009 ^ 0x66E8B970 : ((0x4E6BB47D ^ 0x138A4925 ^ 0x5378F1E0 ^ 0x0E990CBA) === _loc8_ ? -1970484087 ^ 0x2DAB2B2D ^ -1448894144 ^ 0x0E8446E5 : ((0x7378CBFA ^ 0x1F6AB8ED ^ 0x1F8FBB26 ^ 0x739DC832) === _loc8_ ? -518859485 ^ 0x6FB8023F ^ -1909612525 ^ 0x87770D : 0x342DF21B ^ 0x0EAC7288 ^ -1808182378 ^ -1363619066)))
            {
               case 0:
                  this._b9f5548664b01bc352e5c8d6 = _loc2_;
                  break;
               case 1:
                  this._6814f166c2cd6e688c1bb684 = _loc2_;
                  break;
               case 2:
                  this._921160040ad60c9615faa348 = _loc2_;
            }
         }
         if(_state == _d248fcdc0f7611518f3784e3.ASSET_COMPLETE)
         {
            this._2ad1aa9b4c35c611b7757bee();
         }
      }
      
      private function _2ad1aa9b4c35c611b7757bee() : void
      {
         var _loc1_:int = 0x1ED04834 ^ 0x1D370E23 ^ -2065320109 ^ 0x1F42867A;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1088904802 ^ -1138325761 ^ -1996352010 ^ 0x127C45AD))
            {
               case 0:
                  this.fish3._fb2737826eacd0c722842d87(this._921160040ad60c9615faa348);
                  this.fish3.show();
                  _loc1_ = -319525223 ^ 0x68A2A6A8 ^ -713821048 ^ -916108415;
                  break;
               case 1:
                  this.fish1._fb2737826eacd0c722842d87(this._b9f5548664b01bc352e5c8d6);
                  this.fish1.show();
                  _loc1_ = 0x75ECE083 ^ -1771168616 ^ 0x2E24CA5D ^ 0x55E6417F;
                  break;
               case 2:
                  return;
               case 3:
                  if(this._6814f166c2cd6e688c1bb684 != null)
                  {
                     _loc1_ = 0x55DCDFA1 ^ -380386586 ^ -1035899538 ^ -426899690;
                  }
                  else
                  {
                     _loc1_ = 0x719DDBF8 ^ 0x61FAC8EC ^ 0x62A47ACD ^ -360505627;
                  }
                  break;
               case 4:
                  this.fish1.hide();
                  this.fish2.hide();
                  this.fish3.hide();
                  if(this._b9f5548664b01bc352e5c8d6 != null)
                  {
                     _loc1_ = 0x44E18515 ^ 0x0AD5B344 ^ -1080797464 ^ 0x69E01782;
                  }
                  else
                  {
                     _loc1_ = 0x0E45A7E9 ^ -1380520443 ^ 0x750D9012 ^ 0x4EBEAEC7;
                  }
                  break;
               case 5:
                  this.fish2._fb2737826eacd0c722842d87(this._6814f166c2cd6e688c1bb684);
                  this.fish2.show();
                  _loc1_ = 0x38E6B1E9 ^ 0x58DEBBB5 ^ -1502544882 ^ 0x5E08816E;
                  break;
               case 6:
                  if(this._921160040ad60c9615faa348 != null)
                  {
                     _loc1_ = -1593418772 ^ -1708195214 ^ -411646506 ^ 0x441FEB72;
                  }
                  else
                  {
                     _loc1_ = 0x698703C5 ^ -366696948 ^ 0x2352477F ^ 0x38B1958E;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _3f0c413862ffad096d00f6aa(param1:MouseEvent) : void
      {
         close();
      }
      
      protected function _366c28b86daf8abf33bb8d11(param1:Event = null) : void
      {
         this.currentFishbucksAmount.text = String(app.user.fishbucks);
      }
      
      override public function activate() : void
      {
         super.deactivate();
         app.user._b4cae3abe96a2089ccbc80fc(this._366c28b86daf8abf33bb8d11);
         this.fish1.addEventListener(_ca27b8d2ca815ae75d3ef02d.BREEDER_BUTTON_CLICK,this._15f06ba21c4b21bfe5d4dfcf);
         this.fish2.addEventListener(_ca27b8d2ca815ae75d3ef02d.BREEDER_BUTTON_CLICK,this._15f06ba21c4b21bfe5d4dfcf);
         this.fish3.addEventListener(_ca27b8d2ca815ae75d3ef02d.BREEDER_BUTTON_CLICK,this._15f06ba21c4b21bfe5d4dfcf);
      }
      
      override public function deactivate() : void
      {
         var _loc1_:int = -1808363373 ^ -1580200760 ^ -66904708 ^ 0x77C101AD;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1297768530 ^ -1544979124 ^ -746491102 ^ 0x7CE91148))
            {
               case 0:
                  if(this.fish1.hasEventListener(_ca27b8d2ca815ae75d3ef02d.BREEDER_BUTTON_CLICK))
                  {
                     _loc1_ = -984572483 ^ 0x01E36091 ^ -1583767790 ^ -619781449;
                  }
                  else
                  {
                     _loc1_ = 0x1C365A09 ^ -1094813682 ^ -2051201102 ^ -1726905032;
                  }
                  break;
               case 1:
                  this.fish1.removeEventListener(_ca27b8d2ca815ae75d3ef02d.BREEDER_BUTTON_CLICK,this._15f06ba21c4b21bfe5d4dfcf);
                  _loc1_ = 0x794E7664 ^ 0x400BA284 ^ 0x1C752A78 ^ -1693155819;
                  break;
               case 2:
                  super.deactivate();
                  app.user._8577097c0ec141ab849ff3ae(this._366c28b86daf8abf33bb8d11);
                  if(this.fish1.hasEventListener(_ca27b8d2ca815ae75d3ef02d.BREEDER_BUTTON_CLICK))
                  {
                     _loc1_ = 0x6002A31A ^ -2119105146 ^ 0x577BCD66 ^ 0x08ECEB74;
                  }
                  else
                  {
                     _loc1_ = 0x1951B441 ^ -1771113299 ^ -2139917542 ^ -1318538371;
                  }
                  break;
               case 3:
                  if(this.fish1.hasEventListener(_ca27b8d2ca815ae75d3ef02d.BREEDER_BUTTON_CLICK))
                  {
                     _loc1_ = -951451415 ^ -974868143 ^ -1380997559 ^ 0x1125977D;
                  }
                  else
                  {
                     _loc1_ = -1195458621 ^ 0x54B48B15 ^ 0x75F81C71 ^ 0x27D6A82F;
                  }
                  break;
               case 4:
                  this.fish1.removeEventListener(_ca27b8d2ca815ae75d3ef02d.BREEDER_BUTTON_CLICK,this._15f06ba21c4b21bfe5d4dfcf);
                  _loc1_ = -713555695 ^ 0x04B48F0C ^ -1542457328 ^ -873990523;
                  break;
               case 5:
                  return;
               case 6:
                  this.fish1.removeEventListener(_ca27b8d2ca815ae75d3ef02d.BREEDER_BUTTON_CLICK,this._15f06ba21c4b21bfe5d4dfcf);
                  _loc1_ = -1647049524 ^ 0x47363621 ^ -1125327328 ^ -668308410;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _15f06ba21c4b21bfe5d4dfcf(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         super.close();
      }
   }
}

