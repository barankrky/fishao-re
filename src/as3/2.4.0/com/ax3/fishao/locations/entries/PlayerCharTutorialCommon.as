package com.ax3.fishao.locations.entries
{
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.tutorial.ManagerTutorial;
   import com.ax3.fishao.tutorial.views.panels.bite_panel.BitePanelTutorial;
   import com.ax3.fishao.tutorial.views.panels.user_popup.ControllerUserPopupTutorial;
   import com.ax3.fishao.vars.app;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   
   public class PlayerCharTutorialCommon extends PlayerChar
   {
      
      private var _canFishing:Boolean;
      
      private var _searchRiver:Boolean;
      
      private var _managerTutorial:ManagerTutorial;
      
      private var _disableHideRod:Boolean;
      
      public function PlayerCharTutorialCommon(param1:LocationUser, param2:LocationModel, param3:FloatInWaterManager)
      {
         super(param1,param2,param3);
         this._canFishing = false;
         this._managerTutorial = GameSwf.instance.managerTutorial;
      }
      
      override protected function get canFishing() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._managerTutorial.isTutorialCommonComplete)
         {
            _loc1_ = super.canFishing;
         }
         else
         {
            _loc1_ = this._canFishing && super.canFishing;
         }
         return _loc1_;
      }
      
      public function setCanFishing(param1:Boolean) : void
      {
         this._canFishing = param1;
         if(!this._canFishing)
         {
            clearRodCircle();
            this.hideRodAndShowChar();
         }
      }
      
      public function set searchRiver(param1:Boolean) : void
      {
         this._searchRiver = param1;
      }
      
      public function set disableHideRod(param1:Boolean) : void
      {
         this._disableHideRod = param1;
      }
      
      override public function onMouseClick(param1:Number, param2:Number) : void
      {
         if(this._managerTutorial == null || this._managerTutorial.isTutorialCommonComplete)
         {
            super.onMouseClick(param1,param2);
            return;
         }
         if(this.tryOpenUserPopup())
         {
            return;
         }
         app.performanceManager.sleepMode = false;
         if(isTalkingWithNpc() || inBiteProcess)
         {
            return;
         }
         handleMouseClickInternal(param1,param2);
      }
      
      override protected function onUserCatchFishOnHook(param1:int, param2:int, param3:FishInfoVO, param4:Boolean, param5:int) : void
      {
         super.onUserCatchFishOnHook(param1,param2,param3,param4,param5);
         if(this._managerTutorial.isTutorialCommonComplete)
         {
            return;
         }
         clearTimeout(_bitePanelShowTimeoutId);
         _bitePanelShowTimeoutId = -1;
         GameSwf.instance.managerTutorial.tutorialCommon.onStepComplete();
      }
      
      override protected function onBiteLost(param1:Event) : void
      {
         if(this._managerTutorial.isTutorialCommonComplete)
         {
            super.onBiteLost(param1);
         }
         else
         {
            GameSwf.instance.managerTutorial.tutorialCommon.onBiteLost();
         }
      }
      
      override protected function initBitePanel() : void
      {
         _bitePanel = new BitePanelTutorial();
      }
      
      override protected function initClickUserPopup() : void
      {
         _controllerUserPopup = new ControllerUserPopupTutorial(this);
         _controllerUserPopup.buttonPmVisible = false;
      }
      
      override public function inspectCurrentCharPosition() : void
      {
         super.inspectCurrentCharPosition();
         if(!this._managerTutorial.isTutorialCommonComplete)
         {
            if(this._searchRiver && isCloseToTheLake)
            {
               GameSwf.instance.managerTutorial.tutorialCommon.onStepComplete();
            }
         }
      }
      
      public function getCloserPointToLake() : Point
      {
         var _loc1_:Point = null;
         var _loc2_:Point = null;
         var _loc3_:Point = null;
         if(!this.isCloseToTheLake)
         {
            return _loc3_;
         }
         for each(_loc1_ in _fishingArea)
         {
            _loc2_ = new Point(_loc1_.x + graphic.x,_loc1_.y + graphic.y);
            if(moveStrategy.isLakeHit(_loc2_))
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      override public function hideRodAndShowChar() : void
      {
         if(this._disableHideRod)
         {
            return;
         }
         super.hideRodAndShowChar();
      }
      
      override public function throwIn(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = this._canFishing;
         _loc5_ ||= this._managerTutorial == null || this._managerTutorial.isTutorialCommonComplete;
         if(_loc5_)
         {
            super.throwIn(param1,param2,param3,param4);
         }
      }
      
      override protected function cancelPlayerFishing() : void
      {
         if(this._managerTutorial == null || this._managerTutorial.isTutorialCommonComplete)
         {
            super.cancelPlayerFishing();
         }
      }
   }
}

