package com.ax3.fishao.locations.npc
{
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.locations.privateHouse.model.EPlayerPosition;
   
   public class NpcCarp extends NPC
   {
      
      public function NpcCarp(param1:LocationUser, param2:FloatInWaterManager)
      {
         super(param1,param2);
      }
      
      override public function get roomCurrent() : String
      {
         return EPlayerPosition.EPP_FIRST_FLOOR;
      }
   }
}

