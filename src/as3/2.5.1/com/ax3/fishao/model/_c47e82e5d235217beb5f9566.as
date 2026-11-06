package com.ax3.fishao.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.core._da2facf75d08e7f9226a6df7;
   import com.ax3.fishao.debug.Debug;
   import flash.events.EventDispatcher;
   
   public class _c47e82e5d235217beb5f9566 extends EventDispatcher implements _da2facf75d08e7f9226a6df7
   {
      
      private var _088fe4355b7a51c00bee0bf8:int;
      
      private var _809bd2909c7d8ac402cd1073:int;
      
      private var _360be159c0d18640e81ee631:int;
      
      private var _53ce3cebd0499e63b17f1b2f:Boolean;
      
      private var _1b19d400a52c95cf2787dad0:int;
      
      public function _c47e82e5d235217beb5f9566()
      {
         super();
      }
      
      public function get id() : int
      {
         return this._088fe4355b7a51c00bee0bf8;
      }
      
      public function get length() : int
      {
         return this._809bd2909c7d8ac402cd1073;
      }
      
      public function get rarity() : int
      {
         return this._360be159c0d18640e81ee631;
      }
      
      public function get isShiny() : Boolean
      {
         return this._53ce3cebd0499e63b17f1b2f;
      }
      
      public function get hueShiftOfShiny() : int
      {
         return this._1b19d400a52c95cf2787dad0;
      }
      
      public function serialize() : Object
      {
         return {};
      }
      
      public function deserialize(param1:Object) : void
      {
         this._088fe4355b7a51c00bee0bf8 = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劲劔刺刼刻剟勆劒劫勆勴劲勡勞剃剭刍剋剦勔刚劎","副刢刍刻剓勦勩勀劎剜劢劦勂劑划刳"),int);
         this._809bd2909c7d8ac402cd1073 = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("务刈劻到剳列劉勺勢刁勨剰勢劔刲则劤勬労勾劍剁剢劏功刲刵勗刈勭","勾努勲刻劔勵剤分勻剕刜利刄创刉剩"),int);
         this._360be159c0d18640e81ee631 = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("იမဿ၏်ဓဧვ၍ၡူေႲၛႶაჹဣჵဖႧႲ၄ვცုဢိჍိ","ၤခဨၞჭဘဏႀၦႃ႞ထၛ၎႔ၔ"),int);
         this._53ce3cebd0499e63b17f1b2f = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掔揌揨揢捪掰挗掐掲揖揂掮持捑掙挫按掘捾援捅捍揷揇","揓捚掜捳揬採捵推捼揶捬揬採挲据挙"),Boolean);
         this._1b19d400a52c95cf2787dad0 = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၦၣ။ႳႿၲၐ႑ႢჄღႄ၄ၘჁၗၥპႵဗბၳუၒ႗ჺ႔နჯၚၥ჈၎ႁဩၓ၆ဌဍဪყႲႅး","၊Ⴘစ႑ვႤ၌ၕႷဪႍဳၙგႩ္"),int);
      }
   }
}

