package com.ax3.fishao.view.panels.user_popup
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class _39b7ed028860dccb673b513c extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _06d01c78e9ea984fb36cef34:FrameButtonWrapper;
      
      private var _b8b4d77617f08b833334c2b8:FrameButtonWrapper;
      
      private var _f05a9c360d062a482e2169e3:CloseMenuFishaoButtonWrapper;
      
      private var _83895367947ab0213111220d:TextField;
      
      private var _a4b974e76c5a44da58987e30:TextField;
      
      public function _39b7ed028860dccb673b513c(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
         param2.mouseChildren = true;
      }
      
      private static function _034a476f8e801a566dfd3f88(param1:String) : Object
      {
         return {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၷႹဝဧიဟჾဢၐ၊သႈႄါၢၓ","ႳဟႲိဲၙငძ႙်ဲၜჷႶနთ")):_c2ad9d37d7be0097d6d2e977.get(param1)};
      }
      
      public function set isGuest(param1:Boolean) : void
      {
         var _loc2_:int = 0x3D3F5E81 ^ -1935668014 ^ 0x5B0EAD1E ^ -1794015251;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x369AE493 ^ 0x719468B7 ^ -1247108271 ^ -1926975531))
            {
               case 0:
                  this._06d01c78e9ea984fb36cef34.enabled = !param1;
                  this._b8b4d77617f08b833334c2b8.enabled = !param1;
                  if(param1)
                  {
                     _loc2_ = -479944634 ^ 0x3A31CDD0 ^ -402860177 ^ 0x41293A5A;
                  }
                  else
                  {
                     _loc2_ = 0x012F2091 ^ -1200764397 ^ 0x47805010 ^ -2126366160;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._06d01c78e9ea984fb36cef34.tooltipConfig = null;
                  this._b8b4d77617f08b833334c2b8.tooltipConfig = null;
                  _loc2_ = 0x400A1E77 ^ -1479766773 ^ -1156077765 ^ 0x2351B4E6;
                  break;
               case 3:
                  this._06d01c78e9ea984fb36cef34.tooltipConfig = _034a476f8e801a566dfd3f88(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刢務划剬勯剤划剕勘劧割劵刍刭勯剆刂刳助到剘勁务勴剜前剟刳劋剃劗勱勘勠刟剢剡劯勊刐删刐勭刋劎劣劘劑刓剑勈助刷勈勘切劝劯","刭剈勯勅划劏剛刓剔刧劲剎划刻劻剪"));
                  this._b8b4d77617f08b833334c2b8.tooltipConfig = _034a476f8e801a566dfd3f88(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揙掹挚捓揃捫揥掙挪掇捇挥揱掸揘挮捶挾揾捥挄握掽挟掻挼揄揶揊揷挃捪挵掴捐掣振捒挹揙捤挙掍捎捌掇掌掳","挠挞挣挔捱掼掮揩指挰捔挔揼捐揜捑"));
                  _loc2_ = -855744399 ^ 0x16B3078A ^ 0x09D90529 ^ -1407917453;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get buttonClose() : CloseMenuFishaoButtonWrapper
      {
         return this._f05a9c360d062a482e2169e3;
      }
      
      public function set buttonPmVisible(param1:Boolean) : void
      {
         var _loc2_:int = -1610530155 ^ -512561532 ^ -74078737 ^ -591296813;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x3E4525A0 ^ -1093727109 ^ 0x40DEE278 ^ -1502395249))
            {
               case 0:
                  return;
               case 1:
                  this._b8b4d77617f08b833334c2b8.visible = param1;
                  if(!param1)
                  {
                     _loc2_ = -1334248036 ^ 0x5811577C ^ -508055277 ^ 0x6FF994DD;
                  }
                  else
                  {
                     _loc2_ = -354212050 ^ 0x1247C610 ^ 0x7BBBB8B7 ^ -449259867;
                  }
                  break;
               case 2:
                  this._06d01c78e9ea984fb36cef34.x = -this._06d01c78e9ea984fb36cef34.width * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刨刲刺勳勝劗剎刿劕功剸剝劻勔剷刂剁則劻刚刖剃勷删","剽剴剉刘剱刵勻刳刄務勠刪刮勱刲剋");
                  _loc2_ = 0x08AAD5E1 ^ -1477281305 ^ -1696704486 ^ 0x53A17B30;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get buttonProfile() : FrameButtonWrapper
      {
         return this._06d01c78e9ea984fb36cef34;
      }
      
      public function get buttonPM() : FrameButtonWrapper
      {
         return this._b8b4d77617f08b833334c2b8;
      }
      
      public function set level(param1:int) : void
      {
         this._83895367947ab0213111220d.text = param1.toString();
      }
      
      public function set login(param1:String) : void
      {
         this._a4b974e76c5a44da58987e30.text = param1;
      }
      
      public function get viewEmblem() : _04cce4e240ff9bea66c1b7f7
      {
         return null;
      }
      
      private function init() : void
      {
         this._f5c1393c106ca9a411c585b8();
         this._37d7f126b6743ce7affd7c75();
         this._0f6f75b6bdf184f9dd3ab502();
         this._a9ad8d7762fc5821132eb6fa();
         this._38df5ae3c9d5e15bce3d7ffe();
      }
      
      protected function _f5c1393c106ca9a411c585b8() : void
      {
         this._06d01c78e9ea984fb36cef34 = _092050566a3adcf2725382ab(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴍ၍်ნၱၯႠႸ჎၊ძငိႌခၔ႑Ⴀၤကၖၭဪ၅်Ⴭဨႇ၍ဴဨၑထၗ","အလၛၲჩီၮႅျჾငთჴ၈ე၊"));
         this._06d01c78e9ea984fb36cef34.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劃勵勝刳前剔剱务劥刱刞勫剳勷勡勛劼割劽刌劋剷剛判剻剔劚劭勠勚劀功剻刯刞刳列剣刅則删剩勓勚剓劢","剂勧勑剤勊初刺刌務剪剾劲剶剪勻剌"));
      }
      
      protected function _37d7f126b6743ce7affd7c75() : void
      {
         this._b8b4d77617f08b833334c2b8 = _092050566a3adcf2725382ab(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("რဂၨံလဆႻ၄႐ၚၛႝၸႽႆၭႶၶჲၼჺႹၦჭ","მ჎ძၑႄြႪშ჏ჿოჀცဋჵူ"));
      }
      
      protected function _0f6f75b6bdf184f9dd3ab502() : void
      {
         this._f05a9c360d062a482e2169e3 = new CloseMenuFishaoButtonWrapper();
         this._f05a9c360d062a482e2169e3.process(Debug.assertProperty(this.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ზႁ၁ჷၕၒ჌ႅჀჄဪႧၴကႤံၷჱၓ၉ႊၑၿჴႽ႑၄ႉႂქ","စၰჿဘၦႹ၍Ⴁၸ႔ါ၆Ⴟႂჩც")));
         this._f05a9c360d062a482e2169e3.handler = function(param1:Event):void
         {
            controller._4f254116765eb1a39d6712be(_f05a9c360d062a482e2169e3,param1);
         };
      }
      
      protected function _a9ad8d7762fc5821132eb6fa() : void
      {
         this._83895367947ab0213111220d = Debug.assertProperty(this.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဒ჈၏ႉჄჂႅ႞ှႷႢဥფ႟თၺႍၗხႄဂჭဧ့ိကဣၤ","჻ၰႏ၆တႉ၊ၼဠၸႢყၭၸှ၎"));
         this._a4b974e76c5a44da58987e30 = Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挜揺挠捎捻揍掹掭揵挎挿挅挄捜掊揋捡揪挖掳控掳捻挓捁捺掎挙","掏挍插挻按挴捊掯掸捻掛揺揅掜揋掌"));
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

