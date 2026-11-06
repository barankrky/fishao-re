package com.ax3.fishao.view.dialogs.events.controllers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.events.model._9d2dc0500fb727297903d3c5;
   import com.ax3.fishao.view.dialogs.events.model._fd60b7c666c8e6347c1e1c74;
   import com.ax3.fishao.view.dialogs.events.views._c8a1b8aac34e70eff374fd35;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import protocol.api.events.data.EventInfo;
   
   public class _39e00b01dc217536c5ef9659 extends _4b286dc622ac4f91241f92f9
   {
      
      private var _fc70492471e082156a5f90f8:_c8a1b8aac34e70eff374fd35;
      
      private var _4398ca2ba5d6eec98080b5aa:EventInfo;
      
      private var _947dea4bda479244710ffdef:Timer;
      
      private var _47fc25df4ce28d9fa92550cc:_fd60b7c666c8e6347c1e1c74;
      
      private var _f1a550053a7c3930c66c8118:int;
      
      public function _39e00b01dc217536c5ef9659(param1:DisplayObjectContainer)
      {
         this._fc70492471e082156a5f90f8 = new _c8a1b8aac34e70eff374fd35(this,param1);
         super(this._fc70492471e082156a5f90f8);
         this.init();
      }
      
      public function set entity(param1:EventInfo) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:int = -1076033177 ^ -1238513887 ^ -1739282234 ^ -1851496832;
         var _loc5_:int = 0x2F5B2762 ^ 0x7BE1E399 ^ -1349932903 ^ -80515998;
         var _loc6_:String = null;
         this._4398ca2ba5d6eec98080b5aa = param1;
         if(this._4398ca2ba5d6eec98080b5aa != null)
         {
            _loc2_ = _c2ad9d37d7be0097d6d2e977.get(_9d2dc0500fb727297903d3c5._519a3c506d56636e6d647928(this._4398ca2ba5d6eec98080b5aa.type));
            _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_9d2dc0500fb727297903d3c5._924f765dfda41f2df6b2770b(this._4398ca2ba5d6eec98080b5aa.type));
            if(this._4398ca2ba5d6eec98080b5aa.type == _9d2dc0500fb727297903d3c5.EET_CATCH_MOST_FISH_WITH_STAR)
            {
               _loc4_ = Debug.assertProperty(this._4398ca2ba5d6eec98080b5aa.additionalInfo,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႠေႳჯႲႽးႁ၅ზဦკ჋ჭါၮၱუဣჺრဴဳჇႋၫ჌ၐၭင","ဝဢဆ႟პ၉Ⴘ၉ႫၥြမြႂမႰ"));
               _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,_loc4_);
               _loc3_ = _loc3_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,_loc4_);
            }
            else if(this._4398ca2ba5d6eec98080b5aa.type == _9d2dc0500fb727297903d3c5.EET_CATCH_BIGGEST_FISH_WITH_TYPE || this._4398ca2ba5d6eec98080b5aa.type == _9d2dc0500fb727297903d3c5.EET_CATCH_MOST_FISH_WITH_TYPE)
            {
               _loc5_ = Debug.assertProperty(this._4398ca2ba5d6eec98080b5aa.additionalInfo,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႘လဢႶႮလ၁ဎჵბဃီၭံၢသဨ္လსဪჳ","ၿၤၣ჊ႀ၆ჾၓၸ჌ၬჩရ၍ၑအ"));
               _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_NAME,_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("券勱劳剝勳剎勈劬勻勱勏剪刲制刁别勭割","劅労剄剈剭剮剜剄力剷刉勯割则剒剧") + _loc5_));
               _loc3_ = _loc3_.replace(_706c123ff0b2d45829c1bb3e.ESTS_NAME,_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၴႃြ၁ჟჀဠლထႇၸဏႝၜဪဇဳს","ၠႼჼჿႨტ၁ზხႽჹၮႺႉႆႪ") + _loc5_));
               this._fc70492471e082156a5f90f8.fishID = _loc5_;
            }
            if(this._47fc25df4ce28d9fa92550cc.eventCurrent == null)
            {
               this._f1a550053a7c3930c66c8118 = this._4398ca2ba5d6eec98080b5aa.timeLeft;
               this._fc70492471e082156a5f90f8.eventIsStarted = false;
               _loc6_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_COMING_UP);
               _loc6_ = _loc6_.replace(_706c123ff0b2d45829c1bb3e.ESTS_NAME,_loc2_);
               this._fc70492471e082156a5f90f8.description = _loc6_;
            }
            else
            {
               Debug.assertEqual(this._47fc25df4ce28d9fa92550cc.eventCurrent,this._4398ca2ba5d6eec98080b5aa);
               this._f1a550053a7c3930c66c8118 = this._47fc25df4ce28d9fa92550cc.eventCurrentTimeLeft;
               this._fc70492471e082156a5f90f8.eventIsStarted = true;
               this._fc70492471e082156a5f90f8.description = _loc3_;
            }
            this._fc70492471e082156a5f90f8.eventType = this._4398ca2ba5d6eec98080b5aa.type;
            this._4bab1deb1afa8eb5fe1f3691();
         }
      }
      
      private function _62925e8cbd8d2b31bfa695e9(param1:Event = null) : void
      {
         this._f1a550053a7c3930c66c8118 = this._47fc25df4ce28d9fa92550cc.eventCurrent == null ? this._4398ca2ba5d6eec98080b5aa.timeLeft : this._47fc25df4ce28d9fa92550cc.eventCurrentTimeLeft;
         this._fc70492471e082156a5f90f8.timeLeft = this._f1a550053a7c3930c66c8118;
      }
      
      private function init() : void
      {
         this._47fc25df4ce28d9fa92550cc = GameSwf.instance.managerEvents;
      }
      
      private function _4bab1deb1afa8eb5fe1f3691() : void
      {
         this._fb479d9b8e652486ac81660a();
         this._fc70492471e082156a5f90f8.timeLeft = this._f1a550053a7c3930c66c8118;
         this._947dea4bda479244710ffdef = new Timer(0x21C07B38 ^ -1546211488 ^ 0x187C7804 ^ -1704284760);
         this._947dea4bda479244710ffdef.addEventListener(TimerEvent.TIMER,this._62925e8cbd8d2b31bfa695e9);
         this._947dea4bda479244710ffdef.start();
      }
      
      private function _fb479d9b8e652486ac81660a() : void
      {
         var _loc1_:int = -2098083650 ^ 0x12305D47 ^ 0x6779F95E ^ 0x197EC7EF;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x6AF0AD59 ^ 0x2F4EF681 ^ -1658524459 ^ 0x365C1C45))
            {
               case 0:
                  if(this._947dea4bda479244710ffdef == null)
                  {
                     _loc1_ = -1950595716 ^ -336429274 ^ -1286175224 ^ 0x3DDE1718;
                  }
                  else
                  {
                     _loc1_ = 0x7D8E772D ^ 0x17C4B9F9 ^ -13047529 ^ 0x7BB48C8A;
                  }
                  break;
               case 1:
                  this._947dea4bda479244710ffdef.removeEventListener(TimerEvent.TIMER,this._62925e8cbd8d2b31bfa695e9);
                  this._947dea4bda479244710ffdef.stop();
                  this._947dea4bda479244710ffdef = null;
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._fb479d9b8e652486ac81660a();
         this._47fc25df4ce28d9fa92550cc = null;
         this._4398ca2ba5d6eec98080b5aa = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

