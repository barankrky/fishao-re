package com.ax3.fishao.view.dialogs.moneyTree.controllers
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.improvable.ControllerLevelUpgrade;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerMoneyTreeUpgrade extends ControllerLevelUpgrade
   {
      
      public function ControllerMoneyTreeUpgrade(param1:DisplayObjectContainer)
      {
         super(param1,GameSwf.instance.managerMoneyTree,FishaoFscModelManager.fscModel.extensionMoneyTree);
      }
   }
}

