package com.ax3.fishao.display.dialogs
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.ConnectionLostPopup;
   import com.ax3.fishao.display.popups._665c68e6c732fb052d549df8;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs._8256b1324608dc993f5220be;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.desktop.NativeApplication;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   
   public class _0499b052ad03d68cbcb62e2a extends _8256b1324608dc993f5220be
   {
      
      private var _asset:ConnectionLostPopup;
      
      public var label:_665c68e6c732fb052d549df8;
      
      public var closeButton:FishaoButtonWrapper;
      
      public var refreshButton:FishaoButtonWrapper;
      
      public function _0499b052ad03d68cbcb62e2a()
      {
         super();
         this._asset = new ConnectionLostPopup();
         addChild(this._asset);
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this.closeButton.visible = false;
         this.refreshButton.handler = this._e73f2d5067f0d2f12813309c;
         this.refreshButton.label = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၘႜဌშრဆၸႅჾဟჾ႓လၬၟ၅","ჄႩ၀Ⴚၒဿ႗ლ၌ဴၧံლဦ၇ძ");
      }
      
      public function set text(param1:String) : void
      {
         this.label.text = param1;
      }
      
      override public function show() : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance()._92cc9ac314d6cc94288124bf(this);
      }
      
      private function _e73f2d5067f0d2f12813309c(param1:MouseEvent) : void
      {
         var _loc2_:int = -1043503929 ^ 0x0C7FD383 ^ -44371486 ^ 0x1F2CEF1B;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6ED8AF55 ^ 0x6BBD34B3 ^ -1646326084 ^ -1216463643))
            {
               case 0:
                  ExternalInterface.call(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刹动勃劦刊勰勻到勋勷刄前剾剅刦劅刌劂别勼剳刨剦勇割剕助削勺勛勢剔務剱劖剽勀勚","剗劌势剼刯剆勹刎劝勭剛剕劰劅勔刨"));
                  return;
               case 1:
                  NativeApplication.nativeApplication.exit();
                  return;
               case 2:
                  if(ExternalInterface.available)
                  {
                     _loc2_ = -1909992359 ^ 0x7BB762B5 ^ -584731574 ^ 0x0771AB19;
                  }
                  else
                  {
                     _loc2_ = 0x7AD21E5A ^ 0x2BC262DB ^ 0x4E09BF62 ^ 0x30DD6A5D;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

