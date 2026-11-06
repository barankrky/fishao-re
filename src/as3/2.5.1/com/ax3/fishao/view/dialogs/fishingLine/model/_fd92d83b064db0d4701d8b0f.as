package com.ax3.fishao.view.dialogs.fishingLine.model
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.fishingLine.data.FishingLineLevelInfo;
   import protocol.api.fishingLine.init.ResponseFishingLineInit;
   
   public class _fd92d83b064db0d4701d8b0f extends _39c10ed960794a3ab8a11641
   {
      
      public function _fd92d83b064db0d4701d8b0f()
      {
         super(_dfa25706e58a240c1e33e5c6.fscModel.extensionFishingLine);
      }
      
      public function get levelInfoMaxFishingLine() : FishingLineLevelInfo
      {
         return this.levelInfoMax as FishingLineLevelInfo;
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc2_:ResponseFishingLineInit = param1 as ResponseFishingLineInit;
         app.user.fishingLine = _83e87e4f25c0be9a14b3a3a4(_loc2_.currentLevel);
         app.user.fishingLineColor = _loc2_.color;
      }
      
      override protected function _439d80393042874b6a3d501f() : void
      {
         app.user.fishingLine = _dbecfebe6ff32acd9f5d6208(app.user.fishingLine.number);
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_FISHING_LINE_LEVEL,_22437dfd77f65dbf9dbc4281.EDT_FISHING_LINE);
      }
   }
}

