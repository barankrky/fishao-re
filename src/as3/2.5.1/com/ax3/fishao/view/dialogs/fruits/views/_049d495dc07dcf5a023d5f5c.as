package com.ax3.fishao.view.dialogs.fruits.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   
   public class _049d495dc07dcf5a023d5f5c extends _59a0cd753094663c05cca48e
   {
      
      private var _bde653577bf78a972db74859:DisplayObjectContainer = new gViewFruitItemBig();
      
      public function _049d495dc07dcf5a023d5f5c(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._bde653577bf78a972db74859);
         this.init();
      }
      
      private function init() : void
      {
         if(this._bde653577bf78a972db74859.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၀ဥჳလႦზႠ၁မႳჲ႓ჃၨႫ်ွ႙ဥჾဈၨგჅဣჄდႧႪ႔჉န","ဎუႷჾိ၂သ႒ფထအ႐ႯြှႲ")))
         {
            _buttonRemove = new FishaoButtonWrapper();
            _buttonRemove.process(Debug.assertProperty(this._bde653577bf78a972db74859,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挮捖挼揤揹挋捤揩换捾捇挲揀掺揧挰挧揔挤揇挨挜握掀掄揰探揦挂掹挱揝","揅掎持捼捝捡捾捣揘捩挅挗挞捒掣捨"),DisplayObjectContainer));
            _buttonRemove.handler = function(param1:MouseEvent):void
            {
               controller._4f254116765eb1a39d6712be(_buttonRemove,param1);
            };
         }
      }
   }
}

