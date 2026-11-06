package com.ax3.fishao.view.dialogs.tournaments.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._665c68e6c732fb052d549df8;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._1e21f5ea8cd03625232da448;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _56ed3d2d857d2a48a522b16e extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _a1e39a842205840abd68211c:DisplayObjectContainer;
      
      private var _e2f9651eaf2789ff8cdd6fa2:_ab72f7798754bf7a51d8acb3;
      
      private var _e80a5e41dcdb3d39bd65dcc0:_665c68e6c732fb052d549df8;
      
      private var _d78ecca5148372919f4cb62e:TextField;
      
      private var _a86636246bd974de9dea8989:TextField;
      
      private var _4dc760c39024f75228f6dcab:TextField;
      
      private var _79da16583a60676b4cfc3415:TextField;
      
      private var _7bb343fd52b63e121ca40a09:TextField;
      
      private var _a48ec184308f615cd6bf8998:FrameButtonWrapper;
      
      private var _cfa85065e3c41c4e8532948d:FrameButtonWrapper;
      
      private var _6f31e9311467576987831c06:FrameButtonWrapper;
      
      private var _d422803f822210bf9b550d44:Array;
      
      private var _14005e41c9638caff5536aa8:_1e21f5ea8cd03625232da448;
      
      public function _56ed3d2d857d2a48a522b16e(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._a1e39a842205840abd68211c = param2;
         super(param1,param2);
         this.init();
      }
      
      public function get buttonPrevious() : FrameButtonWrapper
      {
         return this._a48ec184308f615cd6bf8998;
      }
      
      public function get buttonNext() : FrameButtonWrapper
      {
         return this._cfa85065e3c41c4e8532948d;
      }
      
      public function get buttonOk() : FrameButtonWrapper
      {
         return this._6f31e9311467576987831c06;
      }
      
      public function get labelPage() : TextField
      {
         return this._7bb343fd52b63e121ca40a09;
      }
      
      public function get itemsOnPage() : int
      {
         return this._14005e41c9638caff5536aa8.itemsOnPage;
      }
      
      public function set message(param1:String) : void
      {
         this._e80a5e41dcdb3d39bd65dcc0.text = param1;
      }
      
      public function set items(param1:Array) : void
      {
         this._14005e41c9638caff5536aa8.items = param1;
      }
      
      public function set tournamentType(param1:String) : void
      {
         var _loc2_:String = _85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_RESULTS_FIELD_CRITERIA_TEMPLATE.replace(_706c123ff0b2d45829c1bb3e.ESTS_TYPE,param1);
         this._4dc760c39024f75228f6dcab.text = _c2ad9d37d7be0097d6d2e977.get(_loc2_);
      }
      
      public function init() : void
      {
         var labelMessage:TextField = null;
         this._d422803f822210bf9b550d44 = [];
         this._e2f9651eaf2789ff8cdd6fa2 = new _ab72f7798754bf7a51d8acb3(controller,Debug.assertProperty(this._a1e39a842205840abd68211c,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掠挣揗捊揳掫揋掕揑掻捆揇挹揨挑挡揯插挑挅挿揦捥挎挮揤","掱揃揔捖指揋掫捰捀捬掕捐掱捶挶捞")));
         this._e2f9651eaf2789ff8cdd6fa2.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_RESULTS_TITLE);
         this._14005e41c9638caff5536aa8 = new _1e21f5ea8cd03625232da448(controller);
         this._14005e41c9638caff5536aa8.size = new Point(0x0C0600BF ^ 0x1748CDF4 ^ -628281328 ^ -1044120230,0x703D91CA ^ 0x3F703180 ^ 0x3AA0107A ^ 0x75EDB037);
         this._14005e41c9638caff5536aa8.gap = new Point(-1503247267 ^ -1692703033 ^ -1234246652 ^ -1961638242,-1261508198 ^ -1246072134 ^ 0x3C3B906D ^ 0x3D4F0B4B);
         this._a1e39a842205840abd68211c.addChild(this._14005e41c9638caff5536aa8.source);
         labelMessage = Debug.assertProperty(this._a1e39a842205840abd68211c,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勐剌刵前刵剨勛刂励劁勰勮功刹劺刄剳剚创刲劧刷刀勰劥列剨勴劼刏刌剹","切刈勹刉刵劾剓剶刐剴刴刷劦剤刖勃"),TextField);
         this._e80a5e41dcdb3d39bd65dcc0 = new _665c68e6c732fb052d549df8(labelMessage);
         this._d78ecca5148372919f4cb62e = Debug.assertProperty(this._a1e39a842205840abd68211c,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揔挶接捱插捤捕揝揀挗掃掻捱揼揇掭插挗挮挿捉挳挰提提掕挬捅捚捫挧措挅捙捛挏挭挨捭挤掎排揘掎","掌挶挢掙捽挝揚揎挝揼揩揳掫揌捀揃"),TextField);
         this._d78ecca5148372919f4cb62e.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_RESULTS_FIELD_POSITION);
         this._a86636246bd974de9dea8989 = Debug.assertProperty(this._a1e39a842205840abd68211c,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剺劄勡刢勿劾劢劋劼刀勑勠剜刵劤勮勇劵刔剔剀勹劥剹剰劍勏剕募劯划剓勓募剷勊刁効","劕勊劥劇勆勷劷剹刱助刽劆劎勵勘刁"),TextField);
         this._a86636246bd974de9dea8989.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_RESULTS_FIELD_LOGIN);
         this._4dc760c39024f75228f6dcab = Debug.assertProperty(this._a1e39a842205840abd68211c,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၹჟဿၥခ၄လაႥပဇႅ၎ოဤၝႷჲႆဲ၀ხႌႦႢ႓ၒဓჭလჿယჩငၝနၚဒႎ჊ცძ၌ဈ","ႺაႮသၠ၉ႡၓႥႷႚჁყრြႀ"),TextField);
         this._79da16583a60676b4cfc3415 = Debug.assertProperty(this._a1e39a842205840abd68211c,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("排挵揥掀捻掃掿揷挔掳掜挢描掀掳捋挴掚挃推捵揆捇揯揼揊捒捼掓捳掸挶挝揑授挑指挒挰捰","揋捣掱挒捣掄捰捭按提指挐掲捔捡揷"),TextField);
         this._79da16583a60676b4cfc3415.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_RESULTS_FIELD_REWARDS);
         this._7bb343fd52b63e121ca40a09 = Debug.assertProperty(this._a1e39a842205840abd68211c,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劃劕剜勘勼劮刬劯刟刧勶勹勯劮劇剒勡刞剝刏劑劸勐割勉刱","勴刾劸務剺勵刡劈剛勈勨勖刣剞剓劮"),TextField);
         this._cfa85065e3c41c4e8532948d = new FrameButtonWrapper();
         this._cfa85065e3c41c4e8532948d.process(Debug.assertProperty(this._a1e39a842205840abd68211c,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚剪勱劉刖勪剳勫劦勉刚剼剭刡制勁剎剥劻剏剐劄利勸剑剴剱劯","勪勶剷制劐刷刷創剠劑剴剞刺剚勫剝"),DisplayObjectContainer));
         this._cfa85065e3c41c4e8532948d.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_cfa85065e3c41c4e8532948d,param1);
         };
         this._a48ec184308f615cd6bf8998 = new FrameButtonWrapper();
         this._a48ec184308f615cd6bf8998.process(Debug.assertProperty(this._a1e39a842205840abd68211c,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揢掦掶揼掶挴揚揥捓插挒揔揥掗揈捛掃揙掼按捓挃挷掭揳捑揍挵掆揳探挃掁挢掵振","揭捞揔揜揱揎揌捻揆掶捜探挴控揍揕"),DisplayObjectContainer));
         this._a48ec184308f615cd6bf8998.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_a48ec184308f615cd6bf8998,param1);
         };
         this._6f31e9311467576987831c06 = new FrameButtonWrapper();
         this._6f31e9311467576987831c06.process(Debug.assertProperty(this._a1e39a842205840abd68211c,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劐勜剙划勡勽勺劾剦刡刎刹切前剹勇劳刮刯剺勗刍务判","刖勄勈勨则剞勲刞劓勣勗劂剚到剣劶"),DisplayObjectContainer));
         this._6f31e9311467576987831c06.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_6f31e9311467576987831c06,param1);
         };
         this._6f31e9311467576987831c06.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_RESULTS_BUTTON_OK);
      }
      
      override public function _63b9041bf855ea499da8554e(param1:Boolean) : void
      {
         this._14005e41c9638caff5536aa8._63b9041bf855ea499da8554e(param1);
         this._14005e41c9638caff5536aa8.source.x = -1313805863 ^ -1687348630 ^ -829048451 ^ -465024304;
         this._14005e41c9638caff5536aa8.source.y = -341651451 ^ -811126381 ^ -895723488 ^ -291915488;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._cfa85065e3c41c4e8532948d.handler = null;
         this._a48ec184308f615cd6bf8998.handler = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

