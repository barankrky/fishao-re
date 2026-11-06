package com.ax3.fishao.tutorial
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.Gui;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.entries.PlayerChar;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperPopup;
   import com.ax3.fishao.utils.UtilsDisplayObject;
   import com.ax3.fishao.vars.app;
   import com.junkbyte.console.Cc;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.setTimeout;
   
   public class TutorialInfo
   {
      
      private var _type:String;
      
      private var _stepCurrent:int;
      
      protected var _stepsTotal:int;
      
      private var _isInProgress:Boolean;
      
      protected var _stepsForResume:Array;
      
      protected var _needLockGui:Boolean;
      
      protected var _stepsHandlersMap:Dictionary;
      
      protected var _canInteractWithPlayersChars:Boolean;
      
      protected var _canInteractWithNpcsChars:Boolean;
      
      protected var _canInteractWithOwnChar:Boolean;
      
      private var _allowedChars:Array;
      
      protected var _gameSwf:GameSwf;
      
      public function TutorialInfo()
      {
         super();
         this._allowedChars = [];
         this._gameSwf = GameSwf.instance;
         this.initHandlers();
         this.initStepsToSave();
      }
      
      protected static function setPlayerPosition(param1:Point, param2:int = 90) : void
      {
         var _loc3_:LocationUser = null;
         var _loc4_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc4_ != null)
         {
            _loc3_ = _loc4_.locationModel.getLocationUser(app.user.username);
            if(_loc3_ != null && _loc3_.fieldChar != null)
            {
               _loc3_.fieldChar.setPosition(param1.x,param1.y);
               _loc3_.position.rotation = param2;
            }
         }
      }
      
      public function get isComplete() : Boolean
      {
         return this._stepCurrent > this._stepsTotal;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get canFishing() : Boolean
      {
         return false;
      }
      
      public function get needHideGui() : Boolean
      {
         return false;
      }
      
      public function get canChatWithPlayers() : Boolean
      {
         return false;
      }
      
      public function get isInProgress() : Boolean
      {
         return this._isInProgress;
      }
      
      public function get needLockGui() : Boolean
      {
         return this._needLockGui;
      }
      
      protected function get tutorialHelpers() : TutorialHelpers
      {
         return this._gameSwf.managerTutorial.tutorialHelpers;
      }
      
      protected function get gui() : Gui
      {
         return GameSwf.currentLocationDialog.gui;
      }
      
      protected function get stepCurrent() : int
      {
         return this._stepCurrent;
      }
      
      protected function set stepCurrent(param1:int) : void
      {
         this._stepCurrent = param1;
      }
      
      public function onSendChatMessage() : void
      {
         this.onStepComplete();
      }
      
      public function onPlayerClickedOnMap() : void
      {
      }
      
      public function onLocationChangeStart() : void
      {
      }
      
      public function onLocationChanged() : void
      {
      }
      
      public function onChatShown() : void
      {
      }
      
      public function onStepComplete() : void
      {
         this.tryRemoveTutorialHelpers();
         try
         {
            this.tryCallHandler();
         }
         catch(e:Error)
         {
            Cc.error("some error in tutorial occurred. Try again after 250 ms");
            Cc.error(e,e);
            Cc.error(e.getStackTrace());
            setTimeout(onStepComplete,250);
            return;
         }
         Cc.log("step completed -> " + this._stepCurrent);
         ++this.stepCurrent;
         Cc.log("step current -> " + this._stepCurrent);
         this.saveStep(this._stepCurrent);
         if(this.isComplete)
         {
            this.onTutorialCompleted();
         }
      }
      
      protected function onTutorialCompleted() : void
      {
         this._isInProgress = false;
         this.enableGui();
         this.allowInteractWithAll();
         if(GameSwf.currentLocationDialog != null)
         {
            GameSwf.currentLocationDialog.onTutorialCompleted();
         }
      }
      
      protected function initHandlers() : void
      {
         this._stepsHandlersMap = new Dictionary(true);
      }
      
      protected function initStepsToSave() : void
      {
         this._stepsForResume = [];
      }
      
      public function start() : void
      {
         this._isInProgress = true;
         if(GameSwf.currentLocationDialog != null)
         {
            GameSwf.currentLocationDialog.onTutorialStarted();
         }
      }
      
      protected function forceSkipToStep(param1:int) : void
      {
         this.stepCurrent = param1 - 1;
         this.tryCallHandler();
      }
      
      protected function restartCurrentStep() : void
      {
         --this.stepCurrent;
         this.onStepComplete();
      }
      
      private function resetToLastSavedStep() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.isComplete || this._stepCurrent == 1 || this._stepsForResume.indexOf(this._stepCurrent) != -1)
         {
            return;
         }
         if(this._stepsForResume.length > 0)
         {
            _loc1_ = -1;
            for each(_loc2_ in this._stepsForResume)
            {
               if(_loc2_ > this._stepCurrent)
               {
                  _loc1_ = _loc1_ == -1 ? 1 : _loc1_;
                  break;
               }
               _loc1_ = _loc2_;
            }
            this.stepCurrent = _loc1_;
         }
         else
         {
            this.stepCurrent = 1;
         }
      }
      
      protected function enableGui() : void
      {
         this._needLockGui = false;
         this.tutorialHelpers.enableGui();
      }
      
      protected function disableGui() : void
      {
         this._needLockGui = true;
         this.tutorialHelpers.disableGui();
      }
      
      protected function saveStep(param1:int) : void
      {
         FishaoFscModelManager.fscModel.extensionTutorial.saveStep(this._type,param1);
      }
      
      protected function tryCallHandler() : void
      {
         var _loc1_:Function = this._stepsHandlersMap[this.stepCurrent];
         if(_loc1_ != null)
         {
            _loc1_();
         }
      }
      
      protected function tryRemoveTutorialHelpers() : void
      {
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         _loc1_.helperMask.removeAllMasks();
         _loc1_.helperArrow.tryHideTutorialArrow();
         _loc1_.helperPopup.hidePopup();
      }
      
      protected function prepareAndGetPopup() : TutorialHelperPopup
      {
         var _loc1_:TutorialHelperPopup = this.tutorialHelpers.helperPopup;
         _loc1_.resetView();
         _loc1_.showPopup();
         _loc1_.hideTutorialPopupItems();
         return _loc1_;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._type = Debug.assertProperty(param1,"type");
         this.stepCurrent = Debug.assertProperty(param1,"step_current");
         this._stepsTotal = Debug.assertProperty(param1,"steps_total");
         this.resetToLastSavedStep();
      }
      
      protected function updateMouseHandlersForAllChars() : void
      {
         var _loc1_:LocationUser = null;
         if(GameSwf.currentLocationDialog == null)
         {
            return;
         }
         var _loc2_:LocationDialog = GameSwf.currentLocationDialog;
         var _loc3_:Vector.<LocationUser> = _loc2_.locationModel.getLocationUsers();
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc1_ == null || _loc1_.fieldChar == null || _loc1_.fieldChar.graphic == null))
            {
               if(this._allowedChars.indexOf(_loc1_.username.toLowerCase()) != -1)
               {
                  UtilsDisplayObject.changeMouseHandleState(_loc1_.fieldChar.graphic,true);
               }
               else if(_loc1_.fieldChar is NPC)
               {
                  UtilsDisplayObject.changeMouseHandleState(_loc1_.fieldChar.graphic,this._canInteractWithNpcsChars);
               }
               else if(_loc1_.fieldChar is PlayerChar)
               {
                  UtilsDisplayObject.changeMouseHandleState(_loc1_.fieldChar.graphic,this._canInteractWithOwnChar);
               }
               else
               {
                  UtilsDisplayObject.changeMouseHandleState(_loc1_.fieldChar.graphic,this._canInteractWithPlayersChars);
               }
            }
         }
      }
      
      public function canInteractWith(param1:FieldChar) : Boolean
      {
         var _loc2_:Boolean = false;
         _loc2_ = this._allowedChars.indexOf(param1.locationUser.username.toLowerCase()) != -1;
         if(!_loc2_)
         {
            if(param1 is NPC)
            {
               _loc2_ = this._canInteractWithNpcsChars;
            }
            else if(param1 is PlayerChar)
            {
               _loc2_ = this._canInteractWithOwnChar;
            }
            else
            {
               _loc2_ = this._canInteractWithPlayersChars;
            }
         }
         return _loc2_;
      }
      
      protected function allowInteractWithChar(param1:String) : void
      {
         this._allowedChars.push(param1.toLowerCase());
         this.updateMouseHandlersForAllChars();
      }
      
      protected function clearAllowedChars() : void
      {
         this._allowedChars = [];
         this.updateMouseHandlersForAllChars();
      }
      
      protected function allowInteractWithAll() : void
      {
         this._canInteractWithNpcsChars = true;
         this._canInteractWithOwnChar = true;
         this._canInteractWithPlayersChars = true;
         this.updateMouseHandlersForAllChars();
      }
   }
}

