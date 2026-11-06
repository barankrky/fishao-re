package com.ax3.fishao.view.dialogs.moneyTree
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.improvable._fbb392388cc0ed4699e6c8ee;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.moneyTree.controllers._51476cd1e3e4cd9399206ef5;
   import com.ax3.fishao.view.dialogs.moneyTree.controllers._bb8dfa1762ec0f1154c6a931;
   import com.ax3.fishao.view.dialogs.moneyTree.controllers._e2915937c7bd18333c036798;
   import com.ax3.fishao.view.dialogs.moneyTree.views._654248d532ae7b60763003c8;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.MovieClip;
   import protocol.api.moneyTree.data.MoneyTreeLevelInfo;
   
   public class _1f5409035b3a19ed72675c07 extends _d46c85de617db133f4dce5a1
   {
      
      private var _aa3d887cf15d951fa96589d2:_51476cd1e3e4cd9399206ef5;
      
      private var _d23d4096ca593a91d948b417:_fbb392388cc0ed4699e6c8ee;
      
      private var _5c63787d228c945c8b9646ea:_e2915937c7bd18333c036798;
      
      private var _ea4585d5592a5eeeb68ad0cd:_ab72f7798754bf7a51d8acb3;
      
      private var _48f15fa4c249d539b6c780ad:_654248d532ae7b60763003c8;
      
      public function _1f5409035b3a19ed72675c07()
      {
         super();
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_MONEY_TREE;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this._93033e99e52686029cf81320();
      }
      
      private function _93033e99e52686029cf81320() : void
      {
         this._aa3d887cf15d951fa96589d2 = new _51476cd1e3e4cd9399206ef5(Debug.assertProperty(_asset,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴅ႓ჲဂဂჀ႑ၲ჻ဧသစႽ့ဎႹၧၿႩႉပჟ჻၈ၗၼ჊Ⴕუဟ႟၇ფႵ","ၝ႘ၪာჅၓၖၚ჋შ၂ၣၥჟ။ၶ")));
         this._d23d4096ca593a91d948b417 = new _bb8dfa1762ec0f1154c6a931(Debug.assertProperty(_asset,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၹწဏဥစနခႀဣ္ဩႡဴ჆့၁႐ဂအრ႗ၖ႙ၪည၈၊႔ရင၍ဤჩႪဢႇჯဢညၱ","ႆၨၖ႙ႚအ၀လႛჃၳဠူြဿမ")));
         this._5c63787d228c945c8b9646ea = new _e2915937c7bd18333c036798(Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刴刣勛劉刊剰劗刦勲則勧刕刿剌刓剂勸刬刚勘剡剔勱剠勋剖剌刓剹劤剷利刾剆","勢劶勑刦劤剫勩勈务別勣刺剁剥剃劥")));
         this._48f15fa4c249d539b6c780ad = new _654248d532ae7b60763003c8(this._aa3d887cf15d951fa96589d2,Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("助刈刪剈剆副勑剛刵劫刲勓勌割勂刾刿剃剽剮剩初力刍刾刮初剭力刟剝則労劗","剤刕勋剼劣劎勈剮劍勀劲劖剏剑刉劔"),MovieClip));
         this._ea4585d5592a5eeeb68ad0cd = new _ab72f7798754bf7a51d8acb3(this._aa3d887cf15d951fa96589d2,Debug.assertProperty(_asset,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掤揯挟捓揱掬捼捁挖揙掽掺揚掱挡援揸揋揳挣捁捾揚掜掼揨","揣揄掵捪揆掴捰揩揃掕掅掇捉掓掛指")));
         this.update(_6b63fd0a4028eb279b227831.ECU_MONEY_TREE_LEVEL);
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_MONEY_TREE_LEVEL === _loc3_ ? -1715511782 ^ -1627882859 ^ 0x36235D2B ^ 0x316479A4 : -1166066627 ^ 0x68C11481 ^ 0x17093344 ^ -977855495)
         {
            case 0:
               this._a74441f1275e206e272d939b();
               _loc2_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_MONEY_TREE_TITLE);
               this._ea4585d5592a5eeeb68ad0cd.text = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_LEVEL,app.user.moneyTree.number);
               this._48f15fa4c249d539b6c780ad.number = app.user.moneyTree.number;
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function _a74441f1275e206e272d939b() : void
      {
         this._aa3d887cf15d951fa96589d2.entity = app.user.moneyTree;
         var _loc1_:MoneyTreeLevelInfo = GameSwf.instance.managerMoneyTree._dbecfebe6ff32acd9f5d6208(app.user.moneyTree.number);
         if(_loc1_ == null)
         {
            this._d23d4096ca593a91d948b417.view.hide();
            this._5c63787d228c945c8b9646ea.view.hide();
         }
         else
         {
            this._5c63787d228c945c8b9646ea.entity = _loc1_;
            this._d23d4096ca593a91d948b417.entity = _loc1_;
         }
      }
      
      private function _611b511c0bf1867820665817() : void
      {
         this._5c63787d228c945c8b9646ea._90eac9ca552fe54c2ca0299f();
         this._5c63787d228c945c8b9646ea = null;
         this._d23d4096ca593a91d948b417._90eac9ca552fe54c2ca0299f();
         this._d23d4096ca593a91d948b417 = null;
         this._aa3d887cf15d951fa96589d2._90eac9ca552fe54c2ca0299f();
         this._aa3d887cf15d951fa96589d2 = null;
      }
      
      override public function close() : void
      {
         this._611b511c0bf1867820665817();
         this._ea4585d5592a5eeeb68ad0cd._90eac9ca552fe54c2ca0299f();
         this._ea4585d5592a5eeeb68ad0cd = null;
         this._48f15fa4c249d539b6c780ad._90eac9ca552fe54c2ca0299f();
         this._48f15fa4c249d539b6c780ad = null;
         super.close();
      }
   }
}

