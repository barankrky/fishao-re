package com.ax3.fishao.view.dialogs.sales.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._009582d19d1c5695c49f2ed8;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.brokenfunction.json.decodeJson;
   
   public class _3c7865603f2078c583a0f674 extends _30373f6dfb5b92bd81a483eb
   {
      
      private var _330923b155a21a0618452ded:Number;
      
      public function _3c7865603f2078c583a0f674()
      {
         super();
      }
      
      public function get bonusRate() : Number
      {
         return this._330923b155a21a0618452ded;
      }
      
      override public function set isShown(param1:Boolean) : void
      {
         super.isShown = param1;
         GameSwf._129977da7249dc6dfa32c5f9(_6b63fd0a4028eb279b227831.ECU_SALES_SALE_SHOWN);
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         var _loc2_:String = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挮指挒捡挙捜挗揩揵揅捐揑掳挗捛捁持捛掾捩揍措揎捲掸掀挿捵捖捐捬掇掆挄揸挢揟掣","掙挎揯捇挔挵捓揦揵掿掂挭捔掻揘挰"));
         var _loc3_:Object = decodeJson(_loc2_);
         this._330923b155a21a0618452ded = Debug.assertProperty(_loc3_,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("သჼၓၿჵဓსჁၥႮჵრჸၭႻၐဒာဎႃဂၧშჵ჈ဣႤთ","ႬჷႻသლჁစႚၾႤဟႲၷႻဳြ"));
      }
      
      override public function start() : void
      {
         super.start();
         GameSwf._129977da7249dc6dfa32c5f9(_6b63fd0a4028eb279b227831.ECU_SALES_SALE_START);
         var _loc1_:_009582d19d1c5695c49f2ed8 = _0737efdbd5337ba3fbc64b2e.getInstance()._f687dfac11484f757ff7d8b1(_22437dfd77f65dbf9dbc4281.EDT_BUY_FISHCOINS);
         if(_loc1_ != null)
         {
            _loc1_.update(_6b63fd0a4028eb279b227831.ECU_SALES_SALE_START);
         }
      }
      
      override public function end() : void
      {
         super.end();
         GameSwf._129977da7249dc6dfa32c5f9(_6b63fd0a4028eb279b227831.ECU_SALES_SALE_END);
         var _loc1_:_009582d19d1c5695c49f2ed8 = _0737efdbd5337ba3fbc64b2e.getInstance()._f687dfac11484f757ff7d8b1(_22437dfd77f65dbf9dbc4281.EDT_BUY_FISHCOINS);
         if(_loc1_ != null)
         {
            _loc1_.update(_6b63fd0a4028eb279b227831.ECU_SALES_SALE_END);
         }
      }
   }
}

