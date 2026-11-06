package com.ax3.fishao.view.dialogs.fishingLine.controllers
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.improvable.ControllerLevelUpgrade;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerFishLineUpgrade extends ControllerLevelUpgrade
   {
      
      public function ControllerFishLineUpgrade(param1:DisplayObjectContainer)
      {
         super(param1,GameSwf.instance.managerFishingLine,FishaoFscModelManager.fscModel.extensionFishingLine);
      }
   }
}

