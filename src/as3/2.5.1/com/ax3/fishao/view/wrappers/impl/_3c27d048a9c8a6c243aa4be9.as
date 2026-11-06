package com.ax3.fishao.view.wrappers.impl
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class _3c27d048a9c8a6c243aa4be9 extends ShiftWrapper implements IAssetWrapper
   {
      
      private var _397a7aeaed1a09da3526504c:ScrollWrapper;
      
      private var _31e942fdfb86af8bfab2834e:TextField;
      
      private var _de9caa4a7e0b1b48e17b8250:Boolean;
      
      private var _e595213b84d6e8a39a208ba6:Number;
      
      public function _3c27d048a9c8a6c243aa4be9()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         addChild(_child);
         this._20dc6a3184aedc494a3eebdb();
         this._231fef92c67da46e6192b088();
         this._3756d53023f82e2fbc3fa88b();
      }
      
      private function _20dc6a3184aedc494a3eebdb() : void
      {
         this._397a7aeaed1a09da3526504c = new _8964e753fb9dbef2411af0bf();
         this._397a7aeaed1a09da3526504c.process((_child as DisplayObjectContainer).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劤劻刋労分劭勵力切勊刽勌刳刼劖剤勾務勝劐","剙刚勘勜刢加勀勵劸別劰勈劊刢劒剰")));
         this._397a7aeaed1a09da3526504c.moveHandler = this._a6ae8c4816dbd7123227833f;
      }
      
      public function _a6ae8c4816dbd7123227833f(param1:Number) : void
      {
         var _loc2_:int = Math.ceil(this._9fdfebfbae01312dd65783fb * param1);
         this._55cf8f6457b161ca14a253f3(_loc2_);
      }
      
      private function _6ece412b990c5d0c7e6418ef(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(!this._de9caa4a7e0b1b48e17b8250 && this._31e942fdfb86af8bfab2834e.maxScrollV > (-555801232 ^ 0x05272A08 ^ -41434603 ^ 0x267FCD6C))
         {
            _loc2_ = (this._31e942fdfb86af8bfab2834e.scrollV - 1) / (Math.max(this._31e942fdfb86af8bfab2834e.maxScrollV,this._31e942fdfb86af8bfab2834e.scrollV) - 1);
            this._397a7aeaed1a09da3526504c.percent = _loc2_;
         }
      }
      
      private function _231fef92c67da46e6192b088() : void
      {
         this._31e942fdfb86af8bfab2834e = (_child as DisplayObjectContainer).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勳刂剜剸勲劔劺勸剡劚劶刻勯勓勉功","劼刡勦利務券刭剘劳勽劦劂剴劍刎助")) as TextField;
         this._31e942fdfb86af8bfab2834e.addEventListener(Event.CHANGE,this._4fde3fc8f7d1845ee6062798);
         this._31e942fdfb86af8bfab2834e.addEventListener(Event.SCROLL,this._6ece412b990c5d0c7e6418ef);
         this._e595213b84d6e8a39a208ba6 = this._31e942fdfb86af8bfab2834e.numLines;
      }
      
      private function _4fde3fc8f7d1845ee6062798(param1:Event) : void
      {
         var _loc2_:int = 0x6B4530C2 ^ 0x6A77C10F ^ -436121854 ^ 0x743F26FD;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x4377BAC4 ^ 0x30CDBBF5 ^ -856552038 ^ 0x2C449498))
            {
               case 0:
                  this._3756d53023f82e2fbc3fa88b();
                  this._e595213b84d6e8a39a208ba6 = this._31e942fdfb86af8bfab2834e.numLines;
                  _loc2_ = 0x014C8BFA ^ -466084612 ^ -413567544 ^ -1860076801;
                  break;
               case 1:
                  if(this._31e942fdfb86af8bfab2834e.numLines != this._e595213b84d6e8a39a208ba6)
                  {
                     _loc2_ = 0x468D0EF1 ^ 0x1A15DE82 ^ 0x7CDAA0AE ^ -1286674194;
                  }
                  else
                  {
                     _loc2_ = -1984994285 ^ 0x60DACBA1 ^ 0x730BB4D5 ^ 0x09728356;
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
      
      protected function _3756d53023f82e2fbc3fa88b() : void
      {
         var _loc1_:int = -844409646 ^ -889924314 ^ 0x5708165D ^ -1367750317;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x735E7E2A ^ -1416357270 ^ -1309586991 ^ -1760201880))
            {
               case 0:
                  this._397a7aeaed1a09da3526504c.visible = false;
                  _loc1_ = 0xD6049C ^ 0x123753A7 ^ 0x20E2D369 ^ -869410135;
                  break;
               case 1:
                  this._397a7aeaed1a09da3526504c.visible = true;
                  this._397a7aeaed1a09da3526504c.setHandlerSize(this.screenSizeInLines / this._31e942fdfb86af8bfab2834e.bottomScrollV,-588474169 ^ 0x7853A950 ^ 0x0BAB84F6 ^ -1357597323);
                  _loc1_ = 0x250028D9 ^ -895359814 ^ -540104671 ^ -834585927;
                  break;
               case 2:
                  return;
               case 3:
                  this._6ece412b990c5d0c7e6418ef(null);
                  if(this._9fdfebfbae01312dd65783fb > (0x660CD810 ^ -937660152 ^ -1497205480 ^ 0x08D2DC01))
                  {
                     _loc1_ = -1894078270 ^ -240254989 ^ -503361753 ^ 0x616646EE;
                  }
                  else
                  {
                     _loc1_ = 0x699CE8A3 ^ 0x14E1C877 ^ -1644557200 ^ 0x1EA9725D;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function get _9fdfebfbae01312dd65783fb() : Number
      {
         return this._31e942fdfb86af8bfab2834e.maxScrollV;
      }
      
      public function get screenSizeInLines() : Number
      {
         return this._31e942fdfb86af8bfab2834e.bottomScrollV - this._31e942fdfb86af8bfab2834e.scrollV;
      }
      
      protected function _55cf8f6457b161ca14a253f3(param1:int) : void
      {
         if(param1 > (0x1428B2D5 ^ -1529539261 ^ -596390323 ^ 0x6C8E69DB) && param1 <= this._31e942fdfb86af8bfab2834e.maxScrollV)
         {
            this._de9caa4a7e0b1b48e17b8250 = true;
            this._31e942fdfb86af8bfab2834e.scrollV = param1;
            this._de9caa4a7e0b1b48e17b8250 = false;
         }
      }
      
      public function get text() : String
      {
         return this._31e942fdfb86af8bfab2834e.text;
      }
      
      public function set text(param1:String) : void
      {
         this._31e942fdfb86af8bfab2834e.text = param1;
      }
   }
}

