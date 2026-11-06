package com.ax3.fishao.view.dialogs.fishingLine.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._5d4744298d281de23246856d;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import com.ax3.fishao.view.dialogs.fishingLine.controllers._ca7439c2756e279751b0c0e9;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _77f54a3b2f8ffb3d05a91a00 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _456945e33955809bab2b13bc:DisplayObjectContainer;
      
      private var _190165512eaea14afb0b531f:TextField;
      
      private var _e67bf519f80af0c96125a4a7:_5d4744298d281de23246856d;
      
      private var _ec8037211a5461cf93cdbb7d:Array;
      
      public function _77f54a3b2f8ffb3d05a91a00(param1:_ca7439c2756e279751b0c0e9, param2:DisplayObjectContainer)
      {
         this._456945e33955809bab2b13bc = Debug.assertNotEqual(param2,null);
         super(param1,this._456945e33955809bab2b13bc);
         this.init();
      }
      
      public function set fishLength(param1:uint) : void
      {
         this._190165512eaea14afb0b531f.text = _c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(param1);
      }
      
      public function set percentLineMax(param1:Number) : void
      {
         this._e67bf519f80af0c96125a4a7.percent = param1;
      }
      
      public function set items(param1:Array) : void
      {
         var _loc2_:_ebeac595a62fba6d6fcea1c2 = null;
         if(this._ec8037211a5461cf93cdbb7d == param1)
         {
            return;
         }
         this._2868466c41c4207b5a65ed85();
         this._ec8037211a5461cf93cdbb7d = param1;
         for each(_loc2_ in this._ec8037211a5461cf93cdbb7d)
         {
            this._456945e33955809bab2b13bc.addChild(_loc2_.source);
         }
      }
      
      private function init() : void
      {
         var _loc1_:TextField = Debug.assertProperty(this._456945e33955809bab2b13bc,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႻႛოဢၣႅျႯၲထၽၩဓၡ჈჎ၗဝႭჹဉငမოၙႀ၊။ႻႨ჈ၣ၄၌ႇႆჴဵ","ႂၿ჈ၥ။ნჂဧ႞ဿწႄၛြဦၱ"),TextField);
         _loc1_.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FISHING_LINE_LEVEL_INFO_LINE_LENGTH);
         var _loc2_:TextField = Debug.assertProperty(this._456945e33955809bab2b13bc,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挩捀掋挽揖捄掐揪捂揹捑掬捽揢掕挝捦挷挨挾捉挳挈捊掬探掎掖掻揁","揩揗持挫捊挃挻挗揢挧掻挩捓掇捌捣"),TextField);
         _loc2_.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FISHING_LINE_LEVEL_INFO_COLORS);
         this._190165512eaea14afb0b531f = Debug.assertProperty(this._456945e33955809bab2b13bc,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("别剪勃劫剛劯剨勧勺勛刊刺剐列加刱剻勵剶勐劃効刐勳劺勫刊剀劑劃剸刋剻勹勶剧剌劗勸初劌勼劒券剫刨剚劆","刚利剦勾勻割劲勆刑到剅刓剼劧勮剤"),TextField);
         this._e67bf519f80af0c96125a4a7 = new _5d4744298d281de23246856d(controller,Debug.assertProperty(this._456945e33955809bab2b13bc,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挽推挞掀挄掁掆插揢挼採捊捞捡揮揫捪揿捡揂掦揨揰揵挈掵挼捒捞掸捸揜","掅揸揑挰揮振掳捤揩揷捤掝描挑提掙"),DisplayObjectContainer));
      }
      
      private function _2868466c41c4207b5a65ed85() : void
      {
         var _loc1_:_ebeac595a62fba6d6fcea1c2 = null;
         for each(_loc1_ in this._ec8037211a5461cf93cdbb7d)
         {
            this._456945e33955809bab2b13bc.removeChild(_loc1_.source);
         }
         this._ec8037211a5461cf93cdbb7d = null;
      }
      
      override public function _63b9041bf855ea499da8554e(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:_ebeac595a62fba6d6fcea1c2 = null;
         super._63b9041bf855ea499da8554e(param1);
         var _loc4_:Number = -68978135 ^ 0x75047CB3 ^ -7764588 ^ 0x716E835E;
         _loc2_ = -395307333 ^ 0x349E2C7A ^ -970035445 ^ 0x1AC055A4;
         for each(_loc3_ in this._ec8037211a5461cf93cdbb7d)
         {
            _loc3_.source.x = _loc4_;
            _loc3_.source.y = _loc2_;
            _loc4_ += _loc3_.source.width + (0x1AD7E8CB ^ -1222666679 ^ -1124297182 ^ 0x1134E8A5);
         }
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._e67bf519f80af0c96125a4a7._90eac9ca552fe54c2ca0299f();
         this._e67bf519f80af0c96125a4a7 = null;
         this._2868466c41c4207b5a65ed85();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

