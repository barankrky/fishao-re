package com.ax3.fishao.view.tooltips
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.LockedLocation;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.ConfirmFrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl._ccc79943b3dd572e1de68e20;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class _87228d4316275bac12adb2cd extends Sprite
   {
      
      protected var _asset:MovieClip;
      
      protected var _title:_ccc79943b3dd572e1de68e20;
      
      protected var _reasone:TextField;
      
      protected var _reasoneBg:MovieClip;
      
      protected var _buttonBuy:ConfirmFrameButtonWrapper;
      
      public function _87228d4316275bac12adb2cd()
      {
         super();
         this._asset = new LockedLocation();
         this._title = new _ccc79943b3dd572e1de68e20();
         this._title.process(Debug.assertProperty(this._asset,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဒჵႠမჲცမခၙႸჾၚდჾႱა႘ჭ","Ⴆႉၨ႞ၲ၃ჽ႔ၷႉူာႛჽၩၣ")));
         this._reasone = Debug.assertProperty(this._asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劊劬刷勅勄刔劤勁劒刪剉刴剱刡剺刕勴勲剖劼劧劙","勫劗刏刯刟勄劕勻刁办刼剺劣刽劉劗"),TextField);
         this._reasoneBg = Debug.assertProperty(this._asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刹劏劃刟剠副劢剔勔剣励刲刃劎勸刉券勊剂副刀創勂剈剦務","刌剦刯剫劾刐刁刷勳勞劰刐剝劎勐剓"),MovieClip);
         this._buttonBuy = new ConfirmFrameButtonWrapper();
         this._buttonBuy.process(Debug.assertProperty(this._asset,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掵挃掩捉捱揞措挲挃掳捺掾持挠挝捪揰捈揌揚措掦描挒掩掛","挃掺挋掰揍捍揞掲掉挽捄掝掐揸揪捡"),MovieClip));
         addChild(this._asset);
      }
   }
}

