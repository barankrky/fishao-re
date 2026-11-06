package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class _e8798cc6b38bda4d1c07c41a extends EventDispatcher
   {
      
      private var _2203fed3b6d37d15621def4b:Dictionary = new Dictionary();
      
      private var _25807e706b954da80a9bb27b:_f4e580d87c390c028b8b56dc;
      
      private var _f4f11403cc6dca423075d4cb:Vector.<String> = new Vector.<String>();
      
      private var _726b46c41ac1109f14b714b0:String;
      
      public function _e8798cc6b38bda4d1c07c41a(param1:String)
      {
         var _loc2_:String = null;
         super();
         for(_loc2_ in _c2ad9d37d7be0097d6d2e977.langs)
         {
            this._2203fed3b6d37d15621def4b[_loc2_] = _c2ad9d37d7be0097d6d2e977.langs[_loc2_];
            this._f4f11403cc6dca423075d4cb.push(this._2203fed3b6d37d15621def4b[_loc2_]);
         }
         this._f4f11403cc6dca423075d4cb.sort(0x44EED4E8 ^ -862369005 ^ 0x4B19ADE3 ^ -1016188392);
         this._726b46c41ac1109f14b714b0 = param1;
      }
      
      public function config(param1:_f4e580d87c390c028b8b56dc) : void
      {
         this._25807e706b954da80a9bb27b = param1;
         this._25807e706b954da80a9bb27b.init();
         this._25807e706b954da80a9bb27b.addEventListener(Event.CHANGE,this._a5224dd9833d04b3e088b1b2);
         var _loc2_:String = this._2203fed3b6d37d15621def4b[this._726b46c41ac1109f14b714b0];
         if(_loc2_ == null)
         {
            this._25807e706b954da80a9bb27b.text = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၘაჀၙჹრ჈းဈჰဩၣჼၩ","჈წၮ့ၗიၴჀႝჶႱၰჺ჈ၗ჻");
         }
         else
         {
            this._25807e706b954da80a9bb27b.text = _loc2_;
         }
         this._25807e706b954da80a9bb27b.clear();
         this._25807e706b954da80a9bb27b.flag = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捵掽捦揗揄挘挽挟挍挗挨揳掰掋挈援掻揯揬揔揿按掎揰掂捸揯捱","挈揇掝插揺捾挐揶捊揾掗揉掫挡挦提") + this._726b46c41ac1109f14b714b0 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揲掻挗挱捝捀推掷捠授插捿捖推揮捇","揙掹挂揮捐挖掯捠捲插掄掳揎捑掿捀");
         this._25807e706b954da80a9bb27b.create(this._f4f11403cc6dca423075d4cb);
      }
      
      private function _a5224dd9833d04b3e088b1b2(param1:Event) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in this._2203fed3b6d37d15621def4b)
         {
            if(this._25807e706b954da80a9bb27b.displayValue == this._2203fed3b6d37d15621def4b[_loc2_])
            {
               this._726b46c41ac1109f14b714b0 = _loc2_;
            }
         }
         this._25807e706b954da80a9bb27b.clear();
         this._25807e706b954da80a9bb27b.flag = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႖ცႍႼႯ႕၏ႯညჲႱညညၭၘသဿႴၨၒჂၙჀႲიၑ၏ဠ","ႍძჴၩႝ႑႐ၘမ჏၃გဌရხႠ") + this._726b46c41ac1109f14b714b0 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႓ျၞ၅ၐႩ၁ၘႼ၆ၨၩၯဟ႙ၺ","რ၂ၒႉၐცနဆၕჴႅჽჲၸႳვ");
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get currentLangID() : String
      {
         return this._726b46c41ac1109f14b714b0;
      }
   }
}

