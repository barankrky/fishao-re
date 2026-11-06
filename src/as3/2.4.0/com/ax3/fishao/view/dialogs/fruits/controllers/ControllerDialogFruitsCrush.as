package com.ax3.fishao.view.dialogs.fruits.controllers
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.npc.NpcJahni;
   import com.ax3.fishao.locations.npc.base.ENpcName;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.fruits.ManagerFruits;
   import com.ax3.fishao.view.dialogs.fruits.views.ViewDialogFruitsCrush;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class ControllerDialogFruitsCrush extends Controller
   {
      
      private var _view:ViewDialogFruitsCrush;
      
      private var _managerFruits:ManagerFruits;
      
      private var _itemsInventory:ControllerFruitsInventory;
      
      private var _itemsSelected:ControllerFruitsSelected;
      
      public function ControllerDialogFruitsCrush(param1:DisplayObjectContainer)
      {
         this._view = new ViewDialogFruitsCrush(this,param1);
         super(this._view);
         this.init();
      }
      
      private static function closeDialog() : void
      {
         PopupManager.getInstance().currentDialog().close();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.buttonCrush:
                  this._managerFruits.crushFruits();
                  break;
               default:
                  Debug.assert(false,"Unsupported click target onViewClicked method of ControllerDialogFruitsCrush");
            }
         }
         return _loc3_;
      }
      
      private function onCrushStart() : void
      {
         this._view.buttonCrush.disable();
         FishaoSoundManager.play(FishaoSoundManager.SFX_073_AMB_Fruits_crushing);
      }
      
      private function init() : void
      {
         this._managerFruits = GameSwf.instance.managerFruits;
         this._itemsInventory = new ControllerFruitsInventory(Debug.assertProperty(this._view.source,"viewInventory"));
         this._itemsSelected = new ControllerFruitsSelected(Debug.assertProperty(this._view.source,"viewSelected"));
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:NpcJahni = GameSwf.currentLocationDialog.locationModel.getNPCbyName(ENpcName.ENN_JAHNI) as NpcJahni;
         switch(param1)
         {
            case EControllerUpdate.ECU_FRUITS_CRUSH_UPDATE:
               this._itemsInventory.update(param1);
               this._itemsSelected.update(param1);
               break;
            case EControllerUpdate.ECU_FRUITS_CRUSH_CANCELED:
               _loc2_.onFruitsCrushCanceled();
               closeDialog();
               break;
            case EControllerUpdate.ECU_FRUITS_CRUSH_STARTED:
               this.onCrushStart();
               this._itemsInventory.update(param1);
               this._itemsSelected.update(param1);
               break;
            case EControllerUpdate.ECU_FRUITS_CRUSH_FINISHED:
               _loc2_.onFruitsCrushFinished();
               closeDialog();
               break;
            default:
               Debug.assert(false,"Unsupported type in update method of DialogFruitsCrush: " + param1);
         }
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
   }
}

