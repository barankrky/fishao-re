package com.ax3.fishao.display.boosters
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.dialogs.ShopSwfDialogAsset;
   import com.ax3.fishao.model.InventoryModel;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.features.EUserFeature;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   
   public class ControllerBoosters extends Controller
   {
      
      private var _view:ViewBoosters = new ViewBoosters(this);
      
      protected var _updateGroup:UpdateGroup;
      
      public function ControllerBoosters()
      {
         super(this._view);
         this.init();
      }
      
      private static function isBoosterAvailable(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:InventoryModel = app.user.inventory;
         switch(param1)
         {
            case ResourceType.LUCK_POTION.id:
               if(_loc3_.getResource(ResourceType.ID_LUCK_POTION_1,param1) != null || _loc3_.getResource(ResourceType.ID_LUCK_POTION_2,param1) != null)
               {
                  _loc2_ = true;
               }
               break;
            case ResourceType.FISH_RADAR.id:
               if(_loc3_.getResource(ResourceType.ID_GREEN_FISH_RADAR,param1) != null || _loc3_.getResource(ResourceType.ID_WHITE_FISH_RADAR,param1) != null || _loc3_.getResource(ResourceType.ID_BLUE_FISH_RADAR,param1) != null)
               {
                  _loc2_ = true;
               }
               break;
            case ResourceType.MAGIC_WATCH.id:
               if(_loc3_.getResource(ResourceType.ID_MAGIC_WATCH,param1) != null)
               {
                  _loc2_ = true;
               }
               break;
            case ResourceType.EXP_BOOSTER.id:
               if(_loc3_.getResource(ResourceType.ID_EXP_BOOSTER_X2,param1) != null || _loc3_.getResource(ResourceType.ID_EXP_BOOSTER_X4,param1) != null)
               {
                  _loc2_ = true;
               }
               break;
            case ResourceType.SHINY_POTION.id:
               if(_loc3_.getResource(ResourceType.ID_SHINY_POTION_1,param1) != null || _loc3_.getResource(ResourceType.ID_SHINY_POTION_2,param1) != null)
               {
                  _loc2_ = true;
               }
               break;
            case ResourceType.POWER_BOOSTER.id:
               if(_loc3_.getResource(ResourceType.ID_POWER_BOOSTER_1,param1) != null || _loc3_.getResource(ResourceType.ID_POWER_BOOSTER_2,param1) != null)
               {
                  _loc2_ = true;
               }
         }
         return _loc2_;
      }
      
      private static function onButtonBoosterClicked(param1:int, param2:int) : void
      {
         if(isBoosterAvailable(param1))
         {
            Cc.log("OnButtonClick to: itemTypeId=",param1,"; Open Inventory menu!");
            GameSwf.instance.showInventoryWindow(ResourceType.OTHER);
         }
         else
         {
            GameSwf.instance.showShopDialog(ShopSwfDialogAsset.TAB_ID_EXTRA,param2);
         }
      }
      
      public function set activateInTutorial(param1:Boolean) : void
      {
         this._view.buttonExp.isEnabled = param1;
         this._view.buttonLuckPotion.isEnabled = param1;
         this._view.buttonMagicWatch.isEnabled = param1;
         this._view.buttonRadar.isEnabled = param1;
         this._view.buttonShinyPotion.isEnabled = param1;
         this._view.buttonPower.isEnabled = param1;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         var _loc4_:ViewButtonBooster = param1 as ViewButtonBooster;
         if(_loc4_ == null)
         {
            return _loc3_;
         }
         if(!_loc3_ && _loc4_.state == EBoosterButtonState.EBBS_DISABLE)
         {
            switch(_loc4_)
            {
               case this._view.buttonExp:
                  onButtonBoosterClicked(ResourceType.EXP_BOOSTER.id,ResourceType.ID_EXP_BOOSTER_X2);
                  _loc3_ = true;
                  break;
               case this._view.buttonLuckPotion:
                  onButtonBoosterClicked(ResourceType.LUCK_POTION.id,ResourceType.ID_LUCK_POTION_1);
                  _loc3_ = true;
                  break;
               case this._view.buttonRadar:
                  onButtonBoosterClicked(ResourceType.FISH_RADAR.id,ResourceType.ID_GREEN_FISH_RADAR);
                  _loc3_ = true;
                  break;
               case this._view.buttonMagicWatch:
                  onButtonBoosterClicked(ResourceType.MAGIC_WATCH.id,ResourceType.ID_MAGIC_WATCH);
                  _loc3_ = true;
                  break;
               case this._view.buttonShinyPotion:
                  onButtonBoosterClicked(ResourceType.SHINY_POTION.id,ResourceType.ID_SHINY_POTION_1);
                  _loc3_ = true;
                  break;
               case this._view.buttonPower:
                  onButtonBoosterClicked(ResourceType.POWER_BOOSTER.id,ResourceType.ID_POWER_BOOSTER_1);
                  _loc3_ = true;
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function onTimerTick(param1:uint, param2:uint) : void
      {
         this._view.buttonExp.timeLeft = app.user.getRealLeftSec(app.user.currentExpBoosterTimeMark);
         this._view.buttonLuckPotion.timeLeft = app.user.getRealLeftSec(app.user.currentLuckPotionTimeMark);
         this._view.buttonMagicWatch.timeLeft = app.user.getRealLeftSec(app.user.currentMagicWatchTimeMark);
         this._view.buttonRadar.timeLeft = app.user.getRealLeftSec(app.user.currentFishRadarTimeMark);
         this._view.buttonShinyPotion.timeLeft = app.user.getRealLeftSec(app.user.currentShinyPotionTimeMark);
         this._view.buttonPower.timeLeft = app.user.getRealLeftSec(app.user.currentPowerBoosterTimeMark);
      }
      
      private function init() : void
      {
         this.update(EControllerUpdate.ECU_SHINY_STATE);
         this._updateGroup = UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200);
         this._updateGroup.addFunction(this.onTimerTick);
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_SHINY_STATE:
               this._view.buttonShinyPotion.source.visible = GameSwf.instance.managerFeatures.isFeatureEnabled(EUserFeature.EUF_SHINY_FISH);
               break;
            default:
               Debug.assert(false);
         }
      }
      
      public function disableButtonBooster(param1:int) : void
      {
         this.setButtonState(param1,EBoosterButtonState.EBBS_DISABLE);
      }
      
      public function updateButtonBooster(param1:int, param2:int) : void
      {
         var _loc3_:String = EBoosterButtonState.getState(param2);
         this.setButtonState(param1,_loc3_);
      }
      
      private function setButtonState(param1:int, param2:String) : void
      {
         switch(param1)
         {
            case ResourceType.LUCK_POTION.id:
               this._view.buttonLuckPotion.state = param2;
               break;
            case ResourceType.FISH_RADAR.id:
               this._view.buttonRadar.state = param2;
               break;
            case ResourceType.MAGIC_WATCH.id:
               this._view.buttonMagicWatch.state = param2;
               break;
            case ResourceType.EXP_BOOSTER.id:
               this._view.buttonExp.state = param2;
               break;
            case ResourceType.SHINY_POTION.id:
               this._view.buttonShinyPotion.state = param2;
               break;
            case ResourceType.POWER_BOOSTER.id:
               this._view.buttonPower.state = param2;
               break;
            default:
               Debug.assert(false);
         }
      }
   }
}

