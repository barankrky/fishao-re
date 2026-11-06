package com.ax3.fishao.locations.npc
{
   import com.ax3.fishao.ENpcAction;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.chars.IMoveStrategy;
   import com.ax3.fishao.locations.npc.base.NPC;
   
   public class NpcLuckySailor extends NPC
   {
      
      private var prevMoveStrategy:IMoveStrategy;
      
      public function NpcLuckySailor(param1:LocationUser, param2:FloatInWaterManager)
      {
         super(param1,param2);
      }
      
      override public function onNpcAction(param1:String, param2:Object) : void
      {
         switch(param1)
         {
            case ENpcAction.ENA_OPEN_DIALOG_WHEEL_OF_FORTUNE:
               this.prevMoveStrategy = moveStrategy;
               moveStrategy = _freezeMovementStrategy;
               this.dialogStep = 0;
               noTalk();
               GameSwf.instance.managerWheelOfFortune.getInfo();
               break;
            default:
               super.onNpcAction(param1,param2);
         }
      }
   }
}

