package com.ax3.fishao.view.dialogs.furniture_factory.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._8ecc041b6b4976ac13bca1ac;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.collections.tabs._a02f229c228517bec7b7f341;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _159660f20e136e10a432fb37 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _a9ad9d4a49760aa3df491c19:DisplayObjectContainer;
      
      private var _94ccb7a6fd2d83e6d3304470:_ab72f7798754bf7a51d8acb3;
      
      private var _98b74f7843216a194beaa769:_73899a4de8f83c8d2c26f545;
      
      private var _db11a40b54c65cd196f6ea83:FrameButtonWrapper;
      
      private var _09ddc324baba3f7e1d8c1354:_8ecc041b6b4976ac13bca1ac;
      
      private var _505c13ab60de8e7e0e80eb57:_a02f229c228517bec7b7f341;
      
      public function _159660f20e136e10a432fb37(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._a9ad9d4a49760aa3df491c19 = param2;
         super(param1,param2);
         this.init();
      }
      
      public function get buttonOpen() : FrameButtonWrapper
      {
         return this._db11a40b54c65cd196f6ea83;
      }
      
      public function get buttonSkipTime() : _8ecc041b6b4976ac13bca1ac
      {
         return this._09ddc324baba3f7e1d8c1354;
      }
      
      public function set npcMessage(param1:String) : void
      {
         this._98b74f7843216a194beaa769.text = param1;
      }
      
      public function get viewTabs() : _a02f229c228517bec7b7f341
      {
         return this._505c13ab60de8e7e0e80eb57;
      }
      
      private function init() : void
      {
         var labelMessageSource:TextField = null;
         this._94ccb7a6fd2d83e6d3304470 = new _ab72f7798754bf7a51d8acb3(controller,Debug.assertProperty(this._a9ad9d4a49760aa3df491c19,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揬掆掦揳捌探挂捰揻掻掵挾揲掚挭挾挌挡掉挞掆揧掼挮挙挖","揣捚捤捕掹掙掤揽掃挐捪捑揀捯採揑")));
         this._94ccb7a6fd2d83e6d3304470.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_FURNITURE_FACTORY_TITLE);
         labelMessageSource = Debug.assertProperty(this._a9ad9d4a49760aa3df491c19,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၈ႇ၀ၣმ်ႼၐჱეအჇၟას႒ီჼဂဣႢၙႮოႾၓჁႧჟ჌჈ဤ","ဌႈၹჴწჵၰႭვ႑ჽၓჲ၆ၲრ"),TextField);
         this._98b74f7843216a194beaa769 = new _73899a4de8f83c8d2c26f545(labelMessageSource);
         this._db11a40b54c65cd196f6ea83 = new FrameButtonWrapper();
         this._db11a40b54c65cd196f6ea83.process(Debug.assertProperty(this._a9ad9d4a49760aa3df491c19,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勎刮剦副刞刞劊功剹剒剨勻劅劾劳剔刀刔剛剭劭劐勼努剡勠刱勄","刓刪劸勠剋別刯勦勢劶勪刞勱剠劤劊")));
         this._db11a40b54c65cd196f6ea83.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_db11a40b54c65cd196f6ea83,param1);
         };
         this._db11a40b54c65cd196f6ea83.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_FURNITURE_FACTORY_BUTTON_OPEN);
         this._09ddc324baba3f7e1d8c1354 = new _8ecc041b6b4976ac13bca1ac();
         this._09ddc324baba3f7e1d8c1354.process(Debug.assertProperty(this._a9ad9d4a49760aa3df491c19,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("指措挱揔捶揦挱捕揕揕捤挃揫揚捭捬振捄掁揨揈揦捇掉掃挃掑揝掭掽揧掠挰挩揱揅","挰挋揖捤挡揃捗揀揤挀挜挺措捲掣接")));
         this._09ddc324baba3f7e1d8c1354.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_09ddc324baba3f7e1d8c1354,param1);
         };
         this._09ddc324baba3f7e1d8c1354.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_FURNITURE_FACTORY_BUTTON_SKIP_TIME);
         this._e7b0e9a218d6b25ca2a22bbd();
      }
      
      private function _e7b0e9a218d6b25ca2a22bbd() : void
      {
         this._505c13ab60de8e7e0e80eb57 = new _a02f229c228517bec7b7f341(controller);
         this._a9ad9d4a49760aa3df491c19.addChild(this._505c13ab60de8e7e0e80eb57.source);
         this._505c13ab60de8e7e0e80eb57._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_TAB_ACTIVE));
         this._505c13ab60de8e7e0e80eb57._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_TAB_COMPLETED));
         this._505c13ab60de8e7e0e80eb57.source.x = -1081187482 ^ 0x4093665A ^ -793058810 ^ 0x2FA7E77C;
         this._505c13ab60de8e7e0e80eb57.source.y = 0x0E6626F8 ^ 0x4F8A6A55 ^ -1157683059 ^ -82614990;
      }
      
      private function _3e5de8a313ee4d5713fa9a18() : void
      {
         if(this._505c13ab60de8e7e0e80eb57 == null || this._505c13ab60de8e7e0e80eb57.source.parent != this._a9ad9d4a49760aa3df491c19)
         {
            return;
         }
         this._a9ad9d4a49760aa3df491c19.removeChild(this._505c13ab60de8e7e0e80eb57.source);
         this._505c13ab60de8e7e0e80eb57._90eac9ca552fe54c2ca0299f();
         this._505c13ab60de8e7e0e80eb57 = null;
      }
      
      public function _d9e4945867b18919965e4565() : void
      {
         this._3e5de8a313ee4d5713fa9a18();
         this._e7b0e9a218d6b25ca2a22bbd();
      }
   }
}

