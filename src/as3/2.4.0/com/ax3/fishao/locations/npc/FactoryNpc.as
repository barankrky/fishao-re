package com.ax3.fishao.locations.npc
{
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.npc.base.ENpcName;
   import com.ax3.fishao.locations.npc.base.NPC;
   
   public class FactoryNpc
   {
      
      public function FactoryNpc()
      {
         super();
      }
      
      public static function createNpc(param1:String, param2:LocationUser, param3:FloatInWaterManager) : NPC
      {
         var _loc4_:NPC = null;
         switch(param1)
         {
            case ENpcName.ENN_BOB:
               _loc4_ = new NpcBob(param2,param3);
               break;
            case ENpcName.ENN_CARP:
               _loc4_ = new NpcCarp(param2,param3);
               break;
            case ENpcName.ENN_JAHNI:
               _loc4_ = new NpcJahni(param2,param3);
               break;
            case ENpcName.ENN_LUCKY_SAILOR:
               _loc4_ = new NpcLuckySailor(param2,param3);
               break;
            case ENpcName.ENN_REX:
               _loc4_ = new NpcRex(param2,param3);
               break;
            case ENpcName.ENN_RUSSELL:
               _loc4_ = new NpcRussell(param2,param3);
               break;
            case ENpcName.ENN_SAM:
               _loc4_ = new NpcSam(param2,param3);
               break;
            case ENpcName.ENN_VASILIY:
               _loc4_ = new NpcVasiliy(param2,param3);
               break;
            default:
               _loc4_ = new NPC(param2,param3);
         }
         _loc4_.npcName = param1;
         return _loc4_;
      }
   }
}

