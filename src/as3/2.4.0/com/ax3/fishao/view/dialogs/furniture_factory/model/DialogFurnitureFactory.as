package com.ax3.fishao.view.dialogs.furniture_factory.model
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.furniture_factory.DialogFurnitureFactoryAsset;
   import com.ax3.fishao.view.dialogs.furniture_factory.ManagerFurnitureFactory;
   import com.ax3.fishao.view.dialogs.furniture_factory.controllers.ControllerDialogFurnitureFactory;
   
   public class DialogFurnitureFactory extends DialogFurnitureFactoryAsset
   {
      
      private var _controllerDialogFurnitureFactory:ControllerDialogFurnitureFactory;
      
      private var _managerFurnitureFactory:ManagerFurnitureFactory;
      
      public function DialogFurnitureFactory()
      {
         super();
         this._managerFurnitureFactory = GameSwf.instance.managerFurnitureFactory;
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_FURNITURE_FACTORY;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this._controllerDialogFurnitureFactory = new ControllerDialogFurnitureFactory(_asset);
      }
      
      override public function update(param1:String) : void
      {
         if(this._controllerDialogFurnitureFactory == null)
         {
            return;
         }
         switch(param1)
         {
            case EControllerUpdate.ECU_FURNITURE_FACTORY_REWARD_GOT:
            case EControllerUpdate.ECU_FURNITURE_FACTORY_UPDATE:
            case EControllerUpdate.ECU_FURNITURE_FACTORY_REWARD_ANIMATION_COMPLETE:
               this._controllerDialogFurnitureFactory.update(param1);
               break;
            default:
               Debug.assert(false,"Unsupported type in update method of DialogFurnitureFactory: " + param1);
         }
      }
   }
}

