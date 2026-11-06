package com.ax3.fishao.quests
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   
   public class QuestInfoGameEnd extends QuestInfoBase
   {
      
      private var _lostValleyOpened:Boolean;
      
      private var _marshvilleBridgeKeyVisible:Boolean;
      
      private var _marshvilleTreeCaveAccessible:Boolean;
      
      public function QuestInfoGameEnd()
      {
         super();
         this.init();
      }
      
      public function get lostValleyOpened() : Boolean
      {
         return this._lostValleyOpened;
      }
      
      public function get marshvilleBridgeKeyVisible() : Boolean
      {
         return this._marshvilleBridgeKeyVisible;
      }
      
      public function get marshvilleTreeCaveAccessible() : Boolean
      {
         return this._marshvilleTreeCaveAccessible;
      }
      
      private function init() : void
      {
         this._lostValleyOpened = false;
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         this._lostValleyOpened = Debug.getPropertyOrDefault(param1,"lost_valley_opened",this._lostValleyOpened);
         this._marshvilleBridgeKeyVisible = Debug.getPropertyOrDefault(param1,"marshville_bridge_visible",this._marshvilleBridgeKeyVisible);
         this._marshvilleTreeCaveAccessible = Debug.getPropertyOrDefault(param1,"marshville_tree_cave_accessible",this._marshvilleTreeCaveAccessible);
         var _loc2_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc2_ != null)
         {
            _loc2_.updateWithType(EControllerUpdate.ECU_QUESTS_GAME_END_INFO_UPDATED);
         }
      }
   }
}

