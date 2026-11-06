package com.ax3.fishao.tutorial.common.base
{
   import com.ax3.fishao.EResourceID;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.display.dialogs.ShopSwfDialogAsset;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.chars.IMoveStrategy;
   import com.ax3.fishao.locations.entries.PlayerCharTutorialCommon;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.model.info.UserBait;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.tutorial.helpers.ETutorialPopupSize;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperPopup;
   import com.ax3.fishao.tutorial.views.dialogs.shop.DialogShopTutorial;
   import com.ax3.fishao.vars.app;
   import com.junkbyte.console.Cc;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class TutorialInfoCommon extends TutorialInfo
   {
      
      public function TutorialInfoCommon()
      {
         super();
      }
      
      protected static function tryMovePlayerToTheRiver(param1:Point) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:LocationDialog = GameSwf.currentLocationDialog;
         param1 = _loc2_.player.getCloserPoint(param1.x,param1.y);
         setPlayerPosition(param1);
         app.user.canMove = false;
      }
      
      protected static function preparePlayerForFishing() : void
      {
         var moveStrategy:IMoveStrategy = null;
         var isRodShown:Boolean = false;
         var callback:Function = null;
         var locationUser:LocationUser = null;
         locationUser = null;
         locationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(app.user.username);
         (locationUser.fieldChar as PlayerCharTutorialCommon).setCanFishing(true);
         moveStrategy = locationUser.fieldChar.moveStrategy;
         if(moveStrategy != null)
         {
            moveStrategy.stop();
         }
         isRodShown = locationUser.fieldChar.showRodAndHideChar();
         callback = function():void
         {
            locationUser.fieldChar.showRodAndHideChar(true);
         };
         if(!isRodShown)
         {
            Cc.warn("rod didn\'t shown. try again force after 500 ms");
            setTimeout(callback,500);
         }
      }
      
      protected static function checkBaitWorms() : void
      {
         var _loc1_:DialogShopTutorial = null;
         var _loc2_:UserBait = app.user.inventory.getBait(EResourceID.ER_BAIT_WORMS);
         if(_loc2_ == null || _loc2_.quantity <= 0)
         {
            _loc1_ = app.dialogFactory.getShopSwfDialogTutorial();
            _loc1_.buyResource(ShopSwfDialogAsset.TAB_ID_BAIT,ResourceType.BAIT,EResourceID.ER_BAIT_WORMS);
         }
      }
      
      override public function get canFishing() : Boolean
      {
         return true;
      }
      
      public function onBiteLost() : void
      {
         --this.stepCurrent;
         --this.stepCurrent;
         onStepComplete();
      }
      
      protected function selectRod(param1:int, param2:ShopItemColor = null) : void
      {
         var _loc3_:LocationDialog = null;
         app.user.userRodId = param1;
         if(param1 != EResourceID.ER_ROD_EMPTY)
         {
            _loc3_ = GameSwf.currentLocationDialog;
            if(_loc3_ != null && _loc3_.player != null)
            {
               _loc3_.player.setRodInfo(param1,param2);
            }
            FishaoFscModelManager.updateExtension.chooseRod(param1);
         }
      }
      
      protected function selectBait(param1:int) : void
      {
         app.user.baitInfoId = param1;
         FishaoFscModelManager.updateExtension.chooseBait(param1);
      }
      
      protected function disableFishing() : void
      {
         var _loc1_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(app.user.username);
         var _loc2_:PlayerCharTutorialCommon = _loc1_.fieldChar as PlayerCharTutorialCommon;
         _loc2_.setCanFishing(false);
      }
      
      protected function enableFishing() : void
      {
         var _loc1_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(app.user.username);
         var _loc2_:PlayerCharTutorialCommon = _loc1_.fieldChar as PlayerCharTutorialCommon;
         _loc2_.setCanFishing(true);
         _loc2_.inspectCurrentCharPosition();
      }
      
      override protected function prepareAndGetPopup() : TutorialHelperPopup
      {
         var _loc1_:TutorialHelperPopup = super.prepareAndGetPopup();
         _loc1_.sizeLabel = ETutorialPopupSize.ETPS_MEDIUM;
         return _loc1_;
      }
      
      protected function setLocation(param1:int) : void
      {
         _gameSwf.enterToLocation(param1);
      }
   }
}

