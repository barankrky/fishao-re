package com.ax3.fishao.display.dialogs
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.display.popups._665c68e6c732fb052d549df8;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs._8256b1324608dc993f5220be;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class _2cf09bac3309d0b60408ec5a extends _8256b1324608dc993f5220be
   {
      
      public static const ERROR_ICON:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("割剋劒剜勀剭刟剧勨功制劗劥刿勑列勸勧","剈勣勌劆刜剕勁刦刹劳剤刂剌剁刕勥");
      
      public static const WARNING_ICON:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၺၤ္Ⴣဘჳၴ႖ာ႙ႋჲံၧ႙ჾႄ჊ჸည့Ⴟ","ဦჺრၦჩჺႳბၝၙწဃ၆ဠၘဖ");
      
      public static const CONFIRM_ICON:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勝劮刣劮劁劉力到削勝势勈制勣剏劺剈刾勵劄券勞","制劏劻勵剱刜劷勅劁勮勲剔励前剼劐");
      
      public var messageField:_665c68e6c732fb052d549df8;
      
      public var closeButton:FishaoButtonWrapper;
      
      private var _asset:ICON_MESSAGE_POPUP;
      
      private var _456c09443ab445664ba95015:MovieClip;
      
      private var _4cf76022bf88034a92f5b516:int;
      
      public function _2cf09bac3309d0b60408ec5a()
      {
         super();
         this._asset = new ICON_MESSAGE_POPUP();
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         addChild(this._asset);
         if(this.closeButton != null)
         {
            this.closeButton.visible = false;
            this.closeButton.handler = this._05881cb04e8ed19682158a5f;
         }
         tabChildren = false;
         this._456c09443ab445664ba95015 = this._asset.icon;
         this.iconType = ERROR_ICON;
      }
      
      public function set text(param1:String) : void
      {
         this.messageField.text = param1;
      }
      
      public function set iconType(param1:String) : void
      {
         this._456c09443ab445664ba95015.gotoAndStop(param1);
      }
      
      override public function show() : void
      {
         this._4cf76022bf88034a92f5b516 = getTimer();
         _0737efdbd5337ba3fbc64b2e.getInstance()._92cc9ac314d6cc94288124bf(this);
      }
      
      private function _05881cb04e8ed19682158a5f(param1:MouseEvent) : void
      {
         close();
      }
   }
}

