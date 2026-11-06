package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.tfs._bb16db8e79db6c61890c313e;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.control.managers._24372ec25826d4547f4fa51e;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.locations.base._24fc30cfc3c855ea21a231e8;
   import com.ax3.fishao.model._020eb172ea5f58203a09fdb5;
   import com.ax3.fishao.model.interfaces._2cf2c36ec9c55df2249a4e27;
   import com.ax3.fishao.requirements._486f3b64ee967395c7114ca7;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.tooltips._1d9c72ffd33c517a03ce13ee;
   import com.ax3.fishao.view.tooltips._27e34072c1a9177c279a80c7;
   import com.ax3.fishao.view.tooltips._c0e266c37b2d0c495a575cd8;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import com.inkora.easing.Linear;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import protocol.api.base.ResponseOk;
   
   public class _e63cfaa74949a39494ed2b0b extends ShiftWrapper implements IAssetWrapper, IToolTipTarget
   {
      
      private var _dfa8ec0d8e9d052360fd9969:Array = [];
      
      private var _b02f001926c0d7f5aa1e45f8:Array = [];
      
      private var _766b94b131d5bc150688272f:Array = [];
      
      private var _bb9f18858cbb5fabdcefa72e:Array = [];
      
      private var _9ab2e69a049d13e389b67d0d:int;
      
      private var _a8f060355df1412d61f4c9e5:Function;
      
      private var _ec1f91a245921ac454730877:_2cf2c36ec9c55df2249a4e27;
      
      private var _b368e2c6cf168a1bedfd1084:_27e34072c1a9177c279a80c7 = new _27e34072c1a9177c279a80c7();
      
      private var _eeba265e38227c6c3695f8a5:_c0e266c37b2d0c495a575cd8 = new _c0e266c37b2d0c495a575cd8();
      
      private var _e55bedb377e9408a1fb4ebcd:Point;
      
      private var _b43a13b9dc3db4c12f9c2c34:MovieClip;
      
      private var _fd76c68412bb29c45a613504:DisplayObject;
      
      private var _4033e02a03b847c8c32a5b1d:Number = 0;
      
      private var _b29dddb25d5b9f847ede6ff6:Array;
      
      private var _7a20d0cabdbb74ff16e66b93:Boolean = false;
      
      private var _a160c97e124935725dc93501:int;
      
      private var _2607b44887e7bf1ed03ef647:int;
      
      private var _bf8025f1bb8dada116eb7282:int;
      
      private var _2fb174d16066c570d5ab91a4:_020eb172ea5f58203a09fdb5;
      
      private var _e44f7536f83d8b4c86bf896c:_34a2ba6ad978d976b8b0f5a4;
      
      private var _ee57947e1d32daa89451e16a:Boolean;
      
      public function _e63cfaa74949a39494ed2b0b()
      {
         var _temp_3:* = this;
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = 0x0C37B430 ^ 0x287D9E3F ^ 0x160CBEA6 ^ 0x324694A9;
         _temp_3._e55bedb377e9408a1fb4ebcd = new Point(_temp_1,_temp_1);
         super();
         this._b368e2c6cf168a1bedfd1084 = new _27e34072c1a9177c279a80c7();
         this._b368e2c6cf168a1bedfd1084.alpha = 0x2E5BFFE3 ^ 0x5838D2C6 ^ -1064752588 ^ -1226176751;
         this._eeba265e38227c6c3695f8a5 = new _c0e266c37b2d0c495a575cd8();
         this._eeba265e38227c6c3695f8a5.alpha = -1174451232 ^ -2054321773 ^ -670360443 ^ -461775114;
      }
      
      private static function _8e5759d21776192972045df8(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ResponseOk = param1 as ResponseOk;
         if(_loc2_ == null)
         {
            return;
         }
         GameSwf.worldMap._dd567f2dc6062b728de1617c();
      }
      
      private static function _fe384ee845200de1e684d23c(param1:Array) : Array
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Array = [];
         for each(_loc2_ in param1)
         {
            if(_loc2_ is ColorMatrixFilter)
            {
               _loc3_ = new ColorMatrixFilter();
            }
            _bb16db8e79db6c61890c313e._a7e5a08ac5f225cac2ab429d(_loc3_,_loc2_);
            _loc4_.push(_loc3_);
         }
         return _loc4_;
      }
      
      public function set tween(param1:Number) : void
      {
         var _loc2_:Array = this.enabled ? this._bb9f18858cbb5fabdcefa72e : this._766b94b131d5bc150688272f;
         var _loc3_:Array = this.enabled ? this._b02f001926c0d7f5aa1e45f8 : this._dfa8ec0d8e9d052360fd9969;
         var _loc4_:int = 0x59A4EB58 ^ -101247302 ^ -1702523378 ^ 0x3AD673EC;
         while(_loc4_ < this._b29dddb25d5b9f847ede6ff6.length)
         {
            if(this._b29dddb25d5b9f847ede6ff6[_loc4_] is ColorMatrixFilter)
            {
               ColorMatrixFilter(this._b29dddb25d5b9f847ede6ff6[_loc4_]).matrix = ColorMatrix.process2MatrixTransparent(ColorMatrixFilter(_loc3_[_loc4_]).matrix,ColorMatrixFilter(_loc2_[_loc4_]).matrix,param1);
            }
            _loc4_++;
         }
         this._fd76c68412bb29c45a613504.filters = this._b29dddb25d5b9f847ede6ff6;
         this._4033e02a03b847c8c32a5b1d = param1;
      }
      
      public function get tween() : Number
      {
         return this._4033e02a03b847c8c32a5b1d;
      }
      
      public function get enabled() : Boolean
      {
         return !this._7a20d0cabdbb74ff16e66b93;
      }
      
      public function get locationId() : int
      {
         return this._9ab2e69a049d13e389b67d0d;
      }
      
      public function set isFocused(param1:Boolean) : void
      {
         this._ee57947e1d32daa89451e16a = param1;
      }
      
      public function get tooltip() : Sprite
      {
         return this._ec1f91a245921ac454730877 as Sprite;
      }
      
      private function _33e65379794599ea30cac774(param1:_2cf2c36ec9c55df2249a4e27) : void
      {
         if(this._ec1f91a245921ac454730877 == param1)
         {
            return;
         }
         var _loc2_:Sprite = this.tooltip;
         if(this._ec1f91a245921ac454730877 != null && _loc2_.parent != null)
         {
            _loc2_.parent.removeChild(_loc2_);
         }
         this._ec1f91a245921ac454730877 = param1;
         _loc2_ = this.tooltip;
         if(_loc2_ != null)
         {
            _24372ec25826d4547f4fa51e.TOOLTIP_LAYER.addChild(_loc2_);
         }
         this._bec82d22816469f9d6cc4eb3();
      }
      
      private function _b6f458e36f8da7380cf515fa(param1:MouseEvent) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_041_UI_Hover_button);
         this.show();
      }
      
      private function _3a463e3047ef676033cdb3b8(param1:MouseEvent) : void
      {
         var _loc2_:int = -126461672 ^ -1577216808 ^ 0x3F179033 ^ -1026159559;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1265045153 ^ 0x63F26261 ^ 0x72976576 ^ 0x01B7A783))
            {
               case 0:
                  this.hide();
                  return;
               case 1:
                  if(this.enabled)
                  {
                     _loc2_ = -497907067 ^ 0x367EAFAE ^ 0x5C73DEE1 ^ 0x2C15AA02;
                  }
                  else
                  {
                     _loc2_ = -107375408 ^ -1038365312 ^ 0x3F444478 ^ -1601418015;
                  }
                  break;
               case 2:
                  this._b29dddb25d5b9f847ede6ff6 = _fe384ee845200de1e684d23c(this._dfa8ec0d8e9d052360fd9969);
                  _loc2_ = 0x716D9E96 ^ -1823805043 ^ -1708363816 ^ -599699192;
                  break;
               case 3:
                  this._b29dddb25d5b9f847ede6ff6 = _fe384ee845200de1e684d23c(this._b02f001926c0d7f5aa1e45f8);
                  _loc2_ = -1651885430 ^ 0x4960588A ^ 0x6445B5E1 ^ 0x14E5862A;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _ff66e6fc116c422cf41ffe07(param1:MouseEvent) : void
      {
         if(this.enabled && this._a8f060355df1412d61f4c9e5 != null)
         {
            this.hide(-1663927088 ^ -454663270 ^ -964220146 ^ -1095551932);
            _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_050_UI_Select_item);
            this._a8f060355df1412d61f4c9e5.call(this,param1);
         }
      }
      
      private function _e10216186ec1417ce2f3ba41(param1:MouseEvent) : void
      {
         this._b6f458e36f8da7380cf515fa(param1);
      }
      
      private function _57919fc1c401ac40af792e8f(param1:MouseEvent) : void
      {
         this._3a463e3047ef676033cdb3b8(param1);
      }
      
      private function _bfdff6f7fe8e16d6b35c1ac3(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x7B2FAAD8 ^ -281477700 ^ -1612533495 ^ 0x0BF5E66D;
         var _loc3_:int = -528652370 ^ -1648354921 ^ 0x21A8D18A ^ 0x5407E912;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x3E2914FD ^ 0x230172B8 ^ -1516773993 ^ -1330774672))
            {
               case 0:
                  GameSwf.instance._e6f0a7b005cacf7751286e97();
                  _loc3_ = 0x7A8D6934 ^ 0x6E539BB9 ^ -1084729297 ^ -1550521342;
                  break;
               case 1:
                  _dfa25706e58a240c1e33e5c6.locationExtension._683ea47aff4c6dd25d45c8e2(this._9ab2e69a049d13e389b67d0d,_8e5759d21776192972045df8);
                  _loc3_ = -10166915 ^ 0x6080A5DB ^ -281207489 ^ 0x78CB2339;
                  break;
               case 2:
                  return;
               case 3:
                  _loc2_ = this._a160c97e124935725dc93501;
                  if(app.user.fishcoins >= _loc2_)
                  {
                     _loc3_ = -53535066 ^ 0x53D7FFD1 ^ -4355059 ^ 0x58B72BD9;
                  }
                  else
                  {
                     _loc3_ = -1935264998 ^ 0x37E71B39 ^ 0x76FF5641 ^ -978569024;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _a04fc0b2fd5edf1ed95339f2(param1:uint, param2:uint) : void
      {
         var _loc3_:int = -982933477 ^ -907822128 ^ 0x1CC7E37E ^ 0x104DF8B5;
         var _loc4_:int = -373497721 ^ 0x2D149E88 ^ -2047918191 ^ 0x38645CD2;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (-2104754908 ^ -1844357135 ^ 0x1A9A1C7C ^ 0x7323ABE5))
            {
               case 0:
                  _loc3_ = this._2fb174d16066c570d5ab91a4._0995b3aa2fe33ceaf8dd4322(getTimer());
                  if(_loc3_ == (-2122825143 ^ -1614801174 ^ 0x62C87C08 ^ 0x7C7028AB))
                  {
                     _loc4_ = -700441409 ^ -1033426834 ^ 0x6518887C ^ 0x081CA1E3;
                  }
                  else
                  {
                     _loc4_ = 0x6760EF97 ^ -347280878 ^ 0x7B2C0A60 ^ -1910304088;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  GameSwf.worldMap._dd567f2dc6062b728de1617c();
                  this._e44f7536f83d8b4c86bf896c._95b5d5379ad5d337e4cae733(this._a04fc0b2fd5edf1ed95339f2);
                  this._2fb174d16066c570d5ab91a4 = null;
                  _loc4_ = -1164425068 ^ 0x309790E7 ^ 0x3A65EB8B ^ -917950795;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         addChild(param1);
         MovieClip(param1).mouseEnabled = false;
         mouseChildren = false;
         buttonMode = true;
         addEventListener(MouseEvent.CLICK,this._ff66e6fc116c422cf41ffe07);
         this._5dcc51b8d894ed469bdfc955();
         this._b368e2c6cf168a1bedfd1084.addEventListener(MouseEvent.MOUSE_OVER,this._e10216186ec1417ce2f3ba41,true,0x5DBFBC94 ^ 0x38A0EA43 ^ -838437598 ^ -1424415755,true);
         this._b368e2c6cf168a1bedfd1084.addEventListener(MouseEvent.MOUSE_OUT,this._57919fc1c401ac40af792e8f,true,-1342665473 ^ -1644054361 ^ 0x2A4129B5 ^ 0x1BB81DED,true);
         var _loc2_:MovieClip = MovieClip(param1).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捅掭捄挮揠挡掛揦挞揑掍挧挀挴揯捄掁捺","换捫捰挵揅挓接掆捋揞挏挏挥损捤掆")) as MovieClip;
         if(_loc2_ != null)
         {
            this._b43a13b9dc3db4c12f9c2c34 = _loc2_;
            this._b43a13b9dc3db4c12f9c2c34.visible = false;
         }
         var _loc3_:MovieClip = MovieClip(param1).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勓励剞勷勗劺勬則勬剮刜刀劾制勿劭剨勶効刼劦勧创刁","劺办勓刾劂刐剹剜剴动剈勗勣刾剸刌")) as MovieClip;
         this._fd76c68412bb29c45a613504 = _loc3_ == null ? this : _loc3_;
         this._e44f7536f83d8b4c86bf896c = _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200);
      }
      
      public function show(param1:Number = 0.5) : void
      {
         this._bec82d22816469f9d6cc4eb3();
         var _loc2_:Sprite = this.tooltip;
         this._4033e02a03b847c8c32a5b1d = 0x37F08296 ^ 0x0A3C5B1E ^ 0x7E9D196F ^ 0x4351C0E7;
         if(_loc2_ != null)
         {
            _loc2_.visible = true;
         }
         if(this._b43a13b9dc3db4c12f9c2c34 != null)
         {
            this._b43a13b9dc3db4c12f9c2c34.visible = !this.enabled;
         }
         TweenCube.destroyTweensOf(this._fd76c68412bb29c45a613504,true);
         TweenCube.to(this._fd76c68412bb29c45a613504,param1,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("သჄဧნၤ႘სჺჱဠႊႳၓცျဳႽဤ","ႍ႔ႠლၣႻၲႲၰၣႚဋဉ႒ၹၣ")):-818281219 ^ -176398726 ^ -1861767193 ^ -1421740703},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴤ჏ခუရၒႌ၅ჰ჉რႯ႒ႂქჴ","ႈႋႉჾჼီჰႱၟ။Ⴂ႑Ⴎှၰ္")):Linear.easeNone});
         if(_loc2_ != null)
         {
            _loc2_.alpha = -1611277261 ^ 0x7E0BF186 ^ 0x463349AC ^ -1479711719;
            _loc2_.cacheAsBitmap = true;
            TweenCube.destroyTweensOf(_loc2_,false);
            TweenCube.to(_loc2_,param1,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჰၟႋხၷႭႸႠპႶၴჽႇ჏ႅၯႵဋ","၄ါდჄၬထ჉ဢှထၔႹႰႝ႟၆")):0x2B13BE37 ^ 0x0ED202F7 ^ -1981073888 ^ -1406498079},{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剌劉剳勲刪剥劗勎刉劤劘剚剔刌劬初","刐勾勣劜別勎刦刾剡勚刓剞到前削刁")):Linear.easeNone});
         }
      }
      
      public function hide(param1:Number = 0.5) : void
      {
         var _loc2_:Sprite = this.tooltip;
         if(param1 == (0x0DB3FADA ^ -1963699132 ^ 0x3ED04F83 ^ -1181228771) && _loc2_ != null)
         {
            _loc2_.visible = false;
         }
         this._4033e02a03b847c8c32a5b1d = -1754077376 ^ 0x050F6756 ^ -36433743 ^ 0x6FA990A6;
         TweenCube.destroyTweensOf(this._fd76c68412bb29c45a613504,true);
         TweenCube.to(this._fd76c68412bb29c45a613504,param1,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႘ၘဴ႒ၜ္၌်ာနჿူ၄Ⴧၣ၌ၿႸ","ၭာႈშႚკဗႀႚှႇႝ჆ဇႆ၅")):-1426732586 ^ 0x5654A7E1 ^ 0x68746311 ^ -1797976794},{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剧剐剴劦劕剰勔刨劝劘募勱判勵剂勰","刷劉划劂剄劣剡勷助制劵刲劈劥剖勡")):Linear.easeNone});
         if(_loc2_ != null)
         {
            TweenCube.destroyTweensOf(_loc2_,false);
            TweenCube.to(_loc2_,param1,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႐၂ၡၪჾႁဤမჾ၅၃ჩံ၌჆Ⴡာရ","ၤၒႽკၚႪ၂ဟ႓ჱტ჏၃ိ჈ႌ")):-1371014306 ^ -100498724 ^ 0x219A8943 ^ 0x75DFF0C1},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴣ႒ႁၷဗဥ႓ၫဩნဪႡႤစၶႶ","ၵၖဗႯႀოႃႧჱၳ၃ဍ၏ბာჩ")):Linear.easeNone});
         }
         if(this._b43a13b9dc3db4c12f9c2c34 != null)
         {
            this._b43a13b9dc3db4c12f9c2c34.visible = false;
         }
      }
      
      public function disable() : void
      {
         var _loc1_:int = -1651270479 ^ 0x2A18F9A4 ^ 0x1E34F641 ^ -1914263165;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-144867369 ^ -73584275 ^ -103114536 ^ -784077643))
            {
               case 0:
                  this._33e65379794599ea30cac774(this._b368e2c6cf168a1bedfd1084);
                  if(!this._7a20d0cabdbb74ff16e66b93)
                  {
                     _loc1_ = 0x4A4F68AE ^ 0x032BB6B8 ^ -2022736385 ^ -363685572;
                  }
                  else
                  {
                     _loc1_ = 0x6E9571E4 ^ 0x4EEA2A8C ^ 0x501DB8C8 ^ 0x543BD976;
                  }
                  break;
               case 1:
                  if(this._ee57947e1d32daa89451e16a)
                  {
                     _loc1_ = 0x4513856B ^ 0x0B0115CA ^ 0x0D33CA05 ^ 0x67786076;
                  }
                  else
                  {
                     _loc1_ = -274717649 ^ -1395205119 ^ 0x3F850D9E ^ 0x58AACF63;
                  }
                  break;
               case 2:
                  this._7a20d0cabdbb74ff16e66b93 = true;
                  this._fd76c68412bb29c45a613504.filters = this._dfa8ec0d8e9d052360fd9969;
                  _loc1_ = -1826803156 ^ -1743651843 ^ 0x6F79C78B ^ 0x402C348C;
                  break;
               case 3:
                  return;
               case 4:
                  this.hide(-1621687598 ^ -1421478947 ^ 0x5386D7C7 ^ 0x679426C8);
                  _loc1_ = -1696448250 ^ 0x092E010B ^ -1204633512 ^ 0x0FA7BA81;
                  break;
               case 5:
                  this.show(-89855060 ^ -481522661 ^ 0x09F4AC35 ^ 0x101CCB82);
                  _loc1_ = 0x35F2FA99 ^ 0x09E0E514 ^ -1034925118 ^ -635736421;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function enable() : void
      {
         var _loc1_:int = 0x32975569 ^ -370614938 ^ -909509623 ^ 0x30B4BE9B;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x55FDA835 ^ -914117886 ^ -2071303230 ^ 0x3AF6A26B))
            {
               case 0:
                  this._7a20d0cabdbb74ff16e66b93 = false;
                  this._fd76c68412bb29c45a613504.filters = this._b02f001926c0d7f5aa1e45f8;
                  _loc1_ = -1623926317 ^ -1808034873 ^ -1550650651 ^ -1969261973;
                  break;
               case 1:
                  this.show(-1071127598 ^ 0x7BBDF1BC ^ -1608867149 ^ 0x1B80B0DD);
                  _loc1_ = -724985012 ^ -590453496 ^ -794507741 ^ -90049797;
                  break;
               case 2:
                  return;
               case 3:
                  this._33e65379794599ea30cac774(this._eeba265e38227c6c3695f8a5);
                  if(this._7a20d0cabdbb74ff16e66b93)
                  {
                     _loc1_ = -1317035893 ^ 0x35372038 ^ 0x5D291353 ^ -77375106;
                  }
                  else
                  {
                     _loc1_ = -425343184 ^ -1207138561 ^ -1489471627 ^ -611058656;
                  }
                  break;
               case 4:
                  if(this._ee57947e1d32daa89451e16a)
                  {
                     _loc1_ = -304253263 ^ -482494775 ^ 0x4687E2AD ^ 0x6A65E84A;
                  }
                  else
                  {
                     _loc1_ = 0x148F316A ^ 0x1C92F31A ^ 0x16904E4B ^ 0x3C8F46A0;
                  }
                  break;
               case 5:
                  this.hide(-10183052 ^ -434876834 ^ 0x15AFF24D ^ 0x0CDF2267);
                  _loc1_ = 0x79F4B38E ^ -1327956731 ^ 0x3A3D4B49 ^ -787230882;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function update(param1:Object) : void
      {
         if(param1 is String)
         {
            param1 = JSON.parse(String(param1));
         }
         if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揾捇捁挍掳挮挖挏挶捦掍揺挙挅掸掿揊揊挏挺捃揽","持掦挌挤挈捆捌揼挛捋捣掘掁挼控捥")))
         {
            this._eeba265e38227c6c3695f8a5.description = param1.players;
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဗၼ်჋၂ႹႜჂჼ။ဪႹဪდႋၽჷႚႥ჉ი၇","ၿၶၹႺၪ့ှႌჲႨဠ၉ၘႥႇႛ")))
         {
            this.disable();
            if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剭剢劵劤勼勸勧別勾刋前刳剺剦剮切勼劬切剹勂刪务劻劤努劋勬剮剜劍利劌功刬刚勶刿刏努劜募勠刂劧刞劫劇刧削刜勌","劚劙劊勩劈剕勞前剆劐剞劌刑剼动剞")))
            {
               this._a160c97e124935725dc93501 = param1.access_price_fishcoins as int;
            }
            if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挪捥捖揇挃据握挳捕掔揳揶掄揦揚掽掍捰指揶捁授揾揿揸揁挿揀揄捽掼挀掚揥捎挛捯掤","捅挪掋掁捐挳掫揦揇捱掬揧採挼挎掚")))
            {
               this._2607b44887e7bf1ed03ef647 = param1.access_duration as int;
            }
            this._1dc25e03181ac1a36da4f4ee(param1.locDesc);
         }
         else
         {
            if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捨揾挿捶挥掸捏揨捳挾捊掆排换揤握挊捈掶挈換揥掄挞揼揂捏挲掦掫掼掹揵捰捠揺挽挖掻揟","捲揽掹掼掟揄指揩捰捫揇振掂授揎捥")))
            {
               this._bf8025f1bb8dada116eb7282 = param1.access_time_left as int;
               this._2fb174d16066c570d5ab91a4 = new _020eb172ea5f58203a09fdb5(this._bf8025f1bb8dada116eb7282 * (-1149486141 ^ 0x38D34149 ^ -1546461345 ^ 0x207DA63D),getTimer());
               this._e44f7536f83d8b4c86bf896c._475178699397df7592a9026e(this._a04fc0b2fd5edf1ed95339f2);
            }
            this.enable();
         }
         this._ec1f91a245921ac454730877.title = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劰刱創刽刋刵劝劇剎剘劃勎列劊勪劓剠割剈刏剙剠勯刃劕勘","刌勮划劈劤勰剷剝剺勇勳剿勷勠劲劝") + this._9ab2e69a049d13e389b67d0d);
      }
      
      public function init(param1:_24fc30cfc3c855ea21a231e8, param2:Function, param3:Object) : void
      {
         var _loc4_:int = 0x1E3EF983 ^ -32641593 ^ -690435567 ^ 0x36EBDE55;
         var _loc5_:int = -1053643027 ^ 0x2E2DE6FF ^ 0x40DB00CB ^ -1346090791;
         this._9ab2e69a049d13e389b67d0d = param1.id;
         this._e55bedb377e9408a1fb4ebcd = param1.tooltipPosition;
         this._a8f060355df1412d61f4c9e5 = param2;
         this._766b94b131d5bc150688272f = param3[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႋჶဧႅဏ၀Ⴊ჋႔ဝ႔ၭဘြႿ႔ႍს၄იგႪ჈მဩ႗იႚႳၯဎ၅თဩဳჱႼခ႕ტၶႩ","၍ႇၻဇႰ႕ဂႇႂჼၬဩჵჺძႠ")] || [];
         this._bb9f18858cbb5fabdcefa72e = param3[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勞勺剸刈勯勼刘劻劦劁劇劰刻勂劶勁剨助剛勇刔剥劔劯勵刣勢剝剐勇加剷劒刔劉勩勛劷刀勬剄剹剻劍劝剒","勆劀勵刘剧劐劘勺努剂劽劀勩剃勢剪")] || [];
         this._b02f001926c0d7f5aa1e45f8 = param3[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၯႪ႗ၠၤၒაჭဠၭၲအၕပလါნეၹု჻၆႑ჰႭဟၡှ჌ၞရၘჇ჏დႃკႲ","Ⴣ်ႣဣႮლჲ႟ၥဎဿဍ႔ჴဳဉ")] || [];
         this._dfa8ec0d8e9d052360fd9969 = param3[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劣劲划別剠勐刲剨刌刦剺劑勥初刎勅劳刁勗劋刬剱列剻刐劷剛刂効勥勡劃勝刁","删剶功剢剃剕勨剸勧勁刮刌勨剨劽刃")] || [];
         var _loc6_:ColorMatrixFilter = new ColorMatrixFilter();
         if(this._766b94b131d5bc150688272f.length > this._dfa8ec0d8e9d052360fd9969.length)
         {
            _loc4_ = this._766b94b131d5bc150688272f.length - this._dfa8ec0d8e9d052360fd9969.length;
            _loc5_ = 0x5393B9D1 ^ 0x19EFEA88 ^ 0x1E1C8991 ^ 0x5460DAC8;
            while(_loc5_ < _loc4_)
            {
               this._dfa8ec0d8e9d052360fd9969.push(_loc6_);
               _loc5_++;
            }
         }
         else if(this._dfa8ec0d8e9d052360fd9969.length > this._766b94b131d5bc150688272f.length)
         {
            _loc4_ = this._dfa8ec0d8e9d052360fd9969.length - this._766b94b131d5bc150688272f.length;
            _loc5_ = 0x56E0A27A ^ 0x1A4B2766 ^ -684042468 ^ -1684942336;
            while(_loc5_ < _loc4_)
            {
               this._766b94b131d5bc150688272f.push(_loc6_);
               _loc5_++;
            }
         }
         if(this._766b94b131d5bc150688272f.length > this._dfa8ec0d8e9d052360fd9969.length)
         {
            _loc4_ = this._766b94b131d5bc150688272f.length - this._dfa8ec0d8e9d052360fd9969.length;
            _loc5_ = -1279190907 ^ 0x543C543E ^ 0x45BE919C ^ -1572610777;
            while(_loc5_ < _loc4_)
            {
               this._dfa8ec0d8e9d052360fd9969.push(_loc6_);
               _loc5_++;
            }
         }
         if(this._bb9f18858cbb5fabdcefa72e.length > this._b02f001926c0d7f5aa1e45f8.length)
         {
            _loc4_ = this._bb9f18858cbb5fabdcefa72e.length - this._b02f001926c0d7f5aa1e45f8.length;
            _loc5_ = 0x667B90A2 ^ 0x557B4228 ^ -1697362829 ^ -1445683463;
            while(_loc5_ < _loc4_)
            {
               this._b02f001926c0d7f5aa1e45f8.push(_loc6_);
               _loc5_++;
            }
         }
         this._fd76c68412bb29c45a613504.filters = this.enabled ? this._b02f001926c0d7f5aa1e45f8 : this._dfa8ec0d8e9d052360fd9969;
      }
      
      private function _1dc25e03181ac1a36da4f4ee(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Object = JSON.parse(param1);
         for(_loc2_ in _loc4_)
         {
            if(_loc4_.hasOwnProperty(_loc2_))
            {
               var _loc7_:String = _loc2_;
               switch(_486f3b64ee967395c7114ca7.ERT_PLAYER_LEVEL === _loc7_ ? -525373647 ^ 0x65713ABD ^ 0x22D6134A ^ -1492629818 : (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("励刽刯劻務刜加勑勮勍動剛剜剢務务勔剕勀勛判劜劫務刴剄动刴","剨劣刁判刓剷勪加动劯勸判刯劷剋劻") === _loc7_ ? -562833985 ^ 0x30D3F40D ^ 0x4109D274 ^ -1347816505 : (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刊刓劙刓剐剉刖办剤勋划劐剫劯刲加勞劯判加剛剠刹剩劮劤","刚勸到剈剒力勏剏劅勦劒劀削勀势勡") === _loc7_ ? 0x3EDE2B39 ^ -677326023 ^ 0x0D5B38C3 ^ -467287871 : (_486f3b64ee967395c7114ca7.ERT_PLAYER_SPENDINGS === _loc7_ ? -526746269 ^ 0x6AEC0396 ^ 0x52CC4F96 ^ -658886304 : 0x3FAA9801 ^ -1595152783 ^ -1253081186 ^ 0x2A0E01EA))))
               {
                  case 0:
                     this._b368e2c6cf168a1bedfd1084.description = _c2ad9d37d7be0097d6d2e977.template(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掕揋挚挆掰挞捉挞採掩挷挬掻捱揕捦捸揟掣挴揉掟捄掷捀捔挹掬措挝捡捞掻掷接揎揳捪揸揲掍揨","捑挾掫挟挍掑捥握挝挫捠掑掐捗捰挀"),_loc4_);
                     this._b368e2c6cf168a1bedfd1084.buttonBuy.hide();
                     break;
                  case 1:
                     this._b368e2c6cf168a1bedfd1084.description = _c2ad9d37d7be0097d6d2e977.template(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刦剭勹劒别务剋剝剱刊剺刊刢勺剘刏勹勩剮刣刴勑劙刅劢列勣劗剪劰刳勹勝勥刈劬分刭剐刅劊剑勞制剣劮","刕创励勷剢劯勽剢勋动剤劉剚劸勧勻"),{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勋刣剅劆到制刄刧刯労勮勡労剚刕勯","劒剢剶剈刘创剣劂刎剡刴勏劐剈削刓")):_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揥揩挤挢捥掖掅掏捝掹捼挼援揶挕揔捾捦","挦揂接掐捂提捲捇挩捨捦捸挼掻捶揑") + _loc4_.catch_fish)});
                     this._b368e2c6cf168a1bedfd1084.buttonBuy.hide();
                     break;
                  case 2:
                     _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_WORLD_MAP_LOCATION_BUY_ACCESS);
                     _loc3_ = _loc3_.replace(_706c123ff0b2d45829c1bb3e.ESTS_TIME,_c2ad9d37d7be0097d6d2e977._9c73905d95ecb7dae39a4243(this._2607b44887e7bf1ed03ef647));
                     this._b368e2c6cf168a1bedfd1084.description = _loc3_;
                     this._b368e2c6cf168a1bedfd1084.buttonBuy.label = this._a160c97e124935725dc93501.toString();
                     this._b368e2c6cf168a1bedfd1084.mouseEnabled = true;
                     this._b368e2c6cf168a1bedfd1084.mouseChildren = true;
                     this._b368e2c6cf168a1bedfd1084.buttonBuy.handler = this._bfdff6f7fe8e16d6b35c1ac3;
                     break;
                  case 3:
                     this._b368e2c6cf168a1bedfd1084.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_REQUIREMENT_PLAYER_SPENDINGS);
                     this._b368e2c6cf168a1bedfd1084.buttonBuy.hide();
               }
            }
         }
      }
      
      public function getTooltipType() : TooltipType
      {
         var _loc1_:TooltipType = null;
         if(this._2fb174d16066c570d5ab91a4 != null)
         {
            _loc1_ = _1d9c72ffd33c517a03ce13ee.TEXT_TOOLTIP;
         }
         return _loc1_;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         if(this._2fb174d16066c570d5ab91a4 == null)
         {
            return _loc2_;
         }
         var _loc3_:int = this._2fb174d16066c570d5ab91a4._0995b3aa2fe33ceaf8dd4322(getTimer());
         if(_loc3_ > (0x25EDB371 ^ 0x430C6086 ^ -761133088 ^ -1270623189))
         {
            _loc1_ = _c2ad9d37d7be0097d6d2e977._9c73905d95ecb7dae39a4243(_loc3_);
         }
         else if(_loc3_ > (0x60D694BF ^ 0x76F13B43 ^ 0x26C66541 ^ 0x30E1CABD))
         {
            _loc1_ = _loc3_.toString() + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劽劯切勋剺剣剾劸刦劯","剺刚劯劼刻剹劬剻創劦勭劯剋勚勭勂") + _c2ad9d37d7be0097d6d2e977.get(_loc3_ > (-651661527 ^ 0x40239B3E ^ 0x28C3D06D ^ -1312283525) ? _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刴劁刼剴劽创功劮勹勪劝勱剘劾劶勪刹勔労勍刚剈","励则削剃勮刺劒勘刾剹劊刷刘勁刕剀") : _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႝယႜမဿဵၿၱၜႇ႕ၰဿჾဲၚၻჼၶၤ","Ⴄႌ႓ძၡცძ္჊ჂႼ႖နဣလჱ"));
         }
         var _loc4_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_WORLD_MAP_LOCATION_ACCESS_TIME_TOOLTIP);
         _loc4_ = _loc4_.replace(_706c123ff0b2d45829c1bb3e.ESTS_TIME,_loc1_);
         return {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("别剳助勯劯剙募劧劝删劖劉办刄剏勓","列勾勨刻勭勵剶创剾刹刯剪剀剚勜勨")):_loc4_};
      }
      
      public function _bec82d22816469f9d6cc4eb3() : void
      {
         var _loc1_:Sprite = this.tooltip;
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:Point = localToGlobal(new Point(this._e55bedb377e9408a1fb4ebcd.x,this._e55bedb377e9408a1fb4ebcd.y));
         if(this.enabled && this._9ab2e69a049d13e389b67d0d == _24fc30cfc3c855ea21a231e8.LOCATION_11_PALM_ISLAND.id)
         {
            _loc2_.y += -340772441 ^ -527846033 ^ -495839503 ^ -380921324;
         }
         _loc1_.x = int(_loc2_.x);
         _loc1_.y = int(_loc2_.y);
      }
      
      public function _5dcc51b8d894ed469bdfc955() : void
      {
         addEventListener(MouseEvent.ROLL_OVER,this._b6f458e36f8da7380cf515fa);
         addEventListener(MouseEvent.ROLL_OUT,this._3a463e3047ef676033cdb3b8);
      }
      
      public function _b4b0a9f643237f8ed72f5ee5() : void
      {
         removeEventListener(MouseEvent.ROLL_OVER,this._b6f458e36f8da7380cf515fa);
         removeEventListener(MouseEvent.ROLL_OUT,this._3a463e3047ef676033cdb3b8);
      }
      
      public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._2fb174d16066c570d5ab91a4 = null;
         _24372ec25826d4547f4fa51e._1f04e35aa212d94714ab1ccd();
         this._e44f7536f83d8b4c86bf896c._95b5d5379ad5d337e4cae733(this._a04fc0b2fd5edf1ed95339f2);
      }
   }
}

