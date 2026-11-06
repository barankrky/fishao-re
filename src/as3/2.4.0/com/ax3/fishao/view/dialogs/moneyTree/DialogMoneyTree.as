package com.ax3.fishao.view.dialogs.moneyTree
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.improvable.ControllerLevelUpgrade;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.moneyTree.controllers.ControllerMoneyTreeLevelInfo;
   import com.ax3.fishao.view.dialogs.moneyTree.controllers.ControllerMoneyTreeLevelInfoNext;
   import com.ax3.fishao.view.dialogs.moneyTree.controllers.ControllerMoneyTreeUpgrade;
   import com.ax3.fishao.view.dialogs.moneyTree.views.ViewMoneyTree;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import flash.display.MovieClip;
   import protocol.api.moneyTree.data.MoneyTreeLevelInfo;
   
   public class DialogMoneyTree extends DialogMoneyTreeDialog
   {
      
      private var _controllerLevelInfo:ControllerMoneyTreeLevelInfo;
      
      private var _controllerLevelUpgrade:ControllerLevelUpgrade;
      
      private var _controllerLevelInfoNext:ControllerMoneyTreeLevelInfoNext;
      
      private var _viewTitle:ViewTitleAutosized;
      
      private var _viewTree:ViewMoneyTree;
      
      public function DialogMoneyTree()
      {
         super();
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_MONEY_TREE;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this.controllersCreate();
      }
      
      private function controllersCreate() : void
      {
         this._controllerLevelInfo = new ControllerMoneyTreeLevelInfo(Debug.assertProperty(_asset,"viewLevelInfo"));
         this._controllerLevelUpgrade = new ControllerMoneyTreeUpgrade(Debug.assertProperty(_asset,"itemLevelUpgrade"));
         this._controllerLevelInfoNext = new ControllerMoneyTreeLevelInfoNext(Debug.assertProperty(_asset,"itemLevelInfo"));
         this._viewTree = new ViewMoneyTree(this._controllerLevelInfo,Debug.assertProperty(_asset,"viewMoneyTree",MovieClip));
         this._viewTitle = new ViewTitleAutosized(this._controllerLevelInfo,Debug.assertProperty(_asset,"viewTitle"));
         this.update(EControllerUpdate.ECU_MONEY_TREE_LEVEL);
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EControllerUpdate.ECU_MONEY_TREE_LEVEL:
               this.controllersUpdate();
               _loc2_ = I18n.get(EStringType.EST_DIALOG_MONEY_TREE_TITLE);
               this._viewTitle.text = _loc2_.replace(EStringTypeStubs.ESTS_LEVEL,app.user.moneyTree.number);
               this._viewTree.number = app.user.moneyTree.number;
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function controllersUpdate() : void
      {
         this._controllerLevelInfo.entity = app.user.moneyTree;
         var _loc1_:MoneyTreeLevelInfo = GameSwf.instance.managerMoneyTree.getLevelInfoNext(app.user.moneyTree.number);
         if(_loc1_ == null)
         {
            this._controllerLevelUpgrade.view.hide();
            this._controllerLevelInfoNext.view.hide();
         }
         else
         {
            this._controllerLevelInfoNext.entity = _loc1_;
            this._controllerLevelUpgrade.entity = _loc1_;
         }
      }
      
      private function controllersCleanup() : void
      {
         this._controllerLevelInfoNext.cleanup();
         this._controllerLevelInfoNext = null;
         this._controllerLevelUpgrade.cleanup();
         this._controllerLevelUpgrade = null;
         this._controllerLevelInfo.cleanup();
         this._controllerLevelInfo = null;
      }
      
      override public function close() : void
      {
         this.controllersCleanup();
         this._viewTitle.cleanup();
         this._viewTitle = null;
         this._viewTree.cleanup();
         this._viewTree = null;
         super.close();
      }
   }
}

