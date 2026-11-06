package com.ax3.fishao.view.dialogs.moneyTree.controllers
{
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.moneyTree.model.ManagerMoneyTree;
   import com.ax3.fishao.view.dialogs.moneyTree.views.ViewMoneyTreeLevelInfo;
   import flash.display.DisplayObjectContainer;
   import protocol.api.moneyTree.data.MoneyTreeLevelInfo;
   
   public class ControllerMoneyTreeLevelInfo extends Controller
   {
      
      private var _view:ViewMoneyTreeLevelInfo;
      
      private var _entity:MoneyTreeLevelInfo;
      
      private var _managerMoneyTree:ManagerMoneyTree;
      
      public function ControllerMoneyTreeLevelInfo(param1:DisplayObjectContainer)
      {
         this._view = new ViewMoneyTreeLevelInfo(this,param1);
         super(this._view);
         this.init();
      }
      
      public function set entity(param1:MoneyTreeLevelInfo) : void
      {
         if(this._entity == param1)
         {
            return;
         }
         this._entity = param1;
         this._view.fishcoins = this._entity.fishcoinsPerDay;
         this._view.fishbucks = this._entity.fishbucksPerDay;
         var _loc2_:MoneyTreeLevelInfo = this._managerMoneyTree.levelInfoMaxMoneyTree;
         this._view.percentFishbucksMax = this._entity.fishbucksPerDay / _loc2_.fishbucksPerDay * 100;
         this._view.percentFishcoinsMax = this._entity.fishcoinsPerDay / _loc2_.fishcoinsPerDay * 100;
      }
      
      private function init() : void
      {
         this._managerMoneyTree = GameSwf.instance.managerMoneyTree;
      }
   }
}

