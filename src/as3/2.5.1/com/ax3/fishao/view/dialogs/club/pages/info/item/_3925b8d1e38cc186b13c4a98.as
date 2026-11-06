package com.ax3.fishao.view.dialogs.club.pages.info.item
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.Sprite;
   
   public class _3925b8d1e38cc186b13c4a98 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _5a1211b4456e7dce96f26b9b:_04cce4e240ff9bea66c1b7f7;
      
      private var _804d06c6522ed9008f74e040:FrameButtonWrapper;
      
      private var _f23266b4de3a5c449bb8e670:_73899a4de8f83c8d2c26f545;
      
      private var _27777aacd1bf849f9e1b0c51:_73899a4de8f83c8d2c26f545;
      
      private var _d4d79c854d22b5bf1f3cc1e2:_73899a4de8f83c8d2c26f545;
      
      private var _29742ffe343ea3453a324a4b:Sprite;
      
      public function _3925b8d1e38cc186b13c4a98(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,new gViewClubsItemMember());
         this.init();
      }
      
      public function set level(param1:int) : void
      {
         this._f23266b4de3a5c449bb8e670.text = param1.toString();
      }
      
      public function set name(param1:String) : void
      {
         this._27777aacd1bf849f9e1b0c51.text = param1;
      }
      
      public function set role(param1:String) : void
      {
         this._d4d79c854d22b5bf1f3cc1e2.text = _c2ad9d37d7be0097d6d2e977.get(param1);
      }
      
      public function set isCurrent(param1:Boolean) : void
      {
         var _loc2_:int = -2110880036 ^ -2068949488 ^ 0x545A2DCB ^ -1328131287;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-536340790 ^ -363489017 ^ 0x1F261B87 ^ -143181212))
            {
               case 0:
                  this._29742ffe343ea3453a324a4b.visible = param1;
                  if(param1)
                  {
                     _loc2_ = -361530326 ^ 0x707243B5 ^ 0x3980FDEA ^ 0x418D6C5A;
                  }
                  else
                  {
                     _loc2_ = 0x520800CB ^ -2030499149 ^ -1027638067 ^ -196945767;
                  }
                  break;
               case 1:
                  this._27777aacd1bf849f9e1b0c51.source.textColor = 0x04EC2E73 ^ -131212925 ^ -686277153 ^ 0x2B2635D0;
                  this._d4d79c854d22b5bf1f3cc1e2.source.textColor = -714602555 ^ -387327339 ^ 0x6BD37EE5 ^ 0x56AD5C4A;
                  _loc2_ = -1817927467 ^ -996276216 ^ -1690864012 ^ 0x2E017085;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get buttonDecline() : FrameButtonWrapper
      {
         return this._804d06c6522ed9008f74e040;
      }
      
      public function get viewHitArea() : _ebeac595a62fba6d6fcea1c2
      {
         return this._5a1211b4456e7dce96f26b9b;
      }
      
      public function set canShowProfile(param1:Boolean) : void
      {
         this._5a1211b4456e7dce96f26b9b._fc17178734ae7cc816dbcc2f(param1);
         this._5a1211b4456e7dce96f26b9b.source.alpha = param1 ? _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("割刵劉劫剀剂刞劏刅勧刾勀动剳勔劝剡劷削劢剰剡劑剨","初剨勬劒副剚劷劑刯刑勪刺创勏创勗") : -1769438703 ^ -392951634 ^ -1637344560 ^ -529231761;
      }
      
      private function init() : void
      {
         this._5a1211b4456e7dce96f26b9b = new _04cce4e240ff9bea66c1b7f7(controller,Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揅措捹捪捾捝捆捎捡揫掳挱据掌挕揦挨掀揖揵捓捧掙掔挍挤捲捑揰挹","揘揻掄捝捯挭挍揙掃掆揘捗挺捩挍掊")));
         this._29742ffe343ea3453a324a4b = Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挏捕揑捖揜挝挽掺捸掫揂挮掘捚捅挒挺挕揅挎揇换掔掓掔揄","捃挺挿援挸捁掅捲挘掓掦挞掛授揘捂"));
         this._804d06c6522ed9008f74e040 = _092050566a3adcf2725382ab(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刢劀剳剚剧勥勂功勔剺刖刂劯劮刟剑勸则勢勹刚別勁劬刿刄刘勤勞剮劦劺刦删","助剑勿剿刻刪劌剮効刃劔劘刅劅剁别"));
         this._f23266b4de3a5c449bb8e670 = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掠挊捳挣挮揘換挍挦掶挫捅揆挳捣揇挳揋捫挆掁揵揗掹揍插揿揫","捌掩掽挐捤揜捡挋挭揳捎提掌挱挈揋"),null);
         this._27777aacd1bf849f9e1b0c51 = _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჏ဢჯဣუႊဴჍပဓႡ႖ჳခၲ႖႑ၲႛვဿၿპო။့","ႉႇჯာ၏ი္Ⴃ၎თრၷმႳყဣ"),null);
         this._d4d79c854d22b5bf1f3cc1e2 = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揶揌挾掐掕捜捵挏挰揫捖挮揲掉挤揷接掕掂掁捪掏捕揢掓揖","捪挥挠掙掉揟掁援捉挷揼捶捧措採揇"),null);
      }
   }
}

