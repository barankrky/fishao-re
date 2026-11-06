package com.ax3.fishao.view.dialogs.trade.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._1e21f5ea8cd03625232da448;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl._4a9667f6b725c3d41c719647;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _44160b4f956135a557ea58c1 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _e202ff8dc8564468aa183fd5:DisplayObjectContainer;
      
      private var _5ddb9166320cb1991814b80d:FrameButtonWrapper;
      
      private var _f9165eb7cc9a14d6041025c4:FrameButtonWrapper;
      
      private var _422cda78eed0a4ca795babe8:TextField;
      
      private var _67d6a8dcbb34c98ee18d3205:Array;
      
      private var _793ae17166da63445dca8a8b:_1e21f5ea8cd03625232da448;
      
      private var _693fbae9ea2559d2af9a94f2:DisplayObject;
      
      private var _0db07ceaf53149907118cc94:_4a9667f6b725c3d41c719647;
      
      public function _44160b4f956135a557ea58c1(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._e202ff8dc8564468aa183fd5 = param2;
         super(param1,this._e202ff8dc8564468aa183fd5);
         this.init();
      }
      
      public function get buttonPagePrevious() : FrameButtonWrapper
      {
         return this._5ddb9166320cb1991814b80d;
      }
      
      public function get buttonPageNext() : FrameButtonWrapper
      {
         return this._f9165eb7cc9a14d6041025c4;
      }
      
      public function get viewDropdown() : _4a9667f6b725c3d41c719647
      {
         return this._0db07ceaf53149907118cc94;
      }
      
      public function get itemsOnPage() : int
      {
         return this._793ae17166da63445dca8a8b.itemsOnPage;
      }
      
      public function set items(param1:Array) : void
      {
         var _loc2_:int = 0x19922259 ^ 0x1408795A ^ -686675092 ^ -650781197;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-137449456 ^ 0x70882B ^ -398894252 ^ 0x1C3ACEF1))
            {
               case 0:
                  return;
               case 1:
                  this._67d6a8dcbb34c98ee18d3205 = param1;
                  this._793ae17166da63445dca8a8b.items = this._67d6a8dcbb34c98ee18d3205;
                  return;
               case 2:
                  if(param1 == this._67d6a8dcbb34c98ee18d3205)
                  {
                     _loc2_ = -948910350 ^ 0x3BB9D941 ^ -1026400974 ^ 0x3DA6EF1F;
                  }
                  else
                  {
                     _loc2_ = 0x24EEFA1C ^ -773935084 ^ 0x47DA0853 ^ -1319637052;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         var viewDropdown:DisplayObjectContainer = null;
         this._693fbae9ea2559d2af9a94f2 = Debug.assertProperty(this._e202ff8dc8564468aa183fd5,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挧掑掻揵捇捧揦捿捪捅捷揙捾排揁揊挞揻掹挫捞挙掋掙挱掎掍捪捷掬掽掿挷捌揚挢掎掔掎捆捅挳揪掦揕掸捓捓挔揀","揌換捒挼掀捙掣掄掳捌捋揙掑掲掇捹"));
         this._793ae17166da63445dca8a8b = new _1e21f5ea8cd03625232da448(controller);
         var _temp_3:* = this._793ae17166da63445dca8a8b;
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = -622988042 ^ -124435847 ^ -466100166 ^ -964733258;
         _temp_3.size = new Point(_temp_1,_temp_1);
         this._793ae17166da63445dca8a8b.offset = new Point(0x3511A4F8 ^ 0x3AAD5BF6 ^ 0x013758FF ^ 0x0E8BA7E4,0x398FAB1B ^ 0x5D67DBC6 ^ -629876229 ^ -1097029321);
         this._793ae17166da63445dca8a8b.gap = new Point(-299397324 ^ 0x313CAD6F ^ 0x43C1B3C4 ^ -1663397501,0x4B73322C ^ 0x6F789D77 ^ 0x79C5607C ^ 0x5DCECF2D);
         this._793ae17166da63445dca8a8b.source.x = this._693fbae9ea2559d2af9a94f2.x;
         this._793ae17166da63445dca8a8b.source.y = this._693fbae9ea2559d2af9a94f2.y;
         this._e202ff8dc8564468aa183fd5.addChild(this._793ae17166da63445dca8a8b.source);
         this._422cda78eed0a4ca795babe8 = Debug.assertProperty(this._e202ff8dc8564468aa183fd5,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剽勗剔剽勻刋刀剎勴劔剀務勵刑劝刕劌刷勏剠募刬判剥剐勗剟劵","勔励刑剡劥剪剅劆勴勎劤刯劯剆勯刈"),TextField);
         this._5ddb9166320cb1991814b80d = new FrameButtonWrapper();
         this._5ddb9166320cb1991814b80d.process(Debug.assertProperty(this._e202ff8dc8564468aa183fd5,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၟၪთၹၛჷ႕လႲႪၯႋႌ჋ၗ၉ხဿႺნၕၵქၛ၄ီ႒ოႫခრေ჌ငႾခ჉ူ၇ဥဈ၂ၫၒ","ႩးႚၰႊဠტვးგၥჺშဳႹქ"),DisplayObjectContainer));
         this._5ddb9166320cb1991814b80d.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_5ddb9166320cb1991814b80d,param1);
         };
         this._f9165eb7cc9a14d6041025c4 = new FrameButtonWrapper();
         this._f9165eb7cc9a14d6041025c4.process(Debug.assertProperty(this._e202ff8dc8564468aa183fd5,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挺捲挌捞挘揱捊揨掭捾捫捜捀挘揔掅挓掂揼揓捨捲掹揰捥掻捁授掰挍掵揇捖援捫揨","接捏捐揦揨掵揻捿捺捅揤捪捈揠捿掿"),DisplayObjectContainer));
         this._f9165eb7cc9a14d6041025c4.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_f9165eb7cc9a14d6041025c4,param1);
         };
         viewDropdown = Debug.assertProperty(this._e202ff8dc8564468aa183fd5,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揞揧揺揦掩挻揚捜揠揨控挏揌掝捈揚掝挽揍挳揕掁挿捇挤揽揍揃捬掜捖挠","捼掩揾揨挐掶捠捡挬控掺捉揅捘捻挈"),DisplayObjectContainer);
         this._e202ff8dc8564468aa183fd5.setChildIndex(viewDropdown,this._e202ff8dc8564468aa183fd5.numChildren - 1);
         this._0db07ceaf53149907118cc94 = new _4a9667f6b725c3d41c719647();
         this._0db07ceaf53149907118cc94.process(viewDropdown);
         this._0db07ceaf53149907118cc94.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_0db07ceaf53149907118cc94,param1);
         };
      }
      
      public function _b9df93918b8abc1a2d4f1a81(param1:int, param2:int) : void
      {
         this._422cda78eed0a4ca795babe8.text = param1.toString() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၸ၂ါၐფီႊვჷჇ","စၨჀႎწဘႰბႂၜ၊Ⴄဓჼိၙ") + _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_OF) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勏勋勻删剌劗劅劜刊刐","勔劔剄勭劇到剰剙剢勈刾刟刹剋劔剃") + param2.toString();
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._5ddb9166320cb1991814b80d.handler = null;
         this._f9165eb7cc9a14d6041025c4.handler = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

