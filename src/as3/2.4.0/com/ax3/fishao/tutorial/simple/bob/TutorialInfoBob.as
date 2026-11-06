package com.ax3.fishao.tutorial.simple.bob
{
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.npc.base.ENpcName;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperPopup;
   import com.ax3.fishao.tutorial.simple.base.TutorialInfoSimple;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.junkbyte.console.Cc;
   import flash.geom.Point;
   
   public class TutorialInfoBob extends TutorialInfoSimple
   {
      
      private var _stepOnWorldMap:int;
      
      private var _stepPointToBob:int;
      
      public function TutorialInfoBob()
      {
         super();
         this._stepOnWorldMap = 3;
         this._stepPointToBob = 4;
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
               Cc.warn("bob tutorial.onPlayerClickedOnMap. undefined behaviour step: " + this.stepCurrent);
         }
      }
      
      override public function onLocationChangeStart() : void
      {
         app.user.canMove = true;
         super.onLocationChangeStart();
      }
      
      override public function onLocationChanged() : void
      {
         super.onLocationChanged();
         switch(this.stepCurrent)
         {
            case this._stepOnWorldMap:
               onStepComplete();
               break;
            default:
               Cc.warn("bob tutorial.onLocationChangeStart. undefined behaviour step: " + this.stepCurrent);
         }
      }
      
      private function onStep1Complete() : void
      {
         app.user.canMove = false;
         focusOnMapIcon("tutorialPopup_goToRioTropical");
      }
      
      private function onStep2Complete() : void
      {
         app.user.canMove = true;
         GameSwf.worldMap.setFocusOnArea(LocationConfig.LOCATION_2_RIO.id,"tutorialPopup_selectRioTropical");
      }
      
      private function onStep3Complete() : void
      {
         this.disableGui();
         app.user.canMove = true;
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         var _loc2_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(ENpcName.ENN_BOB);
         _loc1_.helperMask.addMaskCircle(_loc1_.helperMask.getPositionPlayer(),105,TutorialHelperMask.getPositionForView(_loc2_.fieldChar.graphic,null,false),onStepComplete,90);
         _loc1_.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc2_.fieldChar.graphic,new Point(-30,-70)),105);
         var _loc3_:TutorialHelperPopup = prepareAndGetPopup();
         _loc3_.showOnlyTextBig(I18n.get("tutorialPopup_findAndTalkToBob"));
         _loc3_.alignToTop(50);
      }
      
      private function onStep4Complete() : void
      {
         app.user.canMove = false;
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         var _loc2_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(ENpcName.ENN_BOB);
         (_loc2_.fieldChar as NPC).canMove = false;
         _loc1_.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc2_.fieldChar.graphic,new Point(-30,-70)),105);
         var _loc3_:TutorialHelperPopup = prepareAndGetPopup();
         _loc3_.showOnlyTextBig(I18n.get("tutorialPopup_findAndTalkToBob"));
         _loc3_.alignToTop(50);
      }
      
      private function onStep6Complete() : void
      {
         app.user.canMove = true;
         enableGui();
      }
      
      override protected function initHandlers() : void
      {
         super.initHandlers();
         _stepsHandlersMap[1] = this.onStep1Complete;
         _stepsHandlersMap[2] = this.onStep2Complete;
         _stepsHandlersMap[3] = this.onStep3Complete;
         _stepsHandlersMap[4] = this.onStep4Complete;
         _stepsHandlersMap[5] = null;
         _stepsHandlersMap[6] = this.onStep6Complete;
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
         else if(_loc1_.locationModel.locationConfig == LocationConfig.LOCATION_2_RIO)
         {
            this.stepCurrent = this._stepPointToBob;
            restartCurrentStep();
         }
         else
         {
            onStepComplete();
         }
         allowInteractWithChar(ENpcName.ENN_BOB);
      }
   }
}

