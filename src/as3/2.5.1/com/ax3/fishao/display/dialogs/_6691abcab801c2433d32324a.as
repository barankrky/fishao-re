package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.wrappers.impl._340398c7d0de61214956211b;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs._8256b1324608dc993f5220be;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.events.MouseEvent;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class _6691abcab801c2433d32324a extends _8256b1324608dc993f5220be
   {
      
      public static const CLOSE_BUTTON:int = -192877557 ^ 0x6F46DAF8 ^ -772132435 ^ 0x4A3C075F;
      
      public static const OK_BUTTON:int = 0x7E086ACC ^ 0x0366099A ^ -583992638 ^ -1604413034;
      
      public static const YES_BUTTON:int = 0x055099CE ^ -1028450318 ^ -1790367065 ^ 0x52AAA49F;
      
      public static const NO_BUTTON:int = 0x7BF66C12 ^ -2086694853 ^ -140993874 ^ 0x0FF1668F;
      
      private var _asset:MESSAGE_POPUP;
      
      public var messageField:_340398c7d0de61214956211b;
      
      public var okButton:FishaoButtonWrapper;
      
      public var closeButton:FishaoButtonWrapper;
      
      public var yesButton:FishaoButtonWrapper;
      
      public var noButton:FishaoButtonWrapper;
      
      public var closeOnOk:Boolean;
      
      private var _29c66ad6d0856f3272522afa:Number = 0;
      
      private var _eb41ace0cfd6437970370a72:Number = 0;
      
      public var callbackYes:Function;
      
      public function _6691abcab801c2433d32324a()
      {
         super();
         this._asset = new MESSAGE_POPUP();
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this.closeButton.handler = this._e6fde9b864f3f625212f72f5;
         this.okButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劥勁劘勞刡刬劒剬剃勬前勆劭刻剐剏勌刟勉剘剄劍勭剑","劳前劢割勬勻勲剪勄劖勊刡勔勴前剖"));
         this.okButton.handler = this._273eaece80c53a67824f022f;
         this._29c66ad6d0856f3272522afa = this.okButton.y - (this.messageField.y + this.messageField.height);
         this._eb41ace0cfd6437970370a72 = bg.height - (this.okButton.y + this.okButton.height);
         this.yesButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刼励削勘剕劋劸別刭劰勃勇勓勑","勐務刕創励劦勧勞劚勰刭剅刭刕勆剈"));
         this.noButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揽挠掕挵掄挶控挂挛捍揠捁","揞掩掆揅捲捊挀控挔掞揙掸措捯捝揎"));
         this.yesButton.handler = this._8974aa03c77d1ced34fe4b80;
         this.noButton.handler = this._7b911825f07a01f301bd9a3b;
         tabChildren = false;
         addChild(this._asset);
         this.reset();
      }
      
      override public function reset() : void
      {
         var _loc1_:int = -439488101 ^ -1020883112 ^ 0x7DAD06AE ^ -1704621912;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-459671946 ^ -416515800 ^ 0x770C44A3 ^ -1248183494))
            {
               case 0:
                  this.okButton.visible = true;
                  this.yesButton.visible = false;
                  this.noButton.visible = false;
                  _loc1_ = -888777364 ^ 0x2F193BBD ^ 0x18E5AD9A ^ 0x3DD9338D;
                  break;
               case 1:
                  return;
               case 2:
                  super.reset();
                  this.closeOnOk = false;
                  if(this.okButton != null)
                  {
                     _loc1_ = 0x6EF975CB ^ -918713944 ^ -83294265 ^ -1645343901;
                  }
                  else
                  {
                     _loc1_ = 0x6E68DD41 ^ 0x58C90DAE ^ -653248287 ^ 0x2E9218C8;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _e6fde9b864f3f625212f72f5(param1:MouseEvent) : void
      {
         close();
      }
      
      private function _273eaece80c53a67824f022f(param1:MouseEvent) : void
      {
         var _loc2_:int = -563091337 ^ 0x21358885 ^ 0x46B5A32A ^ -2112747807;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-222426229 ^ 0x3E34E753 ^ 0x3CFD3021 ^ -880141888))
            {
               case 0:
                  if(this.closeOnOk)
                  {
                     _loc2_ = -1605201842 ^ 0x20F74F69 ^ -821367567 ^ 0x7452F6EE;
                  }
                  else
                  {
                     _loc2_ = -1039654375 ^ -235678486 ^ -295815880 ^ -430438672;
                  }
                  break;
               case 1:
                  close();
                  _loc2_ = 0x3703F342 ^ -761788761 ^ 0x3AE55D53 ^ -461148787;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _8974aa03c77d1ced34fe4b80(param1:MouseEvent) : void
      {
         var _loc2_:int = -891723489 ^ -317529732 ^ -359117509 ^ -266799745;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-2045566790 ^ -623772479 ^ -209007738 ^ -1845284904))
            {
               case 0:
                  this.callbackYes();
                  return;
               case 1:
                  close();
                  _loc2_ = 0x41F2D6DC ^ -1020747676 ^ 0x49E5A2D6 ^ -160109493;
                  break;
               case 2:
                  if(this.closeOnOk)
                  {
                     _loc2_ = 0x08794AFF ^ 0x45B684EA ^ -604489865 ^ -1417887418;
                  }
                  else
                  {
                     _loc2_ = -1877844624 ^ -904398781 ^ -1058989813 ^ -1481669603;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _7b911825f07a01f301bd9a3b(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x03E8823F ^ -771362992 ^ 0x0AC1FFCE ^ -1963391649;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-229794355 ^ -1540109763 ^ -834524898 ^ -907417328))
            {
               case 0:
                  if(this.closeOnOk)
                  {
                     _loc2_ = -1317914734 ^ -1835655081 ^ -2056711518 ^ -145190245;
                  }
                  else
                  {
                     _loc2_ = -691579463 ^ -1743649626 ^ 0x416A122F ^ 0x5E6AD4CF;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  close();
                  _loc2_ = -399122763 ^ 0x4CE18F57 ^ 0x152D4CD0 ^ -533951795;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _4b5d5535760fe8919ccfbd43(param1:String, param2:Boolean = true) : void
      {
         this.textAlign = TextAlign.LEFT;
         this._aeed7095d70105bd501efb01 = param2;
         this.messageField.text = param1;
         this._056a1264269964ffd0fcd815();
      }
      
      private function _056a1264269964ffd0fcd815() : void
      {
         this.okButton.y = this.messageField.y + this.messageField.height + this._29c66ad6d0856f3272522afa;
         this.yesButton.y = this.okButton.y;
         this.noButton.y = this.okButton.y;
         bg.height = this.okButton.y + this.okButton.height + this._eb41ace0cfd6437970370a72;
      }
      
      override public function show() : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance()._92cc9ac314d6cc94288124bf(this);
      }
      
      public function set buttons(param1:int) : void
      {
         this.closeButton.visible = Boolean(param1 & CLOSE_BUTTON);
         this.okButton.visible = Boolean(param1 & OK_BUTTON);
         this.yesButton.visible = Boolean(param1 & YES_BUTTON);
         this.noButton.visible = Boolean(param1 & NO_BUTTON);
      }
      
      public function set textAlign(param1:String) : void
      {
         this.messageField.textAlign = param1;
      }
      
      private function set _aeed7095d70105bd501efb01(param1:Boolean) : void
      {
         var _loc2_:TextFormat = this.messageField.defaultTextFormat;
         _loc2_.indent = param1 ? 0x692AB50F ^ -975796051 ^ 0x1D47E72D ^ 0x4E442561 : 0x0FE2C737 ^ -64948234 ^ -1760724418 ^ 0x64CF4AFF;
         this.messageField.defaultTextFormat = _loc2_;
      }
   }
}

