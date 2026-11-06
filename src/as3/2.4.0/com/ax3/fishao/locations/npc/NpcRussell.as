package com.ax3.fishao.locations.npc
{
   import com.ax3.fishao.ENpcAction;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import flash.events.Event;
   
   public class NpcRussell extends NPC
   {
      
      public function NpcRussell(param1:LocationUser, param2:FloatInWaterManager)
      {
         super(param1,param2);
      }
      
      override public function onNpcAction(param1:String, param2:Object) : void
      {
         switch(param1)
         {
            case ENpcAction.ENA_OPEN_DIALOG_FURNITURE_FACTORY:
               PopupManager.LOADING_SCREEN.removeCurrent();
               npcDialog.close();
               GameSwf.instance.managerFurnitureFactory.getInfo();
               break;
            default:
               super.onNpcAction(param1,param2);
         }
      }
      
      override protected function onChatClose(param1:Event) : void
      {
         super.onChatClose(param1);
         GameSwf.instance.managerFurnitureFactory.getInfo();
      }
   }
}

