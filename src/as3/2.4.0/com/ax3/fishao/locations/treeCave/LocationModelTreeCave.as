package com.ax3.fishao.locations.treeCave
{
   import com.ax3.fishao.locations.sublocation.SublocationModel;
   import com.ax3.fishao.quests.ManagerQuests;
   
   public class LocationModelTreeCave extends SublocationModel
   {
      
      private var _managerQuests:ManagerQuests;
      
      public function LocationModelTreeCave(param1:int)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         this._managerQuests = GameSwf.instance.managerQuests;
      }
   }
}

