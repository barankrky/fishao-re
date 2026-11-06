package com.ax3.fishao.view.dialogs.wheel_of_fortune.model
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.DialogWheelOfFortuneAsset;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.ManagerWheelOfFortune;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.controllers.ControllerDialogWheelOfFortune;
   import flash.events.MouseEvent;
   
   public class DialogWheelOfFortune extends DialogWheelOfFortuneAsset
   {
      
      private var _controllerDialogWheelOfFortune:ControllerDialogWheelOfFortune;
      
      private var _isSpinning:Boolean;
      
      private var _managerWheelOfFortune:ManagerWheelOfFortune;
      
      public function DialogWheelOfFortune()
      {
         super();
         this._managerWheelOfFortune = GameSwf.instance.managerWheelOfFortune;
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_WHEEL_OF_FORTUNE;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this._controllerDialogWheelOfFortune = new ControllerDialogWheelOfFortune(_asset);
         this._isSpinning = false;
      }
      
      override protected function onButtonCloseClicked(param1:MouseEvent) : void
      {
         if(this._isSpinning)
         {
            return;
         }
         GameSwf.currentLocationDialog.setUserExp(app.user.experience);
         this._managerWheelOfFortune.timerStop();
         super.onButtonCloseClicked(param1);
      }
      
      override public function update(param1:String) : void
      {
         if(this._controllerDialogWheelOfFortune == null)
         {
            return;
         }
         switch(param1)
         {
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_START:
               this._controllerDialogWheelOfFortune.update(param1);
               this._isSpinning = true;
               break;
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_ERROR:
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_FINISH:
               this._controllerDialogWheelOfFortune.update(param1);
               this._isSpinning = false;
               break;
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_UPDATE:
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_GOT:
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_UPDATE:
               this._controllerDialogWheelOfFortune.update(param1);
               break;
            default:
               Debug.assert(false,"Unsupported type in update method of DialogWheelOfFortune: " + param1);
         }
      }
   }
}

