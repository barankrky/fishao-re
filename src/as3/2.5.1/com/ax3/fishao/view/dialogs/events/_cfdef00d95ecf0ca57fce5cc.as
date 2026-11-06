package com.ax3.fishao.view.dialogs.events
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import com.ax3.fishao.view.dialogs.events.controllers._39e00b01dc217536c5ef9659;
   import com.ax3.fishao.view.dialogs.events.controllers._ef84f36fa9507300a3bacb7d;
   import com.ax3.fishao.view.dialogs.events.model._fd60b7c666c8e6347c1e1c74;
   import com.ax3.fishao.view.dialogs.events.views._381e768da9d4645a74dba82d;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.MovieClip;
   import flash.events.Event;
   import protocol.api.events.data.EventInfo;
   
   public class _cfdef00d95ecf0ca57fce5cc extends _7d97f02f55f6d17fc707e1e1
   {
      
      private var _00946257906be34c6a0e9125:_fd60b7c666c8e6347c1e1c74;
      
      private var _7f9d7c0777b967a72207d259:_ef84f36fa9507300a3bacb7d;
      
      private var _c3af449e90da47210360041d:_39e00b01dc217536c5ef9659;
      
      private var _1c837389247a596184921a4f:_ab72f7798754bf7a51d8acb3;
      
      private var _6e085cd8384cdbf6bbf4facb:_ebeac595a62fba6d6fcea1c2;
      
      private var _dda9182a934a438a182dc8e8:FrameButtonWrapper;
      
      public function _cfdef00d95ecf0ca57fce5cc()
      {
         super();
         this.init();
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_EVENTS;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var _loc1_:EventInfo = this._00946257906be34c6a0e9125.eventCurrent;
         this._c3af449e90da47210360041d = new _39e00b01dc217536c5ef9659(Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("割劖剈劌剑勗勐劉刻勽制勎刀劀劋刍剈助剶勝勀勫刢劙刃刉刑劳劁勯勪剼剴剎","刮刃刁刋勬勏劮剁列刌刊勓勓劍刡刎")));
         this._c3af449e90da47210360041d.entity = this._00946257906be34c6a0e9125.eventCurrent == null ? this._00946257906be34c6a0e9125.eventFirst : _loc1_;
         this._7f9d7c0777b967a72207d259 = new _ef84f36fa9507300a3bacb7d(Debug.assertProperty(_asset,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捘揹揨挺掀掷振捋捕挟捐捆挍掽捍挏挵振揧掰捜挚揌挛揍挬揝揓揜掮","掌掗捸挸掹掚挻揧揜接挟捁掝掙挙挽")));
         _asset.addChild(this._7f9d7c0777b967a72207d259.view.source);
         this._6e085cd8384cdbf6bbf4facb = new _381e768da9d4645a74dba82d(this,Debug.assertProperty(_asset,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၼု჎၁ဟံႽၱဎႨၮႎႈဍါ႞ႮၽၨქၤဏသၺါၧღၺႵნ","ၓၨဌွကစ႕ၶဝ။သၡ჋ဠႀ჌")));
         this._1c837389247a596184921a4f = new _ab72f7798754bf7a51d8acb3(this,Debug.assertProperty(_asset,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႭႚၯႍლၶႶဎლဋၘဒ၍ၷဃန၌ၟဉ၃ტၧဵဟၐႰ","ႸႯႌှၗჭပ჌ၣ၂ႌჸႻႫმ၎")));
         this._1c837389247a596184921a4f.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_TITLE);
         var _loc2_:MovieClip = Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刪勞勴剱剞剻剼刯刾劵劈则則剙剰勳劕劉剎勹勜勵刈劅刕劲劉剹勍勵勩勌刨刡劚勗","刜削剑刐劁剼勍刄勩剾劸刣剮勔剗募"));
         this._dda9182a934a438a182dc8e8 = new FrameButtonWrapper();
         this._dda9182a934a438a182dc8e8.process(_loc2_);
         this._dda9182a934a438a182dc8e8.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_BUTTON_UPCOMING);
         this._dda9182a934a438a182dc8e8.handler = this._902a7367b31dd24ea16c8fef;
         super._935ac2966ddad68dfc449202();
      }
      
      private function _902a7367b31dd24ea16c8fef(param1:Event) : void
      {
         this.close();
         var _loc2_:_423d4df185e628d2ef86d7ce = app.dialogFactory._e24932ba0d9e6afcd3f49f4b();
         _loc2_.show();
      }
      
      private function init() : void
      {
         this._00946257906be34c6a0e9125 = Debug.assertNotEqual(GameSwf.instance.managerEvents,null);
      }
      
      override public function _82a696edfd066ed03d182af1() : void
      {
         var _loc1_:EventInfo = this._00946257906be34c6a0e9125.eventCurrent;
         if(_loc1_ != null)
         {
            this._7f9d7c0777b967a72207d259.update(_6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_START);
            if(!_loc1_.isShown)
            {
               this._00946257906be34c6a0e9125.onEventShown(_loc1_);
            }
            this._00946257906be34c6a0e9125.updateMembers(-103183243 ^ -342138897 ^ -771227432 ^ -1068838078,-1581716673 ^ -29401638 ^ 0x38548D8A ^ 0x67D33B60);
         }
         this._c6f10994607e6ce36d003f7f();
         super._82a696edfd066ed03d182af1();
      }
      
      private function _c6f10994607e6ce36d003f7f() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         _loc1_ = false;
         _loc2_ = this._00946257906be34c6a0e9125.eventCurrent != null;
         _loc1_ = this._00946257906be34c6a0e9125.eventFirst != null;
         this._c3af449e90da47210360041d.view.source.visible = _loc1_;
         this._6e085cd8384cdbf6bbf4facb.source.visible = !_loc1_;
         this._7f9d7c0777b967a72207d259.view.source.visible = _loc2_;
         _viewLogo.visible = !_loc2_;
         this._dda9182a934a438a182dc8e8.visible = _loc1_;
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:EventInfo = null;
         var _loc3_:EventInfo = null;
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_EVENTS_NEW_EVENTS_RECEIVED:
               §§push(-427687032 ^ -224010290 ^ 0x0341F7C4 ^ 0x17662B82);
               break;
            case _6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_START:
               §§push(0x2F9367C6 ^ -1162386758 ^ 0x2AFC2E91 ^ -1076352020);
               break;
            case _6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_END:
               §§push(0x4425D94E ^ -1684455665 ^ 0x03D7F7A0 ^ -596962845);
               break;
            case _6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_MEMBERS:
               §§push(0x5B3E3098 ^ 0x6891E428 ^ 0x06CEA385 ^ 0x35617736);
               break;
            default:
               §§push(0x7460728A ^ 0x0E8BF010 ^ -379258589 ^ -1819313219);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = this._00946257906be34c6a0e9125.eventFirst;
               this._c3af449e90da47210360041d.entity = _loc2_;
               _loc2_.onEventShown();
               this._c6f10994607e6ce36d003f7f();
               break;
            case 1:
               this._c3af449e90da47210360041d.entity = this._00946257906be34c6a0e9125.eventCurrent;
               this._7f9d7c0777b967a72207d259.update(param1);
               this._c6f10994607e6ce36d003f7f();
               break;
            case 2:
               _loc3_ = this._00946257906be34c6a0e9125.eventFirst;
               if(_loc3_ != null)
               {
                  this._c3af449e90da47210360041d.entity = _loc3_;
               }
               this._c6f10994607e6ce36d003f7f();
               break;
            case 3:
               this._7f9d7c0777b967a72207d259.update(param1);
               break;
            default:
               Debug.assert(false);
         }
      }
      
      override public function close() : void
      {
         this._1c837389247a596184921a4f._90eac9ca552fe54c2ca0299f();
         this._1c837389247a596184921a4f = null;
         this._6e085cd8384cdbf6bbf4facb._90eac9ca552fe54c2ca0299f();
         this._6e085cd8384cdbf6bbf4facb = null;
         this._c3af449e90da47210360041d._90eac9ca552fe54c2ca0299f();
         this._c3af449e90da47210360041d = null;
         this._7f9d7c0777b967a72207d259._90eac9ca552fe54c2ca0299f();
         this._7f9d7c0777b967a72207d259 = null;
         super.close();
      }
   }
}

