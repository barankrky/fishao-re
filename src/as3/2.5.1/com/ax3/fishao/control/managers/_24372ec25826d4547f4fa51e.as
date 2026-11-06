package com.ax3.fishao.control.managers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.display.tooltip._f26871dd5c0fe62ad9cfba08;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.model.events._69424463d30df62a2ef50dc1;
   import com.ax3.fishao.model.interfaces._0a5c00b209e7e219b78f41d6;
   import com.ax3.fishao.utils.TransparentClickUtil;
   import com.ax3.fishao.view.tooltips._017c9b323d206c0aa9e553ac;
   import com.ax3.fishao.view.tooltips._9136d3d44d2552f930ba4709;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   
   public class _24372ec25826d4547f4fa51e
   {
      
      private static var _bc98543cbc3ff873e75b9fb2:_34a2ba6ad978d976b8b0f5a4;
      
      private static var _543b709f7dab96d8f4a03d22:_0a5c00b209e7e219b78f41d6;
      
      private static var _beb3f792846e7940f73980c9:Number;
      
      private static var _d0e780e90c9ac69f2968a9d0:Stage;
      
      private static const _e0315c827381c18ed897cbaf:int = -629950804 ^ -766936145 ^ -459254150 ^ -325411975;
      
      public static const TOOLTIP_LAYER:Sprite = new Sprite();
      
      private static var _d0192ebfc414e67488e2dbfe:Object = null;
      
      private static var _cdee8c191d65b52d72186678:uint = -1882983698 ^ -877844507 ^ -674192725 ^ -1816234080;
      
      private static var _7f90655189b43a8809de189e:Dictionary = new Dictionary();
      
      private static const _5ecf318ddec8ea1fa7143706:Number = -1089759858 ^ 0x57058C6F ^ 0x4DEBB128 ^ -1511675709;
      
      private static const _b6d2afabbf0a463c088c5d3b:Number = 0x75233964 ^ -1589931265 ^ -864909136 ^ 0x186A233F;
      
      public function _24372ec25826d4547f4fa51e()
      {
         super();
      }
      
      public static function init(param1:Stage) : void
      {
         TooltipType.TEXT_TOOLTIP = new TooltipType(_9136d3d44d2552f930ba4709);
         TOOLTIP_LAYER.mouseEnabled = false;
         TOOLTIP_LAYER.mouseChildren = true;
         TOOLTIP_LAYER.name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刜刈勼劫剩剶勱创势剌副勻勅勢劯则刍劓刂剤剚勄剛削前刳勒勯则劅勉剌勋勔","剬劺劇加勱刱劻勵勂劃刉勂勡剷劰劉");
         _d0e780e90c9ac69f2968a9d0 = param1;
         _d0e780e90c9ac69f2968a9d0.addEventListener(MouseEvent.CLICK,_1a707af705180df7e1152437);
         _d0e780e90c9ac69f2968a9d0.addEventListener(MouseEvent.MOUSE_OUT,_49614f43fccc0e0854b415bf);
         _d0e780e90c9ac69f2968a9d0.addEventListener(MouseEvent.MOUSE_DOWN,_6b4441effca0ad0f04f64a4e);
         _d0e780e90c9ac69f2968a9d0.addEventListener(MouseEvent.MOUSE_UP,_aaab25ae11d15d43c906656d);
         _d0e780e90c9ac69f2968a9d0.addEventListener(MouseEvent.MOUSE_MOVE,_63c02fef17a14055942a5068);
         _bc98543cbc3ff873e75b9fb2 = _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200);
         _bc98543cbc3ff873e75b9fb2._475178699397df7592a9026e(_24eee33b327a90269be711a1);
      }
      
      private static function _1a707af705180df7e1152437(param1:MouseEvent) : void
      {
         _49614f43fccc0e0854b415bf(null);
      }
      
      private static function _49614f43fccc0e0854b415bf(param1:MouseEvent) : void
      {
         clearTimeout(_beb3f792846e7940f73980c9);
         GameSwf.globalDispatcher.dispatchEvent(new _69424463d30df62a2ef50dc1(_69424463d30df62a2ef50dc1.DESTROY));
         GameSwf.globalDispatcher.dispatchEvent(new _69424463d30df62a2ef50dc1(_69424463d30df62a2ef50dc1.DESTROY_INFOTIP));
         if(_543b709f7dab96d8f4a03d22 != null && _543b709f7dab96d8f4a03d22.isActive() == false)
         {
            _543b709f7dab96d8f4a03d22.deactivate();
         }
      }
      
      private static function _6b4441effca0ad0f04f64a4e(param1:MouseEvent) : void
      {
      }
      
      private static function _aaab25ae11d15d43c906656d(param1:MouseEvent) : void
      {
      }
      
      private static function _63c02fef17a14055942a5068(param1:MouseEvent) : void
      {
         var _loc2_:Object = param1.target;
         var _loc3_:int = int(param1.currentTarget.mouseX);
         var _loc4_:int = int(param1.currentTarget.mouseY);
         clearTimeout(_beb3f792846e7940f73980c9);
         GameSwf.globalDispatcher.dispatchEvent(new _69424463d30df62a2ef50dc1(_69424463d30df62a2ef50dc1.DESTROY));
         GameSwf.globalDispatcher.dispatchEvent(new _69424463d30df62a2ef50dc1(_69424463d30df62a2ef50dc1.DESTROY_INFOTIP));
         _4e7af8f52571348326f98f54(_loc2_ as DisplayObject,true);
      }
      
      private static function _4e7af8f52571348326f98f54(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc3_:Point = null;
         if(_d0192ebfc414e67488e2dbfe != param1)
         {
            if(_a0c1c82e3655d8f1d68e5ced(param1))
            {
               if(param2)
               {
                  if(param1 is _f26871dd5c0fe62ad9cfba08 == false || TransparentClickUtil.isHitOnObject(DisplayObject(param1)))
                  {
                     _927ed719ee5ac322a4adfda8(param1);
                  }
                  else if(!TransparentClickUtil.doOtherInteractiveObjects(param1 as DisplayObject,_a0c1c82e3655d8f1d68e5ced,_7f5655137e4c90b899dee2c6,_4e7af8f52571348326f98f54))
                  {
                     if(_543b709f7dab96d8f4a03d22 != null)
                     {
                        _543b709f7dab96d8f4a03d22.deactivate();
                     }
                     Sprite(param1).buttonMode = false;
                  }
               }
               else
               {
                  _927ed719ee5ac322a4adfda8(param1);
               }
            }
            else
            {
               _1f04e35aa212d94714ab1ccd();
            }
         }
         else if(param1 is IToolTipTarget)
         {
            _loc3_ = IToolTipTarget(param1).getTooltipGlobalPosition();
            if(_loc3_ == null)
            {
               _loc3_ = TOOLTIP_LAYER.globalToLocal(new Point(_d0e780e90c9ac69f2968a9d0.mouseX + _5ecf318ddec8ea1fa7143706,_d0e780e90c9ac69f2968a9d0.mouseY + _b6d2afabbf0a463c088c5d3b));
               _5bc7ba012a74b4b16dd0f838(_543b709f7dab96d8f4a03d22,_loc3_);
            }
         }
      }
      
      private static function _927ed719ee5ac322a4adfda8(param1:DisplayObject) : void
      {
         var _loc2_:IToolTipTarget = null;
         var _loc3_:_0a5c00b209e7e219b78f41d6 = null;
         var _loc4_:Point = null;
         if(_d0192ebfc414e67488e2dbfe != param1)
         {
            _loc2_ = IToolTipTarget(param1);
            if(_loc2_.getTooltipType() != null)
            {
               _loc3_ = _4be609b5c948cdc0a966bd12(_loc2_.getTooltipType());
               _a17d20ee07dad8bb8e1bb109(_loc3_,_loc2_);
               _loc3_.config(_loc2_.getTooltipConfig());
               _loc4_ = _loc2_.getTooltipGlobalPosition();
               if(_loc4_ == null)
               {
                  _loc4_ = TOOLTIP_LAYER.globalToLocal(new Point(_d0e780e90c9ac69f2968a9d0.mouseX + _5ecf318ddec8ea1fa7143706,_d0e780e90c9ac69f2968a9d0.mouseY + _b6d2afabbf0a463c088c5d3b));
               }
               else
               {
                  _loc4_ = TOOLTIP_LAYER.globalToLocal(_loc4_);
               }
               _5bc7ba012a74b4b16dd0f838(_loc3_,_loc4_);
            }
         }
      }
      
      private static function _5bc7ba012a74b4b16dd0f838(param1:_0a5c00b209e7e219b78f41d6, param2:Point) : void
      {
         param1.x = param2.x + (-2016832235 ^ 0x2888EA14 ^ 0x7918D0A4 ^ -698765401);
         param1.y = param2.y;
         var _loc3_:int = Sprite(param1) != null ? int(Sprite(param1).height + (-1785541377 ^ 0x2EC13717 ^ 0x78B5803B ^ -1008305199)) : 0x6D4DBA86 ^ -1007081764 ^ 0x7942799F ^ -671685179;
         var _loc4_:int = Sprite(param1) != null ? int(Sprite(param1).width + (0x1D4AF985 ^ -1264438605 ^ -209104330 ^ 0x5A619902)) : 0x24EA24B8 ^ -1893332445 ^ 0x063DCA6A ^ -1376656143;
         if(param2.y > Config.SCREEN_HEIGHT - _loc3_)
         {
            param1.y = Config.SCREEN_HEIGHT - _loc3_;
            param1.x = param2.x + (0x0AECE295 ^ 0x5F07BD7B ^ -1693912065 ^ -823940074);
         }
         if(param2.x > Config.SCREEN_WIDTH - _loc4_)
         {
            param1.x = param2.x - _loc4_ - (-961035287 ^ 0x4B83F63F ^ -969825695 ^ 0x4B0597BB);
         }
      }
      
      public static function _1f04e35aa212d94714ab1ccd() : void
      {
         var _loc1_:int = -1910273980 ^ 0x3B6C130E ^ -290781088 ^ 0x5D7C60FF;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-107335524 ^ -1536385869 ^ -725412543 ^ -1884468549))
            {
               case 0:
                  if(_543b709f7dab96d8f4a03d22 != null)
                  {
                     _loc1_ = 0x1C940F36 ^ -640054307 ^ -1628870943 ^ 0x5D3C11DD;
                  }
                  else
                  {
                     _loc1_ = -1162656018 ^ -978693252 ^ 0x69FF1D2B ^ 0x107EFB6D;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  _543b709f7dab96d8f4a03d22.deactivate();
                  _loc1_ = -819221693 ^ 0x7B2D9397 ^ -1562014462 ^ 0x107B4602;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private static function _a0c1c82e3655d8f1d68e5ced(param1:DisplayObject) : Boolean
      {
         return param1 is IToolTipTarget;
      }
      
      private static function _7f5655137e4c90b899dee2c6(param1:DisplayObject) : Boolean
      {
         return param1 == _543b709f7dab96d8f4a03d22;
      }
      
      private static function _4be609b5c948cdc0a966bd12(param1:TooltipType) : _0a5c00b209e7e219b78f41d6
      {
         var _loc2_:int = 0x5561A733 ^ -347880727 ^ -40056402 ^ -735214831;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-2102483657 ^ 0x301B524D ^ 0x7240DB81 ^ 0x5766039E))
            {
               case 0:
                  if(_7f90655189b43a8809de189e[param1] == null)
                  {
                     _loc2_ = -1290388150 ^ 0x5842CD6E ^ 0x1628FFC1 ^ 0x6AEF2082;
                  }
                  else
                  {
                     _loc2_ = -1177982778 ^ -16099414 ^ 0x2A233A49 ^ -76338623;
                  }
                  break;
               case 1:
                  return _7f90655189b43a8809de189e[param1];
               case 2:
                  _7f90655189b43a8809de189e[param1] = new param1.tooltipClass();
                  _loc2_ = -59115894 ^ -2104970933 ^ -1729489355 ^ 0x71887E90;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private static function _a17d20ee07dad8bb8e1bb109(param1:_0a5c00b209e7e219b78f41d6, param2:Object) : void
      {
         var _loc3_:int = -855967438 ^ 0x06EAEFA9 ^ -736392777 ^ -560417763;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x2E4ED94D ^ 0x1BAE9AC3 ^ 0x3668ED65 ^ -1021606434))
            {
               case 0:
                  _078f41136ab0efcf4cfd2e3c(_543b709f7dab96d8f4a03d22);
                  _loc3_ = -1214104913 ^ -642294150 ^ 0x6467AA62 ^ -891165311;
                  break;
               case 1:
                  return;
               case 2:
                  if(_543b709f7dab96d8f4a03d22 != null)
                  {
                     _loc3_ = -1091444212 ^ -238791776 ^ -1130909368 ^ 0x33312BD1;
                  }
                  else
                  {
                     _loc3_ = 0x07D87519 ^ 0x4EDBBB29 ^ -229241619 ^ 0x7BC6E9EB;
                  }
                  break;
               case 3:
                  _cdee8c191d65b52d72186678 = getTimer();
                  _543b709f7dab96d8f4a03d22 = param1;
                  _d0192ebfc414e67488e2dbfe = param2;
                  _loc3_ = -1674144993 ^ -1124806795 ^ -1949246334 ^ 0x6B81ABDC;
                  break;
               case 4:
                  if(_d0192ebfc414e67488e2dbfe != param2)
                  {
                     _loc3_ = -537255774 ^ 0x6C847E03 ^ -1729064371 ^ -350361637;
                  }
                  else
                  {
                     _loc3_ = 0x68B92270 ^ 0x7E1C0276 ^ 0x0E9CF9A6 ^ -659885420;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private static function _24eee33b327a90269be711a1(param1:uint, param2:uint) : void
      {
         var _loc3_:int = -1850069833 ^ -363891622 ^ 0x1C883AEC ^ 0x69E9AB1C;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x116D31FC ^ -1424107125 ^ -545495977 ^ 0x6B98453D))
            {
               case 0:
                  if(_bc98543cbc3ff873e75b9fb2.currentCount % (0x5065695B ^ 0x69710579 ^ -223806911 ^ -876833183) == (-875510893 ^ 0x34D4A470 ^ 0x58EA2BEB ^ -1477555192))
                  {
                     _loc3_ = 0x6AAF8D87 ^ -1660221201 ^ 0x708D2DF0 ^ -1984077434;
                  }
                  else
                  {
                     _loc3_ = -14338052 ^ -887755479 ^ -1836213940 ^ -1473672575;
                  }
                  break;
               case 1:
                  if(_543b709f7dab96d8f4a03d22.isActive())
                  {
                     _loc3_ = 0x0C9025EB ^ -1164753924 ^ 0x0C3E617A ^ -1263939980;
                  }
                  else
                  {
                     _loc3_ = -821229405 ^ 0x06BFAEEC ^ -1194755239 ^ 0x7FEF140E;
                  }
                  break;
               case 2:
                  _543b709f7dab96d8f4a03d22.config(_d0192ebfc414e67488e2dbfe.getTooltipConfig());
                  _loc3_ = 0x308737FD ^ 0x127BE9C1 ^ 0x7101A603 ^ 0x5D69B123;
                  break;
               case 3:
                  if(_543b709f7dab96d8f4a03d22 != null)
                  {
                     _loc3_ = -857273450 ^ -2086038325 ^ 0x56CB009F ^ 0x171156D9;
                  }
                  else
                  {
                     _loc3_ = -730614348 ^ -1391124971 ^ -1558376156 ^ -722504803;
                  }
                  break;
               case 4:
                  _543b709f7dab96d8f4a03d22.update();
                  _loc3_ = 0x09038FC4 ^ -168108033 ^ 0x444929A9 ^ -1239109494;
                  break;
               case 5:
                  _c6ecc9ad22d7fcdc2ef9140e();
                  return;
               case 6:
                  if(_543b709f7dab96d8f4a03d22 is _017c9b323d206c0aa9e553ac)
                  {
                     _loc3_ = 0x01ED9EB1 ^ 0x4EBD3F7E ^ 0x32EAEB3A ^ 0x732E83EA;
                  }
                  else
                  {
                     _loc3_ = -1969098768 ^ -283551538 ^ 0x30537113 ^ 0x5B7F0F31;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function _078f41136ab0efcf4cfd2e3c(param1:_0a5c00b209e7e219b78f41d6) : void
      {
         var _loc2_:int = -1048852107 ^ -1288117281 ^ -719085778 ^ -524581605;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1156810443 ^ -896101035 ^ 0x5336DEA3 ^ 0x6577025E))
            {
               case 0:
                  _d0192ebfc414e67488e2dbfe = null;
                  _543b709f7dab96d8f4a03d22 = null;
                  _cdee8c191d65b52d72186678 = int.MAX_VALUE;
                  _loc2_ = -1779650602 ^ -138766438 ^ -364579359 ^ -808846029;
                  break;
               case 1:
                  DisplayObject(param1).parent.removeChild(DisplayObject(param1));
                  _loc2_ = -36534004 ^ 0x57151BE5 ^ 0x3FE065A8 ^ -755185704;
                  break;
               case 2:
                  if(DisplayObject(param1).parent != null)
                  {
                     _loc2_ = 0x157344C2 ^ -540189331 ^ -1017577335 ^ 0x4E3C29BA;
                  }
                  else
                  {
                     _loc2_ = 0x56BFD13A ^ 0x0BFC53B5 ^ 0x1FE898CD ^ 0x05702ADB;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  if(_543b709f7dab96d8f4a03d22 == param1)
                  {
                     _loc2_ = -1975942415 ^ -1665739918 ^ 0x17BDB7F7 ^ 0x46E9D6E9;
                  }
                  else
                  {
                     _loc2_ = 0x3E894ADC ^ 0x68B2498B ^ 0x104A0AEA ^ 0x01AA3923;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private static function _c6ecc9ad22d7fcdc2ef9140e() : void
      {
         var _loc1_:int = 0x3D381CEA ^ -2144222002 ^ -2061192062 ^ -1196543663;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x650C7D86 ^ 0x63022F60 ^ -1155017562 ^ 0x3DAADBB6))
            {
               case 0:
                  _cdee8c191d65b52d72186678 = int.MAX_VALUE;
                  if(_543b709f7dab96d8f4a03d22 != null)
                  {
                     _loc1_ = 0x77BF54BA ^ 0x6A6F773C ^ -290362377 ^ 0x73E21584;
                  }
                  else
                  {
                     _loc1_ = 0x6A6B235A ^ -1912745304 ^ -828011183 ^ -1448074921;
                  }
                  break;
               case 1:
                  if(getTimer() - _cdee8c191d65b52d72186678 > _e0315c827381c18ed897cbaf)
                  {
                     _loc1_ = -2000622263 ^ -520649853 ^ 0x24D7766B ^ -865909417;
                  }
                  else
                  {
                     _loc1_ = 0x4BF0FCC4 ^ -89949507 ^ -1924383542 ^ -1130567865;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  _543b709f7dab96d8f4a03d22.activate();
                  TOOLTIP_LAYER.addChild(DisplayObject(_543b709f7dab96d8f4a03d22));
                  _loc1_ = 0x4011E02E ^ -1720744284 ^ 0x65A1DD66 ^ 0x3C5CE618;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

