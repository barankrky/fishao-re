package com.ax3.fishao.view.dialogs.fishingLine.model
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.fishingLine.data.FishingLineLevelInfo;
   import protocol.api.fishingLine.init.ResponseFishingLineInit;
   
   public class ManagerFishingLine extends ManagerImprovableBase
   {
      
      public function ManagerFishingLine()
      {
         super(FishaoFscModelManager.fscModel.extensionFishingLine);
      }
      
      public function get levelInfoMaxFishingLine() : FishingLineLevelInfo
      {
         return this.levelInfoMax as FishingLineLevelInfo;
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         super.onInitDataLoaded(param1);
         var _loc2_:ResponseFishingLineInit = param1 as ResponseFishingLineInit;
         app.user.fishingLine = getLevelInfo(_loc2_.currentLevel);
         app.user.fishingLineColor = _loc2_.color;
      }
      
      override protected function upgradeToNextLevel() : void
      {
         app.user.fishingLine = getLevelInfoNext(app.user.fishingLine.number);
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_FISHING_LINE_LEVEL,EDialogType.EDT_FISHING_LINE);
      }
   }
}

