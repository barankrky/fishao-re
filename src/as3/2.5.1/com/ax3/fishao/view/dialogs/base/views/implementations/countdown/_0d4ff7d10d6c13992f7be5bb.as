package com.ax3.fishao.view.dialogs.base.views.implementations.countdown
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.DisplayObjectContainer;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   
   public class _0d4ff7d10d6c13992f7be5bb extends _04cce4e240ff9bea66c1b7f7
   {
      
      private const _c3280f9b0273dde106bc406b:Array = [];
      
      private const _80f78dddbe4e4a4c640c0760:Array;
      
      private var _88cf47a80c4a157c20d875f3:DisplayObjectContainer;
      
      private var _4320fbabe222c245131eda7e:TextField;
      
      private var _265098cd7cdcbb024e9994ad:TextField;
      
      private var _33666c97b293fafc62fc41a2:_73899a4de8f83c8d2c26f545;
      
      private var _4b45466308dd0e35907c1528:_0802595643aded3b9dcf335d;
      
      public function _0d4ff7d10d6c13992f7be5bb(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         var _temp_5:* = this;
         var _temp_4:* = §§findproperty(GlowFilter);
         var _temp_3:* = -2008173095 ^ 0x1788DB4A ^ 0x4872F962 ^ -683082767;
         var _temp_2:* = 0x0738036E ^ -190983724 ^ 0x4B3B5BAE ^ -1197569771;
         var _temp_1:* = -1493037101 ^ -2113288357 ^ -2124579672 ^ -1537821644;
         _temp_5._80f78dddbe4e4a4c640c0760 = [new GlowFilter(_temp_3,_temp_2,_temp_1,_temp_1,0x6C9AD049 ^ 0x416F464F ^ 0x248C7FCB ^ 0x0979E9C7,0x3AB6AEB1 ^ -844777397 ^ 0x195DCEC7 ^ -296822724,true)];
         this._88cf47a80c4a157c20d875f3 = param2;
         super(param1,this._88cf47a80c4a157c20d875f3);
         this.init();
      }
      
      public function set position(param1:int) : void
      {
         this._4320fbabe222c245131eda7e.text = param1.toString() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဒစ႑႘၉ჳႺြჿဠ","ၦှႆჲ႙დჼგၧ႖ွၰဈၫႏဂ");
      }
      
      public function set login(param1:String) : void
      {
         this._265098cd7cdcbb024e9994ad.text = param1.toString();
      }
      
      public function set criteria(param1:String) : void
      {
         this._33666c97b293fafc62fc41a2.text = param1;
      }
      
      public function set isPlayer(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         _loc2_ = param1 ? this._80f78dddbe4e4a4c640c0760 : this._c3280f9b0273dde106bc406b;
         this._4320fbabe222c245131eda7e.filters = _loc2_;
         this._265098cd7cdcbb024e9994ad.filters = _loc2_;
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = new gViewCountdownItemPopup();
         this._4b45466308dd0e35907c1528 = new _0802595643aded3b9dcf335d(controller,_loc1_);
         this._4320fbabe222c245131eda7e = Debug.assertProperty(this._88cf47a80c4a157c20d875f3,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("္Ⴚ႓္ႇႆႈკფწၓჯဍၬდ჎၊ჲჽႼဒၬဦხ်Ⴣၜၬၿံၝၹႃၱ","ညკი့ჯႠოႯႚၪအႢლၦჇ႓"),TextField);
         this._265098cd7cdcbb024e9994ad = Debug.assertProperty(this._88cf47a80c4a157c20d875f3,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捈揘揖挑揆挠捊掿接掭捽按掹掁挜挝挋挥插揌援挧捤掠捡掁揕揸","掍挺挩排掾揀授捥捰援揂掮捅掵捧掝"),TextField);
         var _loc2_:TextField = Debug.assertProperty(this._88cf47a80c4a157c20d875f3,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႂსဌკჸႝႮဪლ။ႁႭႚჟႍჭၯვძၒჃდၸႅဈაႼရၿ၈၆ჶ၉ၒ","ၾჁ჻၃းლႿဂპၵဠიႤဉიၣ"),TextField);
         this._33666c97b293fafc62fc41a2 = new _73899a4de8f83c8d2c26f545(_loc2_);
         _63b9041bf855ea499da8554e(false);
      }
      
      public function showPopup(param1:String) : void
      {
         this._88cf47a80c4a157c20d875f3.addChild(this._4b45466308dd0e35907c1528.source);
         this._4b45466308dd0e35907c1528.source.x = -2058684375 ^ -286233050 ^ 0x76A6CF8A ^ 0x1D1C5931;
         this._4b45466308dd0e35907c1528.source.y = -364947023 ^ 0x77D7A631 ^ 0x4226782A ^ 0x2031784D;
         this._4b45466308dd0e35907c1528.label = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揿掅挈捵揾揄挼採揬揁","捎掊控挛挿捫挜捞捻掚掩提挗掻措挆") + param1;
         this._4b45466308dd0e35907c1528.show();
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._4b45466308dd0e35907c1528._90eac9ca552fe54c2ca0299f();
         this._4b45466308dd0e35907c1528 = null;
         this._4320fbabe222c245131eda7e = null;
         this._265098cd7cdcbb024e9994ad = null;
         this._33666c97b293fafc62fc41a2 = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

