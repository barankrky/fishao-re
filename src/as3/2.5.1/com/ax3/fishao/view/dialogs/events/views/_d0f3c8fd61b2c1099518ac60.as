package com.ax3.fishao.view.dialogs.events.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._1e21f5ea8cd03625232da448;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _d0f3c8fd61b2c1099518ac60 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _6827ebd8b766cc5b90f07143:DisplayObjectContainer;
      
      private var _2613f9997a2e4fc821ec84da:_ab72f7798754bf7a51d8acb3;
      
      private var _413b12eccbaccbd7c79fd3ad:_1e21f5ea8cd03625232da448;
      
      private var _393509f1e29b8f243af54bd0:TextField;
      
      private var _16a65a9924da68c4aa830849:FrameButtonWrapper;
      
      private var _34fb75121e94ef1ec35b16f6:FrameButtonWrapper;
      
      private var _3aaa74b867f45b94b0a9e785:FrameButtonWrapper;
      
      private var _162cf80e9dd5e742e67a8ce7:TextField;
      
      private var _d472f9a0c3fefd085344fe7f:TextField;
      
      private var _b7fb71a03477be4bea589987:TextField;
      
      public function _d0f3c8fd61b2c1099518ac60(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._6827ebd8b766cc5b90f07143 = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._413b12eccbaccbd7c79fd3ad.items = param1;
      }
      
      public function get buttonPrev() : FrameButtonWrapper
      {
         return this._16a65a9924da68c4aa830849;
      }
      
      public function get buttonNext() : FrameButtonWrapper
      {
         return this._34fb75121e94ef1ec35b16f6;
      }
      
      public function get buttonBack() : FrameButtonWrapper
      {
         return this._3aaa74b867f45b94b0a9e785;
      }
      
      public function get itemsOnPage() : int
      {
         return this._413b12eccbaccbd7c79fd3ad.itemsOnPage;
      }
      
      public function get labelPage() : TextField
      {
         return this._393509f1e29b8f243af54bd0;
      }
      
      private function init() : void
      {
         var buttonBack:MovieClip = null;
         this._2613f9997a2e4fc821ec84da = new _ab72f7798754bf7a51d8acb3(controller,Debug.assertProperty(this._6827ebd8b766cc5b90f07143,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刐剉剎勼動利劇刭劭劥勾劥勅划劔利割刱剤勰刡割劥剅削刳","剟劸劙刔劥刓刂励加剜刱劮勐勜創勼")));
         this._2613f9997a2e4fc821ec84da.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_UPCOMING_TITLE);
         this._162cf80e9dd5e742e67a8ce7 = Debug.assertProperty(this._6827ebd8b766cc5b90f07143,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捦捎挑捃捤揱挣換揝捤掾控揝捍捲捕挆揙揻掀挴提掸捬捉揁挈捎揤提排捾挢揤揱挥","揸掬掸捨揯挾捭挿揗捶捸掻揮揞挅挓"),TextField);
         this._162cf80e9dd5e742e67a8ce7.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_UPCOMING_FIELD_TYPE);
         this._d472f9a0c3fefd085344fe7f = Debug.assertProperty(this._6827ebd8b766cc5b90f07143,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႑ၣၑႚႃჂႵီႺၙကႢ႞Ⴉဝၠ႟၁ဆဠჼႱႭေႸႛცႎჳပနიရငၜႫ႒Ⴏ჌ႵႭ჋ၕ၃ၙ၎","Ⴙ၊ဴ႟ၿ჈၅ၟნၣლჹ჋Ⴟ၉ၒ"),TextField);
         this._d472f9a0c3fefd085344fe7f.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_UPCOMING_FIELD_START_TIME);
         this._b7fb71a03477be4bea589987 = Debug.assertProperty(this._6827ebd8b766cc5b90f07143,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჟ႕ၳၳრმႃစထဤႢႋႶၦ၄ဪე჻႗Ⴏ႙ႋႇ჏Ⴐင၇၄ლဎၙ႒ၰႌႵၵၾქၤგဘႨပ႑","჋კႁၢ჌မჹႃႉႪၥფშ჈ლႚ"),TextField);
         this._b7fb71a03477be4bea589987.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_UPCOMING_FIELD_DURATION);
         this._413b12eccbaccbd7c79fd3ad = new _1e21f5ea8cd03625232da448(controller);
         this._413b12eccbaccbd7c79fd3ad.size = new Point(0x13F5163C ^ -36099270 ^ 0x192939C6 ^ -150666047,-744107706 ^ -1361004231 ^ 0x2BC00AF0 ^ 0x56856284);
         this._413b12eccbaccbd7c79fd3ad.offset = new Point(0x30753226 ^ -1019488722 ^ 0x55258E05 ^ -1502909927,-238705379 ^ -1159268487 ^ 0x02CF8A48 ^ 0x49ECD879);
         this._413b12eccbaccbd7c79fd3ad.gap = new Point(-1347177378 ^ -526931914 ^ 0x3157456A ^ 0x7E735902,0x0851552F ^ -869555715 ^ 0x6B9D6E66 ^ -1343776080);
         this._6827ebd8b766cc5b90f07143.addChild(this._413b12eccbaccbd7c79fd3ad.source);
         buttonBack = Debug.assertProperty(this._6827ebd8b766cc5b90f07143,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("按挢換掱捿揯捭挅揧捱捆掽挰捎捃掬掎挭掣挱捛揙揳挠挖掎捤捾","揊揀排揕掀挩捺捎接捧捃捳授挔捄捹"));
         this._3aaa74b867f45b94b0a9e785 = new FrameButtonWrapper();
         this._3aaa74b867f45b94b0a9e785.process(buttonBack);
         this._3aaa74b867f45b94b0a9e785.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_UPCOMING_BUTTON_BACK);
         this._3aaa74b867f45b94b0a9e785.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_3aaa74b867f45b94b0a9e785,param1);
         };
         this._393509f1e29b8f243af54bd0 = Debug.assertProperty(this._6827ebd8b766cc5b90f07143,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揍揸捝捯捦揸揟掋掝接探授挪揟捠掴掲挃捄揟掰掶挡掕捄掮","挍捩掫挸捉揈揊掭揈掦掗掬揔挻挟控"),TextField);
         this._16a65a9924da68c4aa830849 = new FrameButtonWrapper();
         this._16a65a9924da68c4aa830849.process(Debug.assertProperty(this._6827ebd8b766cc5b90f07143,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挑挃掜挞揆揆捅挣捱挃挩掏掿揜挫揣掌捭掦掸捣挺揆揃挘挕揧揝","捜掓揅持挙捍挪掣揥接挩振揥掛掚捆")));
         this._16a65a9924da68c4aa830849.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_16a65a9924da68c4aa830849,param1);
         };
         this._34fb75121e94ef1ec35b16f6 = new FrameButtonWrapper();
         this._34fb75121e94ef1ec35b16f6.process(Debug.assertProperty(this._6827ebd8b766cc5b90f07143,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勒刚努刄剐劢劐刟劖分刣剩勹刢劎刀刄刌刣刑刮劂勚劦刑勐劌创","勛刓劵切刲劣劲劇劧剛勾创剼劥剑募")));
         this._34fb75121e94ef1ec35b16f6.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_34fb75121e94ef1ec35b16f6,param1);
         };
      }
   }
}

