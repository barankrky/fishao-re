package com.ax3.fishao.view.dialogs.fruits.model
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.fruits.DialogFruitsCrushAsset;
   import com.ax3.fishao.view.dialogs.fruits.controllers.ControllerDialogFruitsCrush;
   import flash.events.MouseEvent;
   
   public class DialogFruitsCrush extends DialogFruitsCrushAsset
   {
      
      private var _controllerDialogFruitsCrush:ControllerDialogFruitsCrush;
      
      private var _isCrushing:Boolean;
      
      public function DialogFruitsCrush()
      {
         super();
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_FRUITS_CRUSH;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this._controllerDialogFruitsCrush = new ControllerDialogFruitsCrush(_asset);
         this._isCrushing = false;
      }
      
      override protected function onButtonCloseClicked(param1:MouseEvent) : void
      {
         Debug.assertNotEqual(this._controllerDialogFruitsCrush,null,"Impossible that controller is not initialized while clicking on close trade dialog");
         if(!this._isCrushing)
         {
            GameSwf.instance.managerFruits.cancelFruitCrush();
         }
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_FRUITS_CRUSH_UPDATE:
            case EControllerUpdate.ECU_FRUITS_CRUSH_CANCELED:
            case EControllerUpdate.ECU_FRUITS_CRUSH_FINISHED:
               this._controllerDialogFruitsCrush.update(param1);
               break;
            case EControllerUpdate.ECU_FRUITS_CRUSH_STARTED:
               this._isCrushing = true;
               this._controllerDialogFruitsCrush.update(param1);
               break;
            default:
               Debug.assert(false,"Unsupported type in update method of DialogFruitsCrush: " + param1);
         }
      }
   }
}

