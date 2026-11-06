package com.ax3.fishao.view.dialogs.trade.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.ConfirmFrameButtonWrapper;
   import com.ax3.fishao.view.dialogs._af313c654f100405cc2f79a8;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.trade.model._3f231537217a2498942b645b;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   
   public class _d9d33abb6f59866ccacc615d extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _34164019d83b581759d96883:DisplayObjectContainer;
      
      private var _fa4dde56d68c5cdefded2428:_ab72f7798754bf7a51d8acb3;
      
      private var _c7c659cb1d9d7dfb8bab5f05:_af313c654f100405cc2f79a8;
      
      private var _99dc514533774101f2280836:ConfirmFrameButtonWrapper;
      
      public function _d9d33abb6f59866ccacc615d(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._34164019d83b581759d96883 = param2;
         super(param1,this._34164019d83b581759d96883);
         this.init();
      }
      
      public function get buttonCancel() : _af313c654f100405cc2f79a8
      {
         return this._c7c659cb1d9d7dfb8bab5f05;
      }
      
      public function get buttonTrade() : ConfirmFrameButtonWrapper
      {
         return this._99dc514533774101f2280836;
      }
      
      private function init() : void
      {
         this._fa4dde56d68c5cdefded2428 = new _ab72f7798754bf7a51d8acb3(controller,Debug.assertProperty(this._34164019d83b581759d96883,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掦揙挺挝掁换揅掆挕掍挢掛揙揗掃揁捯掙揪捫掗掁接捠振挋","排捴挗採揸挌挙挕掯捃振揎措掴捣揕")));
         this._fa4dde56d68c5cdefded2428.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TITLE_PLAYER);
         this._c7c659cb1d9d7dfb8bab5f05 = new _af313c654f100405cc2f79a8();
         this._c7c659cb1d9d7dfb8bab5f05.process(Debug.assertProperty(this._34164019d83b581759d96883,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揰揖挂揎揀揹掶挱掺挜掚揙挹揓掏捂挒捋揭揃捄捍捩捚控捶揆挚掃换捺揃","描挤掫掳掏揞掻揓掵挶挾採揉掑掮挊")));
         this._c7c659cb1d9d7dfb8bab5f05.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_c7c659cb1d9d7dfb8bab5f05,param1);
         };
         this._99dc514533774101f2280836 = new ConfirmFrameButtonWrapper();
         this._99dc514533774101f2280836.process(Debug.assertProperty(this._34164019d83b581759d96883,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("募刀券勍劙刚劈勨刪劖勺剼劉刎刵劤勉刀副勘勍初勶刬勚刭劼剤勪刂","勝刟刮剁刧务剶加剡労勚劌剟削劲刘")));
         this._99dc514533774101f2280836.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_99dc514533774101f2280836,param1);
         };
         this._c7c659cb1d9d7dfb8bab5f05.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_BUTTON_CANCEL);
         this._99dc514533774101f2280836.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_BUTTON_TRADE_PLAYER);
      }
      
      public function _c9aef71caac01218bc064356(param1:String, param2:String) : void
      {
         var _loc3_:String = null;
         switch(param1)
         {
            case _3f231537217a2498942b645b.ETT_NPC:
               §§push(0x3B0EE3AE ^ -589504222 ^ 0x076DC1E9 ^ -524303515);
               break;
            case _3f231537217a2498942b645b.ETT_PLAYER:
               §§push(-325832110 ^ -619695265 ^ -2077731227 ^ -1280551063);
               break;
            default:
               §§push(-1601556582 ^ -1797853302 ^ -732345678 ^ -536507744);
         }
         switch(§§pop())
         {
            case 0:
               _loc3_ = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TITLE_NPC);
               this._fa4dde56d68c5cdefded2428.text = _loc3_.replace(_706c123ff0b2d45829c1bb3e.ESTS_NAME,param2).toUpperCase();
               this._c7c659cb1d9d7dfb8bab5f05.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_BUTTON_CANCEL);
               this._99dc514533774101f2280836.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_BUTTON_TRADE_NPC);
               break;
            case 1:
               this._fa4dde56d68c5cdefded2428.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TITLE_PLAYER);
               this._c7c659cb1d9d7dfb8bab5f05.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_BUTTON_CANCEL);
               this._99dc514533774101f2280836.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_BUTTON_TRADE_PLAYER);
               break;
            default:
               Debug.assert(false);
         }
      }
   }
}

