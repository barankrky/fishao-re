package com.ax3.display.buttons
{
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class StandardBitmapButton extends ButtonSprite implements IToolTipTarget
   {
      
      public static var globalOverCallback:Function;
      
      public static var globalClickCallback:Function;
      
      public var tooltipConfig:Object;
      
      protected var _state:ButtonState = ButtonState.DEFAULT;
      
      protected var _labelField:TextField;
      
      public function StandardBitmapButton(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         super();
         if(param1 != null)
         {
            this.init(param1,param2);
         }
      }
      
      override public function init(param1:StandardBitmapButtonConfiguration, param2:Function) : void
      {
         var _loc3_:int = 0x149D6FFA ^ 0x7F927588 ^ -883057682 ^ -260183502;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-933198898 ^ 0x7DCC2D83 ^ 0x0C10C597 ^ -376242064))
            {
               case 0:
                  if(!isNaN(param1.y))
                  {
                     _loc3_ = -784420635 ^ 0x180FD411 ^ 0x2ABB8061 ^ -1280995530;
                  }
                  else
                  {
                     _loc3_ = -544428843 ^ -2136858167 ^ -836911010 ^ -1055119638;
                  }
                  break;
               case 1:
                  _handler = param2;
                  addEventListener(MouseEvent.CLICK,this.onClick,false,-198056505 ^ -679786650 ^ 0x387BBC9B ^ 0x1B311E3A,true);
                  addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown,false,0x2BDA704A ^ -900961437 ^ -833995397 ^ 0x2FDC2652,true);
                  addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp,false,0x43A7B47E ^ -375882927 ^ 0x5B3903A8 ^ -251212665,true);
                  addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove,false,-122273962 ^ -1101035650 ^ 0x6E105D0F ^ 0x28F9E527,true);
                  addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver,false,-508257438 ^ -18614051 ^ -1934617702 ^ -1813549019,true);
                  addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut,false,-938351463 ^ -386210354 ^ 0x5123DB84 ^ 0x71C8DAD3,true);
                  return;
               case 2:
                  if(param1.labelField != null)
                  {
                     _loc3_ = -919096030 ^ 0x1A1CAEFF ^ -114373215 ^ 0x7A2ABDD3;
                  }
                  else
                  {
                     _loc3_ = -920039144 ^ -60770236 ^ -1857822654 ^ -198876491;
                  }
                  break;
               case 3:
                  if(!isNaN(param1.x))
                  {
                     _loc3_ = -1634832356 ^ 0x187FE101 ^ -765446278 ^ 0x04BECDCA;
                  }
                  else
                  {
                     _loc3_ = -334932290 ^ 0x7EC9F4E7 ^ -72012175 ^ 0x395AE782;
                  }
                  break;
               case 4:
                  super.init(param1,param2);
                  if(param1.asset != null)
                  {
                     _loc3_ = -251922689 ^ -813978611 ^ 0x257C130B ^ 0x4AD32255;
                  }
                  else
                  {
                     _loc3_ = -1101669270 ^ 0x79E123A4 ^ -2014015425 ^ 0x106F0458;
                  }
                  break;
               case 5:
                  this._labelField = param1.labelField;
                  if(param1.labelField.parent == null)
                  {
                     _loc3_ = -889922508 ^ 0x6C187078 ^ -573854653 ^ 0x2B086BAD;
                  }
                  else
                  {
                     _loc3_ = 0x642A880E ^ -709002578 ^ 0x24428A68 ^ -973466781;
                  }
                  break;
               case 6:
                  addChild(param1.asset);
                  _loc3_ = -1328885068 ^ -246432626 ^ -15480914 ^ -289816003;
                  break;
               case 7:
                  x = param1.x;
                  _loc3_ = 0x51DC7D55 ^ 0x58871889 ^ 0x7878070A ^ 0x210C097C;
                  break;
               case 8:
                  addChild(this._labelField);
                  _loc3_ = -45639708 ^ 0x66D31795 ^ -1979218046 ^ 0x41BC6C58;
                  break;
               case 9:
                  y = param1.y;
                  _loc3_ = -1608462718 ^ -1157719672 ^ 0x2C84C4C2 ^ 0x6675F860;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         if(this._state != ButtonState.DISABLED && this._state != ButtonState.DOWN)
         {
            this.state = ButtonState.OVER;
            this.updateGivenState();
         }
      }
      
      protected function onMouseUp(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x28B8E1A1 ^ -1424935645 ^ 0x1390D69A ^ -1323152170;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-79512102 ^ -1036532563 ^ -1693042107 ^ -2089284100))
            {
               case 0:
                  if(this._state != ButtonState.DISABLED)
                  {
                     _loc2_ = 0x6B02CCE1 ^ -1670827709 ^ -2135278376 ^ 0x56CA8FB6;
                  }
                  else
                  {
                     _loc2_ = 0x7C19F457 ^ 0x13A09316 ^ 0x46019AC4 ^ 0x08A3B34A;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._state = ButtonState.OVER;
                  this.updateGivenState();
                  _loc2_ = -1016947822 ^ -1288407981 ^ 0x5120FBEF ^ 0x6D5AE1;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set label(param1:String) : void
      {
         var _loc2_:int = 0x50608EB9 ^ 0x5A9EE4E3 ^ 0x6384B15B ^ 0x04E5F457;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1762179376 ^ 0x20D4B65C ^ -911163328 ^ 0x120C1F9A))
            {
               case 0:
                  if(this._labelField != null)
                  {
                     _loc2_ = 0x041E7104 ^ 0x141901FC ^ 0x341CC29E ^ 0x49849D31;
                  }
                  else
                  {
                     _loc2_ = -37545423 ^ -669199800 ^ 0x3F5AAD80 ^ 0x771A4AAD;
                  }
                  break;
               case 1:
                  this._labelField.text = param1;
                  _loc2_ = 0x1889D090 ^ -2001030388 ^ -551319394 ^ 0x228FC456;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get label() : String
      {
         var _loc1_:int = 0x4CF4E6CD ^ -1162659070 ^ 0x7AE4E30C ^ -736819340;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4DEE17D2 ^ 0x4C1E7D46 ^ 0x49A69CC1 ^ 0x10E0CFE0))
            {
               case 0:
                  return "";
               case 1:
                  return this._labelField.text;
               case 2:
                  if(this._labelField != null)
                  {
                     _loc1_ = -1784834554 ^ -2008443496 ^ -1409297473 ^ -291640939;
                  }
                  else
                  {
                     _loc1_ = 0x74E25C25 ^ -1594805470 ^ -912285235 ^ 0x453AF77F;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set state(param1:ButtonState) : void
      {
         var _loc2_:int = -592080903 ^ -1199766060 ^ 0x53EB9F6C ^ 0x3D18BB9E;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x52AFFB07 ^ -31635735 ^ 0x030DFD80 ^ -1518014795))
            {
               case 0:
                  this._state = param1;
                  if(this._state == ButtonState.OVER)
                  {
                     _loc2_ = 0x08E38E96 ^ 0x5869C311 ^ -742860519 ^ -1995883962;
                  }
                  else
                  {
                     _loc2_ = 0x6AC8009B ^ 0x3115E13F ^ -1766642594 ^ -950705376;
                  }
                  break;
               case 1:
                  if(this._state == ButtonState.DOWN)
                  {
                     _loc2_ = -2087530060 ^ -1383278455 ^ -1799580176 ^ -1332137453;
                  }
                  else
                  {
                     _loc2_ = 0x4FC32B4F ^ -1754154431 ^ 0x14C14330 ^ -968327965;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  this.playOverSound();
                  _loc2_ = -1595717415 ^ 0x3B1E626D ^ -1065884313 ^ 0x51B16109;
                  break;
               case 4:
                  if(this._state != param1)
                  {
                     _loc2_ = -381627521 ^ -1226164132 ^ -96663544 ^ -1347662352;
                  }
                  else
                  {
                     _loc2_ = 0x38C024F5 ^ -1580847977 ^ -1016029401 ^ 0x504D399C;
                  }
                  break;
               case 5:
                  this.playClickSound();
                  _loc2_ = 0x42AD27CB ^ -145345818 ^ -1680875843 ^ 0x240F654D;
                  break;
               case 6:
                  this.updateGivenState();
                  _loc2_ = -2130167314 ^ -1533080507 ^ 0x5F839A71 ^ 0x702F0103;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function playOverSound() : void
      {
         var _loc1_:int = -1707547676 ^ 0x47265EC2 ^ 0x3AE577D7 ^ 0x170AC615;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x25A365C3 ^ -1345261057 ^ -1233901281 ^ -856247866))
            {
               case 0:
                  globalOverCallback();
                  _loc1_ = 0x4D6AE4A1 ^ -1680248609 ^ -703171101 ^ -262869638;
                  break;
               case 1:
                  if(globalOverCallback != null)
                  {
                     _loc1_ = 0x6095C36A ^ 0x5B04832A ^ 0x26C0B583 ^ -308217562;
                  }
                  else
                  {
                     _loc1_ = 0x549007A3 ^ -174028546 ^ 0x0310870B ^ 0x52D104B1;
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
      
      protected function playClickSound() : void
      {
         var _loc1_:int = 0x7C5A72F1 ^ -1183729875 ^ -63871051 ^ -608678946;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4FACB977 ^ 0x10F984EB ^ 0x663A2312 ^ -607258823))
            {
               case 0:
                  if(globalClickCallback != null)
                  {
                     _loc1_ = 0x0BDD1BEE ^ -110092799 ^ 0x2212C4FA ^ 0x321D28A3;
                  }
                  else
                  {
                     _loc1_ = -1101991390 ^ -631684501 ^ 0x2D4734AD ^ -1410568879;
                  }
                  break;
               case 1:
                  globalClickCallback();
                  _loc1_ = -1818762730 ^ -2060616818 ^ -824615162 ^ 0x3AC12F2B;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function onMouseOver(param1:MouseEvent) : void
      {
         var _loc2_:int = -402212888 ^ 0x68C59751 ^ -545781407 ^ 0x7FFEAECA;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x45DF74DF ^ -693106201 ^ -1387205360 ^ 0x1E7A173B))
            {
               case 0:
                  this.state = ButtonState.OVER;
                  _loc2_ = 0x06D31C2E ^ 0x7CBEE151 ^ -1882902083 ^ -705868845;
                  break;
               case 1:
                  if(this._state != ButtonState.DISABLED)
                  {
                     _loc2_ = 0x513D4818 ^ -2126831893 ^ -769257194 ^ 0x2265C0F6;
                  }
                  else
                  {
                     _loc2_ = -255339184 ^ 0x51AEE9EF ^ -1412863266 ^ 0x2AE5D170;
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
      
      protected function onMouseOut(param1:MouseEvent) : void
      {
         var _loc2_:int = -1303194146 ^ -1619354348 ^ -1475142613 ^ -1026008118;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x7FAFE9B0 ^ -1316847077 ^ -997672640 ^ 0x4D46DDC2))
            {
               case 0:
                  return;
               case 1:
                  this.state = ButtonState.NORMAL;
                  _loc2_ = -1396478684 ^ -1188766595 ^ 0x1740F84F ^ 0x4544463F;
                  break;
               case 2:
                  if(this._state != ButtonState.DISABLED)
                  {
                     _loc2_ = -998515007 ^ -1823045717 ^ 0x537DD242 ^ 0x43B38400;
                  }
                  else
                  {
                     _loc2_ = -456676575 ^ 0x17639EE9 ^ 0x7602EC34 ^ -1035610411;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function onMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x27CDCEBF ^ 0x1E5670A3 ^ -1482421839 ^ -313249363;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5F3AF30B ^ 0x5BD1CB29 ^ 0x1D59C6DF ^ 0x6AD978FC))
            {
               case 0:
                  this.state = ButtonState.DOWN;
                  _loc2_ = 0x3383FC06 ^ 0x1D0C9F70 ^ 0x729CB833 ^ 0x2F785D46;
                  break;
               case 1:
                  if(this._state != ButtonState.DISABLED)
                  {
                     _loc2_ = 0x446BFDE8 ^ 0x47C077CA ^ 0x22A7CCC6 ^ 0x5267C0E5;
                  }
                  else
                  {
                     _loc2_ = 0x36A31DD7 ^ -1853874553 ^ -1220340917 ^ 0x630B9618;
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
      
      protected function onClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x5C7B3DE4 ^ 0x214C67B0 ^ -349690986 ^ 0x3A4794F6;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1483450430 ^ -1500677178 ^ -1292618959 ^ 0x1FB5F201))
            {
               case 0:
                  if(this.enabled)
                  {
                     _loc2_ = -440095603 ^ 0x358AF121 ^ -1721199366 ^ -444717978;
                  }
                  else
                  {
                     _loc2_ = -1443866421 ^ 0x2E472E27 ^ -2024473658 ^ -1397006305;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  param1.stopPropagation();
                  _loc2_ = -35051471 ^ 0x75F05013 ^ -1423629704 ^ -1889224849;
                  break;
               case 3:
                  _handler(param1);
                  _loc2_ = -1950032197 ^ -1892688075 ^ 0x38732409 ^ -1866413902;
                  break;
               case 4:
                  if(_handler != null)
                  {
                     _loc2_ = -497540589 ^ 0x6D336E37 ^ -1958329566 ^ -1468669391;
                  }
                  else
                  {
                     _loc2_ = 0x6DA86272 ^ -893575516 ^ 0x5209DF32 ^ 0x59444ED2;
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
         var _loc1_:int = 0x35B3B7F3 ^ -803356494 ^ -281062510 ^ -1992973219;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1767024563 ^ -1759397817 ^ 0x4B9065A6 ^ -910686944))
            {
               case 0:
                  this.state = ButtonState.NORMAL;
                  _loc1_ = 0x419A4BC8 ^ 0x63BFAD84 ^ 0x71BEFC6A ^ -801138005;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._state == ButtonState.DISABLED)
                  {
                     _loc1_ = -1106294424 ^ 0x29287614 ^ 0x2A940764 ^ 0x3E17B894;
                  }
                  else
                  {
                     _loc1_ = 0x7C317A51 ^ -1213154368 ^ -1546029355 ^ -335792183;
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
         this.state = ButtonState.DISABLED;
      }
      
      protected function updateGivenState() : void
      {
         var _loc1_:int = -1245301903 ^ 0x4741FE46 ^ 0x2C7F3EF3 ^ 0x4FA833C8;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1941893444 ^ 0x1EC9D738 ^ 0xB950E7 ^ 0x0361496F))
            {
               case 0:
                  if(this._state == ButtonState.DISABLED)
                  {
                     _loc1_ = -118136681 ^ -734547421 ^ -1970858941 ^ 0x371506F8;
                  }
                  else
                  {
                     _loc1_ = 0x4F65B664 ^ 0x43964A6D ^ -560804692 ^ 0x4331F0A8;
                  }
                  break;
               case 1:
                  useHandCursor = true;
                  _loc1_ = 0x235A50B8 ^ -242051809 ^ -1831265415 ^ -784261424;
                  break;
               case 2:
                  return;
               case 3:
                  useHandCursor = false;
                  _loc1_ = -2030072407 ^ -205682664 ^ 0x757864BD ^ -1855282942;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get enabled() : Boolean
      {
         return this._state != ButtonState.DISABLED;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:int = 0x08A41F08 ^ -282725407 ^ 0x5BFFA4C0 ^ -276583576;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-291055379 ^ -888666990 ^ -28212502 ^ -2013086250))
            {
               case 0:
                  return;
               case 1:
                  this.enable();
                  _loc2_ = 0x516944FD ^ -1292469380 ^ -175397040 ^ 0x45E97B92;
                  break;
               case 2:
                  if(param1)
                  {
                     _loc2_ = -827750041 ^ -1094011770 ^ -1276766807 ^ -1871131894;
                  }
                  else
                  {
                     _loc2_ = -1729933972 ^ -800940497 ^ 0x4241F54F ^ 0x591DC54C;
                  }
                  break;
               case 3:
                  this.disable();
                  _loc2_ = -1145753378 ^ 0x04A88123 ^ 0x71E640EC ^ -1660546478;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set handler(param1:Function) : void
      {
         _handler = param1;
      }
      
      public function get handler() : Function
      {
         return _handler;
      }
      
      public function getTooltipType() : TooltipType
      {
         var _loc1_:int = -1055542947 ^ 0x4C80A31F ^ 0x587F7663 ^ 0x496C1B28;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1402410833 ^ 0x02321B6A ^ -1855105413 ^ -1548625225))
            {
               case 0:
                  if(this.tooltipConfig != null)
                  {
                     _loc1_ = -1775901402 ^ 0x30C64624 ^ -1595441590 ^ -1702714813;
                  }
                  else
                  {
                     _loc1_ = 0x0BBF1FCB ^ -1185797494 ^ -145884276 ^ -651775547;
                  }
                  break;
               case 1:
                  return null;
               case 2:
                  return TooltipType.TEXT_TOOLTIP;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         return this.tooltipConfig;
      }
   }
}

