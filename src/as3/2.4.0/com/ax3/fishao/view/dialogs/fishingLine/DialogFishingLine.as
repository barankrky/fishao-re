package com.ax3.fishao.view.dialogs.fishingLine
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.improvable.ControllerLevelUpgrade;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.fishingLine.controllers.ControllerFishLineLevelInfo;
   import com.ax3.fishao.view.dialogs.fishingLine.controllers.ControllerFishLineLevelInfoNext;
   import com.ax3.fishao.view.dialogs.fishingLine.controllers.ControllerFishLineUpgrade;
   import com.ax3.fishao.view.dialogs.fishingLine.views.ViewReel;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import protocol.api.fishingLine.data.FishingLineLevelInfo;
   
   public class DialogFishingLine extends DialogFishingLineAsset
   {
      
      private var _controllerLevelInfo:ControllerFishLineLevelInfo;
      
      private var _controllerLevelInfoNext:ControllerFishLineLevelInfoNext;
      
      private var _controllerLevelUpgrade:ControllerLevelUpgrade;
      
      private var _viewReel:ViewReel;
      
      private var _viewTitle:ViewTitleAutosized;
      
      public function DialogFishingLine()
      {
         super();
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_FISHING_LINE;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this.controllersCreate();
      }
      
      private function controllersCreate() : void
      {
         Debug.assertNotEqual(app.user.fishingLine,null,"Please establish user fishing line");
         this._controllerLevelInfo = new ControllerFishLineLevelInfo(Debug.assertProperty(_asset,"viewLevelInfo"),true);
         this._controllerLevelInfoNext = new ControllerFishLineLevelInfoNext(Debug.assertProperty(_asset,"itemLevelInfo"));
         this._controllerLevelUpgrade = new ControllerFishLineUpgrade(Debug.assertProperty(_asset,"itemLevelUpgrade"));
         this._viewReel = new ViewReel(this._controllerLevelInfo,Debug.assertProperty(_asset,"viewReel"));
         this._viewTitle = new ViewTitleAutosized(this._controllerLevelInfo,Debug.assertProperty(_asset,"viewTitle"));
         this.update(EControllerUpdate.ECU_FISHING_LINE_COLOR);
         this.update(EControllerUpdate.ECU_FISHING_LINE_LEVEL);
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EControllerUpdate.ECU_FISHING_LINE_COLOR:
               this._viewReel.color = app.user.fishingLineColor;
               this._controllerLevelInfo.update(param1);
               break;
            case EControllerUpdate.ECU_FISHING_LINE_LEVEL:
               this.controllersUpdate();
               _loc2_ = I18n.get(EStringType.EST_DIALOG_FISHING_LINE_TITLE);
               this._viewTitle.text = _loc2_.replace(EStringTypeStubs.ESTS_LEVEL,app.user.fishingLine.number);
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function controllersUpdate() : void
      {
         this._controllerLevelInfo.entity = app.user.fishingLine;
         var _loc1_:FishingLineLevelInfo = GameSwf.instance.managerFishingLine.getLevelInfoNext(app.user.fishingLine.number);
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
         this._viewReel.cleanup();
         this._viewReel = null;
         super.close();
      }
   }
}

