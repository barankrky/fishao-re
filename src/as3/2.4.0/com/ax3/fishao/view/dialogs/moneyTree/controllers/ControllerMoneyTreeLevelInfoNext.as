package com.ax3.fishao.view.dialogs.moneyTree.controllers
{
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.views.implementations.improvable.ViewLevelInfoContainer;
   import flash.display.DisplayObjectContainer;
   import protocol.api.moneyTree.data.MoneyTreeLevelInfo;
   
   public class ControllerMoneyTreeLevelInfoNext extends Controller
   {
      
      private var _view:ViewLevelInfoContainer;
      
      private var _entity:MoneyTreeLevelInfo;
      
      private var _controllerLevelInfo:ControllerMoneyTreeLevelInfo;
      
      public function ControllerMoneyTreeLevelInfoNext(param1:DisplayObjectContainer)
      {
         this._view = new ViewLevelInfoContainer(this,param1);
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
         this.syncWithModel();
      }
      
      private function init() : void
      {
         this._controllerLevelInfo = new ControllerMoneyTreeLevelInfo(this._view.sourceLevelInfo);
      }
      
      private function syncWithModel() : void
      {
         this._view.number = this._entity.number;
         this._controllerLevelInfo.entity = this._entity;
      }
   }
}

