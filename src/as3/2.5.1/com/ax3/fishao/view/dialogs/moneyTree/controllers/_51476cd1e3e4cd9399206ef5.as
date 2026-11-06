package com.ax3.fishao.view.dialogs.moneyTree.controllers
{
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.moneyTree.model._ed07e6b604e8c0a96f258168;
   import com.ax3.fishao.view.dialogs.moneyTree.views._223c8bc36620f01a1fb3b2d9;
   import flash.display.DisplayObjectContainer;
   import protocol.api.moneyTree.data.MoneyTreeLevelInfo;
   
   public class _51476cd1e3e4cd9399206ef5 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _cce52b6248478de5982ce021:_223c8bc36620f01a1fb3b2d9;
      
      private var _bc604971e9f7df1713934f1d:MoneyTreeLevelInfo;
      
      private var _b31d6c0f32d72a6467b3ae22:_ed07e6b604e8c0a96f258168;
      
      public function _51476cd1e3e4cd9399206ef5(param1:DisplayObjectContainer)
      {
         this._cce52b6248478de5982ce021 = new _223c8bc36620f01a1fb3b2d9(this,param1);
         super(this._cce52b6248478de5982ce021);
         this.init();
      }
      
      public function set entity(param1:MoneyTreeLevelInfo) : void
      {
         if(this._bc604971e9f7df1713934f1d == param1)
         {
            return;
         }
         this._bc604971e9f7df1713934f1d = param1;
         this._cce52b6248478de5982ce021.fishcoins = this._bc604971e9f7df1713934f1d.fishcoinsPerDay;
         this._cce52b6248478de5982ce021.fishbucks = this._bc604971e9f7df1713934f1d.fishbucksPerDay;
         var _loc2_:MoneyTreeLevelInfo = this._b31d6c0f32d72a6467b3ae22.levelInfoMaxMoneyTree;
         this._cce52b6248478de5982ce021.percentFishbucksMax = this._bc604971e9f7df1713934f1d.fishbucksPerDay / _loc2_.fishbucksPerDay * (-66364304 ^ 0x6404D8E9 ^ -924477119 ^ 0x50EA1DBC);
         this._cce52b6248478de5982ce021.percentFishcoinsMax = this._bc604971e9f7df1713934f1d.fishcoinsPerDay / _loc2_.fishcoinsPerDay * (0x03213C22 ^ -1649044426 ^ 0x32F2D78E ^ -1402568706);
      }
      
      private function init() : void
      {
         this._b31d6c0f32d72a6467b3ae22 = GameSwf.instance.managerMoneyTree;
      }
   }
}

