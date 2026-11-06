package com.ax3.fishao.tutorial
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.tutorial.common.base.TutorialInfoCommon;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.utils.Dictionary;
   import protocol.api.tutorial.init.ResponseTutorialInit;
   
   public class ManagerTutorial extends ManagerBase
   {
      
      private static var COMMON_TUTORIAL_TYPES:Array = [ETutorialType.ETT_COMMON_A_GUEST,ETutorialType.ETT_COMMON_A_REGISTERED,ETutorialType.ETT_COMMON_B_GUEST,ETutorialType.ETT_COMMON_B_REGISTERED];
      
      private var _tutorialsMap:Dictionary;
      
      private var _tutorialCommon:TutorialInfoCommon;
      
      private var _tutorialHelpers:TutorialHelpers;
      
      public function ManagerTutorial()
      {
         super();
         this._tutorialsMap = new Dictionary();
         _remoteExtension = FishaoFscModelManager.fscModel.extensionTutorial;
         this._tutorialHelpers = new TutorialHelpers();
      }
      
      public function get tutorialHelpers() : TutorialHelpers
      {
         return this._tutorialHelpers;
      }
      
      public function get isTutorialCommonComplete() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._tutorialCommon != null)
         {
            _loc1_ = this._tutorialCommon.isComplete;
         }
         return _loc1_;
      }
      
      public function get isAnyTutorialInProgress() : Boolean
      {
         return this.tutorialInProgress != null;
      }
      
      public function get tutorialInProgress() : TutorialInfo
      {
         var _loc1_:String = null;
         var _loc2_:TutorialInfo = null;
         var _loc3_:TutorialInfo = null;
         for(_loc1_ in this._tutorialsMap)
         {
            _loc2_ = this._tutorialsMap[_loc1_];
            if(_loc2_.isInProgress)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function get tutorialCommon() : TutorialInfoCommon
      {
         return this._tutorialCommon;
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:TutorialInfo = null;
         super.onInitDataLoaded(param1);
         var _loc5_:ResponseTutorialInit = param1 as ResponseTutorialInit;
         this._tutorialsMap = new Dictionary();
         for each(_loc2_ in _loc5_.tutorialsData)
         {
            _loc4_ = FactoryTutorial.createTutorial(_loc2_);
            this._tutorialsMap[_loc4_.type] = _loc4_;
         }
         for each(_loc3_ in COMMON_TUTORIAL_TYPES)
         {
            this._tutorialCommon = this._tutorialsMap[_loc3_];
            if(this._tutorialCommon != null)
            {
               break;
            }
         }
      }
      
      public function onPlayerClickedOnMap() : void
      {
         var _loc1_:String = null;
         var _loc2_:TutorialInfo = null;
         for(_loc1_ in this._tutorialsMap)
         {
            _loc2_ = this._tutorialsMap[_loc1_];
            if(!_loc2_.isComplete && _loc2_.isInProgress)
            {
               _loc2_.onPlayerClickedOnMap();
            }
         }
      }
      
      public function onLocationChangeStart() : void
      {
         var _loc1_:String = null;
         var _loc2_:TutorialInfo = null;
         for(_loc1_ in this._tutorialsMap)
         {
            _loc2_ = this._tutorialsMap[_loc1_];
            if(!_loc2_.isComplete && _loc2_.isInProgress)
            {
               _loc2_.onLocationChangeStart();
            }
         }
      }
      
      public function onLocationChanged() : void
      {
         var _loc1_:String = null;
         var _loc2_:TutorialInfo = null;
         GameSwf.waitForLoadLocation(this.onLocationChangedInternal);
         for(_loc1_ in this._tutorialsMap)
         {
            _loc2_ = this._tutorialsMap[_loc1_];
            if(!_loc2_.isComplete && _loc2_.isInProgress)
            {
               GameSwf.waitForLoadLocation(_loc2_.onLocationChanged);
            }
         }
      }
      
      private function onLocationChangedInternal() : void
      {
         GameSwf.currentLocationDialog.needUpdateTutorialHelper = this.isAnyTutorialInProgress;
      }
      
      public function getTutorial(param1:String) : TutorialInfo
      {
         return this._tutorialsMap[param1];
      }
      
      public function tryStartTutorialByType(param1:String) : void
      {
         var _loc2_:TutorialInfo = this.getTutorial(param1);
         if(_loc2_ != null)
         {
            this.tryStartTutorial(_loc2_);
         }
      }
      
      public function tryStartTutorialCommon() : void
      {
         this.tryStartTutorial(this._tutorialCommon);
      }
      
      private function tryStartTutorial(param1:TutorialInfo) : void
      {
         if(this.isAnyTutorialInProgress)
         {
            return;
         }
         if(param1 != null && !param1.isComplete)
         {
            param1.start();
         }
      }
   }
}

