package com.ax3.fishao.view.dialogs.base.views.implementations.countdown
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._1e21f5ea8cd03625232da448;
   import com.ax3.fishao.view.dialogs.base.views.implementations._5d4744298d281de23246856d;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _9a5809d10c706185473ce85a extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _f51f76bb5c41ac56cd258dd0:DisplayObjectContainer;
      
      private var _4916c3c889aa73b355cca1ed:TextField;
      
      private var _57842ee873ba0cbf14832ff0:TextField;
      
      private var _dab74a746a0543d7dc33f275:_5d4744298d281de23246856d;
      
      private var _7a197d7e45dedc899950d346:MovieClip;
      
      private var _82110cd8d98d24495125e976:FishaoButtonWrapper;
      
      private var _bd7f310f2ab0ee98f30aa9f6:FishaoButtonWrapper;
      
      private var _fb090e2b5eeb1c8acfd5ffe2:DisplayObjectContainer;
      
      private var _c656fcad64c3acdfa1df0cf1:DisplayObjectContainer;
      
      private var _dff2a903cbdca73a488ba386:_1e21f5ea8cd03625232da448;
      
      public function _9a5809d10c706185473ce85a(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._f51f76bb5c41ac56cd258dd0 = param2;
         super(param1,this._f51f76bb5c41ac56cd258dd0);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._dff2a903cbdca73a488ba386.items = param1;
      }
      
      public function get viewMaximized() : DisplayObjectContainer
      {
         return this._fb090e2b5eeb1c8acfd5ffe2;
      }
      
      public function get viewMinimized() : DisplayObjectContainer
      {
         return this._c656fcad64c3acdfa1df0cf1;
      }
      
      public function get buttonMinimize() : FishaoButtonWrapper
      {
         return this._82110cd8d98d24495125e976;
      }
      
      public function get buttonMaximize() : FishaoButtonWrapper
      {
         return this._bd7f310f2ab0ee98f30aa9f6;
      }
      
      public function set description(param1:String) : void
      {
         this._4916c3c889aa73b355cca1ed.text = param1;
      }
      
      public function set iconType(param1:String) : void
      {
         this._7a197d7e45dedc899950d346.gotoAndStop(param1);
      }
      
      public function get labelDescription() : TextField
      {
         return this._4916c3c889aa73b355cca1ed;
      }
      
      public function get labelTime() : TextField
      {
         return this._57842ee873ba0cbf14832ff0;
      }
      
      public function get viewProgress() : _5d4744298d281de23246856d
      {
         return this._dab74a746a0543d7dc33f275;
      }
      
      private function init() : void
      {
         var viewProgress:DisplayObjectContainer = null;
         this._4916c3c889aa73b355cca1ed = Debug.assertProperty(this._f51f76bb5c41ac56cd258dd0,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("割刌劘刱創劕剴劑剆勸刺勪剈劭創则劅勢刵则刓劅剓剿劈勤剅剌剡剾刕劉勪劋剿刴劏劏剀勨","励勿剁剈刻刴劈劥勾劫勭剸勣劺剓務"),TextField);
         this._57842ee873ba0cbf14832ff0 = Debug.assertProperty(this._f51f76bb5c41ac56cd258dd0,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刉劉劝勣割剥劭剣勫刕劆剦劰剥勭剱到劥剦動剩则前刕刽劆","勞剬劸努列刳劆剳刍勇劂劇劋劰劥剾"),TextField);
         this._7a197d7e45dedc899950d346 = Debug.assertProperty(this._f51f76bb5c41ac56cd258dd0,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揽挐採掩掔授挋揖揅揅揎掞捪挌挡揹揜捬挢揗掭掜換掚","挦捗挏挝挂捠掷掻捈揹挎损捯提掼掣"),MovieClip);
         viewProgress = Debug.assertProperty(this._f51f76bb5c41ac56cd258dd0,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挍挢掳持措挸探掺捴挈挟挴揢捠据挡揥掃捃捷揵挱揊揨挝揺挃掄揙据捘挀","捼措捷捖揚挍掏挡揻捴揽揬捵插掂握"));
         this._dab74a746a0543d7dc33f275 = new _5d4744298d281de23246856d(controller,viewProgress);
         this._82110cd8d98d24495125e976 = new FishaoButtonWrapper();
         this._82110cd8d98d24495125e976.process(Debug.assertProperty(this._f51f76bb5c41ac56cd258dd0,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挵掓捬掟揣揸捃掾揹挘掞掷掏挗揗捙掊揝掹掑捝揂揝揥捴挤挽揕掎揕揕揠捙掇捱掇","挓捁捲捱挢捈捆揚提掇揗挿挶挪掁挎")));
         this._82110cd8d98d24495125e976.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_82110cd8d98d24495125e976,param1);
         };
         this._bd7f310f2ab0ee98f30aa9f6 = new FishaoButtonWrapper();
         this._bd7f310f2ab0ee98f30aa9f6.process(Debug.assertProperty(this._f51f76bb5c41ac56cd258dd0,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("削勄刹刣剾勢劍刣劔刴刍勫刅刐勻刂剝劦剥劜勈勥創勴勵劢刑剺劃剋办劒剓勷务利","剾勜删勭勆剼別别勭勦刮勚刻劢刍剝")));
         this._bd7f310f2ab0ee98f30aa9f6.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_bd7f310f2ab0ee98f30aa9f6,param1);
         };
         this._fb090e2b5eeb1c8acfd5ffe2 = Debug.assertProperty(this._f51f76bb5c41ac56cd258dd0,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剒则剤劔勩勎刵刄势刓剏刃剫劝剰剅劷剥勫勇勊勗勓劮剅刪勂勈勩劙刅刭刌勌","劦剔劸劂劈刓劐勢刋刕刣力办劒则勅"));
         this._c656fcad64c3acdfa1df0cf1 = Debug.assertProperty(this._f51f76bb5c41ac56cd258dd0,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揑捥挿捗挫掄揣捌換捧捏揵掤揻揰授揞掣揢挼掸挱捘捨挶揰挹捊挞揗持捁挻掟","掺揀挸挾揝挦揺掵揟揨挥捁挨提捝挍"));
         this._dff2a903cbdca73a488ba386 = new _1e21f5ea8cd03625232da448(controller);
         this._dff2a903cbdca73a488ba386.gap = new Point(-352854995 ^ -1527066887 ^ 0x29972489 ^ 0x679A365D,-2042567689 ^ -452952946 ^ -473395688 ^ -2138566301);
         this._dff2a903cbdca73a488ba386.size = new Point(-347787217 ^ 0x0E5DC468 ^ -442513692 ^ 0x8732A2,-59463177 ^ -1976250763 ^ -368039384 ^ -1672458833);
         this._dff2a903cbdca73a488ba386.offset = new Point(0x2BA365D7 ^ 0x1F0700EC ^ 0x19C9E99B ^ 0x2D6D8CB2,-632990692 ^ -1796491299 ^ 0x5E6856B7 ^ 0x10C6B53E);
         this._fb090e2b5eeb1c8acfd5ffe2.addChild(this._dff2a903cbdca73a488ba386.source);
         _fc17178734ae7cc816dbcc2f(false,false,true,false,true);
      }
   }
}

