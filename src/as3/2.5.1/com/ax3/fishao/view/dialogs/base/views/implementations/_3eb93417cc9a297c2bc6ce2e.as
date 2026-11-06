package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import com.ax3.fishao.control.managers.GlobalSoundHandlers;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class _3eb93417cc9a297c2bc6ce2e extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _b1fd38118dcc564f9dec6c9d:Boolean;
      
      private var _aa5af04f80d2458b0187a011:Boolean;
      
      private var _6fcc3bdfed51c6a7d1de71cd:MovieClip;
      
      private var _3310ebb48d467c623aafe832:Boolean;
      
      public function _3eb93417cc9a297c2bc6ce2e(param1:_988093efdfa36e13bfd6c6cf, param2:MovieClip)
      {
         super(param1,param2);
         this._6fcc3bdfed51c6a7d1de71cd = param2;
         Debug.assertEqual(param2.totalFrames,-1657139744 ^ 0x421DC736 ^ -587150038 ^ 0x022707FE);
         this.init();
      }
      
      public function set autocheck(param1:Boolean) : void
      {
         var _loc2_:int = 0x175DA20C ^ -1837756735 ^ 0x6FC16C88 ^ -609937555;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x4B0A0217 ^ -439211663 ^ 0x2010D10B ^ -1081660091))
            {
               case 0:
                  if(this._3310ebb48d467c623aafe832 == param1)
                  {
                     _loc2_ = 0x7CBD262A ^ -583956150 ^ -298729876 ^ 0x7EF2C625;
                  }
                  else
                  {
                     _loc2_ = 0x2309834F ^ 0x500ABAB4 ^ -1766274083 ^ -722197236;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._3310ebb48d467c623aafe832 = param1;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get isChecked() : Boolean
      {
         return this._b1fd38118dcc564f9dec6c9d;
      }
      
      public function set isChecked(param1:Boolean) : void
      {
         var _loc2_:int = -466693713 ^ 0x31350690 ^ -825760729 ^ -904019087;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x59C9BDE2 ^ 0x03058972 ^ -393976652 ^ 0x6389A04E))
            {
               case 0:
                  this._7cd429e1d6ab6286b41f97ff();
                  _loc2_ = 0x20738DC3 ^ -1400546749 ^ -545616170 ^ -2108839624;
                  break;
               case 1:
                  return;
               case 2:
                  this._b1fd38118dcc564f9dec6c9d = param1;
                  if(this._b1fd38118dcc564f9dec6c9d)
                  {
                     _loc2_ = 0x4BB3E25F ^ 0x46026222 ^ -252724135 ^ 0x2C9FCC4B;
                  }
                  else
                  {
                     _loc2_ = -1304958685 ^ -82566821 ^ 0x7B2654F1 ^ -473666333;
                  }
                  break;
               case 3:
                  if(this._b1fd38118dcc564f9dec6c9d == param1)
                  {
                     _loc2_ = 0x750B1FB3 ^ 0x03597621 ^ 0x51DF422D ^ -162735148;
                  }
                  else
                  {
                     _loc2_ = 0x62F699FD ^ -1798310855 ^ -969848089 ^ -506865845;
                  }
                  break;
               case 4:
                  return;
               case 5:
                  this.select();
                  _loc2_ = -1324498 ^ 0x1F5D3686 ^ 0x268FD279 ^ 0x17F8DEBF;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this.isChecked = true;
         this._6fcc3bdfed51c6a7d1de71cd.buttonMode = true;
         this._fc17178734ae7cc816dbcc2f(true,false,true,true,true);
      }
      
      private function select() : void
      {
         this._6fcc3bdfed51c6a7d1de71cd.gotoAndStop(0x371643BB ^ 0x2917C013 ^ -906315432 ^ -671401231);
      }
      
      private function _7cd429e1d6ab6286b41f97ff() : void
      {
         this._6fcc3bdfed51c6a7d1de71cd.gotoAndStop(0x10234E90 ^ -2103888425 ^ -800264815 ^ 0x42F696D4);
      }
      
      override protected function onMouseClick(param1:MouseEvent) : void
      {
         var _loc2_:int = -1843007207 ^ -1383397296 ^ -1991128598 ^ 0x55259A90;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x4CA50EE4 ^ -490897187 ^ -1807003589 ^ -645303247))
            {
               case 0:
                  if(this._3310ebb48d467c623aafe832)
                  {
                     _loc2_ = 0x091D43EA ^ -1049144996 ^ 0x421CCAF2 ^ 0x69AC7275;
                  }
                  else
                  {
                     _loc2_ = 0x285CFEDD ^ -571637778 ^ 0x05C88651 ^ 0x13A3AD50;
                  }
                  break;
               case 1:
                  GlobalSoundHandlers.globalSelectItemCallback();
                  super.onMouseClick(param1);
                  return;
               case 2:
                  this.isChecked = !this.isChecked;
                  _loc2_ = -1276262318 ^ 0x439A32D1 ^ 0x3089B002 ^ 0x2324E0B3;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _2bb53dca69617f99b0fccaf1(param1:MouseEvent) : void
      {
         if(this._aa5af04f80d2458b0187a011 && this._3310ebb48d467c623aafe832)
         {
            this.isChecked = !this.isChecked;
         }
         this._aa5af04f80d2458b0187a011 = false;
         super._2bb53dca69617f99b0fccaf1(param1);
      }
      
      override protected function _e65cc29e97245b3be974acda(param1:Event) : void
      {
         var _loc2_:int = -1137840970 ^ -740564333 ^ 0x085804BB ^ -607462847;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-112410202 ^ 0x02117FFE ^ 0x6A75D9EB ^ 0x2D4CB76D))
            {
               case 0:
                  this.select();
                  _loc2_ = -125538999 ^ -769136082 ^ -235574042 ^ 0x67323B5B;
                  break;
               case 1:
                  this._aa5af04f80d2458b0187a011 = false;
                  if(this._3310ebb48d467c623aafe832)
                  {
                     _loc2_ = 0x3B556E84 ^ 0x2F5B7D50 ^ -118192439 ^ 0x509E45C0;
                  }
                  else
                  {
                     _loc2_ = 0x54A06A8C ^ 0x067ABF01 ^ 0x229AB8CF ^ -870007400;
                  }
                  break;
               case 2:
                  this._7cd429e1d6ab6286b41f97ff();
                  _loc2_ = -45113812 ^ 0x54ECEDE0 ^ 0x4BB04315 ^ 0x5E77E003;
                  break;
               case 3:
                  if(this._b1fd38118dcc564f9dec6c9d)
                  {
                     _loc2_ = 0x33324C3B ^ 0x31C0D7CB ^ 0x28C745C1 ^ -1773072657;
                  }
                  else
                  {
                     _loc2_ = 0x2A60D16C ^ 0x2D0B2A73 ^ 0x30907F88 ^ -1952492469;
                  }
                  break;
               case 4:
                  super._e65cc29e97245b3be974acda(param1);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = -1279956005 ^ 0x4B74A1D5 ^ 0x6E8C9683 ^ -1386699476;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-350748115 ^ 0x07B5047B ^ 0x3C28C56F ^ -342869349))
            {
               case 0:
                  if(!this._b1fd38118dcc564f9dec6c9d)
                  {
                     _loc2_ = -1496087548 ^ -482826842 ^ -1188659342 ^ -942102672;
                  }
                  else
                  {
                     _loc2_ = 0x313BE1AD ^ -1686553782 ^ 0x6565A756 ^ -198015982;
                  }
                  break;
               case 1:
                  this._7cd429e1d6ab6286b41f97ff();
                  _loc2_ = 0x2236D85F ^ 0x767E0FE3 ^ 0x768828F6 ^ 0x19D506EC;
                  break;
               case 2:
                  this.select();
                  _loc2_ = 0x5EFC7E7E ^ 0x7E2888EC ^ 0x79B5CFEF ^ 0x6274C0DB;
                  break;
               case 3:
                  this._aa5af04f80d2458b0187a011 = true;
                  if(this._3310ebb48d467c623aafe832)
                  {
                     _loc2_ = 0x7CA2DCA6 ^ -1016318011 ^ -1551410757 ^ 0x275C4B7A;
                  }
                  else
                  {
                     _loc2_ = 0x11C543F7 ^ -1413006200 ^ -1853806474 ^ 0x1096AEAF;
                  }
                  break;
               case 4:
                  super.onMouseDown(param1);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

