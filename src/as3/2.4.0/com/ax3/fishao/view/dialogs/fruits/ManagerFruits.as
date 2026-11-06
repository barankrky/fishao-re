package com.ax3.fishao.view.dialogs.fruits
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.fruits.model.FruitItem;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.fruits.FscExtensionFruits;
   import protocol.api.fruits.crush.ResponseFruitsCrush;
   
   public class ManagerFruits extends ManagerBase
   {
      
      private var _extensionFruits:FscExtensionFruits;
      
      private var _selectedFruits:Array;
      
      public function ManagerFruits()
      {
         super();
         this.init();
      }
      
      public function get selectedFruits() : Array
      {
         return this._selectedFruits;
      }
      
      private function onFruitsCrush(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc2_:ResponseFruitsCrush = param1 as ResponseFruitsCrush;
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_FRUITS_CRUSH_FINISHED,EDialogType.EDT_FRUITS_CRUSH);
         this._selectedFruits = [];
      }
      
      private function init() : void
      {
         this._extensionFruits = FishaoFscModelManager.fscModel.extensionFruits;
         this._selectedFruits = [];
         addResponseHandler(ResponseFruitsCrush,this.onFruitsCrush);
      }
      
      public function selectItem(param1:FruitItem) : void
      {
         if(this._selectedFruits.length == 3)
         {
            return;
         }
         this._selectedFruits.push(param1);
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_FRUITS_CRUSH_UPDATE,EDialogType.EDT_FRUITS_CRUSH);
      }
      
      public function unselectItem(param1:FruitItem) : void
      {
         var _loc2_:FruitItem = this.getItemFromSelected(param1);
         Debug.assertNotEqual(_loc2_,null,"Can\'t find item to unselect");
         this._selectedFruits.splice(this._selectedFruits.indexOf(_loc2_),1);
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_FRUITS_CRUSH_UPDATE,EDialogType.EDT_FRUITS_CRUSH);
      }
      
      public function crushFruits() : void
      {
         var _loc1_:FruitItem = null;
         if(this._selectedFruits.length == 0)
         {
            this.cancelFruitCrush();
            return;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this._selectedFruits)
         {
            _loc2_.push(_loc1_.id);
         }
         this._extensionFruits.crushFruits(_loc2_);
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_FRUITS_CRUSH_STARTED,EDialogType.EDT_FRUITS_CRUSH);
      }
      
      private function getItemFromSelected(param1:FruitItem) : FruitItem
      {
         var _loc2_:FruitItem = null;
         var _loc3_:FruitItem = null;
         for each(_loc2_ in this._selectedFruits)
         {
            if(_loc2_.id == param1.id)
            {
               _loc3_ = _loc2_;
            }
         }
         return _loc3_;
      }
      
      public function cancelFruitCrush() : void
      {
         this._selectedFruits = [];
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_FRUITS_CRUSH_CANCELED,EDialogType.EDT_FRUITS_CRUSH);
      }
   }
}

