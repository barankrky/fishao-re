package com.ax3.fishao.tutorial.simple.fish_market
{
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperBase;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperPopup;
   import com.ax3.fishao.tutorial.simple.base.TutorialInfoSimple;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.junkbyte.console.Cc;
   import flash.geom.Point;
   
   public class TutorialInfoFishMarket extends TutorialInfoSimple
   {
      
      private var _stepOnWorldMap:int;
      
      private var _stepPointToMarket:int;
      
      public function TutorialInfoFishMarket()
      {
         super();
         this._stepOnWorldMap = 3;
         this._stepPointToMarket = 4;
      }
      
      override public function onPlayerClickedOnMap() : void
      {
         super.onPlayerClickedOnMap();
         switch(this.stepCurrent)
         {
            case 2:
               onStepComplete();
               break;
            default:
               Cc.warn("fish market tutorial.onPlayerClickedOnMap. undefined behaviour step: " + this.stepCurrent);
         }
      }
      
      override public function onLocationChangeStart() : void
      {
         super.onLocationChangeStart();
         switch(this.stepCurrent)
         {
            case this._stepOnWorldMap:
            case _stepsTotal:
               break;
            default:
               Cc.warn("fish market tutorial.onLocationChangeStart. undefined behaviour step: " + this.stepCurrent);
         }
      }
      
      override public function onLocationChanged() : void
      {
         super.onLocationChanged();
         switch(this.stepCurrent)
         {
            case this._stepOnWorldMap:
               onStepComplete();
               break;
            case this._stepPointToMarket:
               onStepComplete();
               break;
            default:
               Cc.warn("fish market tutorial.onLocationChanged. undefined behaviour step: " + this.stepCurrent);
         }
      }
      
      private function onStep1Complete() : void
      {
         app.user.canMove = false;
         focusOnMapIcon("tutorialPopup_goToPinheiraBeach");
      }
      
      private function onStep2Complete() : void
      {
         app.user.canMove = true;
         GameSwf.worldMap.setFocusOnArea(LocationConfig.LOCATION_3_PINHEIRA_BEACH.id,"tutorialPopup_selectPinheiraBeach");
      }
      
      private function onStep3Complete() : void
      {
         this.disableGui();
         app.user.canMove = true;
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         var _loc2_:Point = new Point(915,1785);
         _loc1_.helperMask.addMaskCircle(_loc1_.helperMask.getPositionPlayer(),105,TutorialHelperBase.getConstantPoint(_loc2_),onStepComplete,90);
         _loc1_.helperMask.addMaskCircle(TutorialHelperBase.getPointOnLocation(_loc2_),50);
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperBase.getPointOnLocation(_loc2_,new Point(0,-70)),0);
         var _loc3_:TutorialHelperPopup = prepareAndGetPopup();
         _loc3_.showOnlyTextBig(I18n.get("tutorialPopup_findTheFishMarket"));
         _loc3_.alignToTop(50);
      }
      
      private function onStep4Complete() : void
      {
      }
      
      override protected function initHandlers() : void
      {
         super.initHandlers();
         _stepsHandlersMap[1] = this.onStep1Complete;
         _stepsHandlersMap[2] = this.onStep2Complete;
         _stepsHandlersMap[3] = this.onStep3Complete;
         _stepsHandlersMap[4] = this.onStep4Complete;
      }
      
      override public function start() : void
      {
         super.start();
         this.stepCurrent = 1;
         var _loc1_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc1_ == null)
         {
            this.stepCurrent = _stepsTotal;
            onStepComplete();
         }
         else if(_loc1_.locationModel.locationConfig == LocationConfig.LOCATION_3_PINHEIRA_BEACH)
         {
            this.stepCurrent = this._stepPointToMarket;
            restartCurrentStep();
         }
         else
         {
            onStepComplete();
         }
      }
   }
}

