package com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls._ea110e9d25f7ed39a8858c24;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class _bdbf5ff4e1b06b31215378bb extends EventDispatcher implements _9d52e3cc8c94daeb6473a020
   {
      
      private var _8f120215faffbd48a7b3754a:TextField;
      
      private var _889a5a1a55880a830b0bcc5d:FrameButtonWrapper;
      
      private var _316c5863a9595aae27427ec4:FrameButtonWrapper;
      
      private var _542ad27675d9b7ea5a0ffc98:Number;
      
      private var _ea37cb4623c99851b9277d63:Number;
      
      private const _01180ae3a8a602a5c36fd9f2:int = 5;
      
      private var _d66ccf5a53225575554bb5a5:String = null;
      
      public function _bdbf5ff4e1b06b31215378bb(param1:TextField, param2:FrameButtonWrapper, param3:FrameButtonWrapper, param4:String = null)
      {
         super();
         this._8f120215faffbd48a7b3754a = param1;
         this._889a5a1a55880a830b0bcc5d = param3;
         this._316c5863a9595aae27427ec4 = param2;
         this._889a5a1a55880a830b0bcc5d.handler = this._463600ab3e11482253bb400e;
         this._316c5863a9595aae27427ec4.handler = this._cb846480dabc032afb49399c;
         this._d66ccf5a53225575554bb5a5 = param4;
         addEventListener(_ea110e9d25f7ed39a8858c24.CHANGE_CONTROL_POSITION,this._6d769624bf3e24a060591ef9);
         this._ea37cb4623c99851b9277d63 = 0x46BC86D1 ^ 0x07086EEA ^ -1055568793 ^ -2136890276;
         this.currentPage = 0xEEEEEF ^ 0x7E2FA7D0 ^ 0x74A01160 ^ -174151776;
      }
      
      public function set currentPage(param1:Number) : void
      {
         var _loc2_:int = -1269096138 ^ 0x3ECA70B9 ^ 0x32BFBE1A ^ -1844414254;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x3931C51C ^ 0x021B37E8 ^ -558471400 ^ -811466072))
            {
               case 0:
                  dispatchEvent(new Event(_ea110e9d25f7ed39a8858c24.CHANGE_CONTROL_POSITION));
                  return;
               case 1:
                  this._316c5863a9595aae27427ec4.enabled = true;
                  _loc2_ = 0x702EB8C4 ^ 0x78E868FB ^ 0x076881D1 ^ 0x2590C6AA;
                  break;
               case 2:
                  this._316c5863a9595aae27427ec4.enabled = false;
                  this._542ad27675d9b7ea5a0ffc98 = this._ea37cb4623c99851b9277d63 - 1;
                  _loc2_ = 0x2E7C5B19 ^ 0x4C3F6400 ^ 0x22562A87 ^ 0x6A2B82DA;
                  break;
               case 3:
                  this._542ad27675d9b7ea5a0ffc98 = param1;
                  if(this._542ad27675d9b7ea5a0ffc98 <= (-1356442077 ^ -1431903821 ^ -704586124 ^ -746559004))
                  {
                     _loc2_ = -1024589962 ^ 0x0D03E054 ^ -1056160239 ^ 0x24DCCE72;
                  }
                  else
                  {
                     _loc2_ = -185253264 ^ -892174627 ^ -726505968 ^ -1062482433;
                  }
                  break;
               case 4:
                  if(this._542ad27675d9b7ea5a0ffc98 >= this._ea37cb4623c99851b9277d63 - 1)
                  {
                     _loc2_ = 0x0330B155 ^ 0x3C98D5A0 ^ 0x02253799 ^ 0x17B3C42A;
                  }
                  else
                  {
                     _loc2_ = -1141330712 ^ 0x24915A30 ^ -544762929 ^ 0x6AD0F252;
                  }
                  break;
               case 5:
                  this._542ad27675d9b7ea5a0ffc98 = -1296298865 ^ 0x661210E2 ^ -2146908219 ^ 0x54A6DBA8;
                  this._889a5a1a55880a830b0bcc5d.enabled = false;
                  _loc2_ = 0x3203D9AB ^ -1849113872 ^ 0x18F6770A ^ -1862010095;
                  break;
               case 6:
                  this._889a5a1a55880a830b0bcc5d.enabled = true;
                  _loc2_ = -2067025360 ^ -2135259935 ^ -697230736 ^ -130106399;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get currentPage() : Number
      {
         return this._542ad27675d9b7ea5a0ffc98;
      }
      
      public function set totalPages(param1:Number) : void
      {
         this._ea37cb4623c99851b9277d63 = param1;
      }
      
      private function _463600ab3e11482253bb400e(param1:MouseEvent) : void
      {
         --this.currentPage;
      }
      
      private function _cb846480dabc032afb49399c(param1:MouseEvent) : void
      {
         ++this.currentPage;
      }
      
      private function _6d769624bf3e24a060591ef9(param1:Event) : void
      {
         this._8f120215faffbd48a7b3754a.text = (this._542ad27675d9b7ea5a0ffc98 + (0x190805DE ^ -1602918758 ^ -243557583 ^ 0x4806F874)).toString() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ိှဩၫႦ၍ၠმთႾ","ႺჀ၍ၷၮရ၁ဏႬ჊Ⴜၢဧ჋ზအ") + _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挨挺揖挤捞挽掕掌揔揖捦授","挍挺捅揶捔揧挍捋挐揜揰挸挓挻捉捭")) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჍქႪႼၑ႔႙Ⴠ၇ဣ","႕ဿႛြဋႤჲၭၦၹပၜ၍႖ဢလ") + this._ea37cb4623c99851b9277d63.toString();
         this._26c673637c7d6bcfe7a2eeee(this._d66ccf5a53225575554bb5a5);
      }
      
      public function _26c673637c7d6bcfe7a2eeee(param1:String) : void
      {
         var _loc2_:int = 0x298E5E27 ^ -784622366 ^ -1183541778 ^ -136798216;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-761824476 ^ -558437716 ^ 0x025C1151 ^ -1201387509))
            {
               case 0:
                  if(param1 == TextFieldAutoSize.RIGHT)
                  {
                     _loc2_ = -1102882805 ^ -215663567 ^ 0x474F0E02 ^ -1137663256;
                  }
                  else
                  {
                     _loc2_ = 0x3245EA53 ^ -345197548 ^ -2125507831 ^ -293616225;
                  }
                  break;
               case 1:
                  if(param1 != null)
                  {
                     _loc2_ = -1155542047 ^ 0x2845DAE6 ^ -904362605 ^ -279231418;
                  }
                  else
                  {
                     _loc2_ = 0x3EBD2A47 ^ -938537307 ^ -1071677144 ^ -2135659237;
                  }
                  break;
               case 2:
                  this._f6af5966d15ec8e51e65c5eb();
                  _loc2_ = 0x5F6EFDA9 ^ -496104225 ^ 0x09101505 ^ 0x02092CA2;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _f6af5966d15ec8e51e65c5eb() : void
      {
         this._8f120215faffbd48a7b3754a.wordWrap = false;
         this._8f120215faffbd48a7b3754a.multiline = false;
         this._8f120215faffbd48a7b3754a.width = this._8f120215faffbd48a7b3754a.textWidth + (-1797178051 ^ 0x3B7F6D6B ^ -695794578 ^ 0x7919543D);
         this._8f120215faffbd48a7b3754a.x = this._316c5863a9595aae27427ec4.x - this._8f120215faffbd48a7b3754a.width - this._01180ae3a8a602a5c36fd9f2 - (-795851785 ^ 0x3AFD8F0E ^ -1757140377 ^ 0x7D29E69B);
         this._889a5a1a55880a830b0bcc5d.x = this._8f120215faffbd48a7b3754a.x - this._889a5a1a55880a830b0bcc5d.width - this._01180ae3a8a602a5c36fd9f2;
      }
   }
}

