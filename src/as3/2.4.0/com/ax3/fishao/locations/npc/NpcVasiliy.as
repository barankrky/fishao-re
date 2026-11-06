package com.ax3.fishao.locations.npc
{
   import com.ax3.fishao.ENpcAction;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.chars.IMoveStrategy;
   import com.ax3.fishao.locations.npc.base.ENpcAnswer;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeType;
   
   public class NpcVasiliy extends NPC
   {
      
      private var prevMoveStrategy:IMoveStrategy;
      
      public function NpcVasiliy(param1:LocationUser, param2:FloatInWaterManager)
      {
         super(param1,param2);
      }
      
      override public function onNpcAction(param1:String, param2:Object) : void
      {
         switch(param1)
         {
            case ENpcAction.ENA_OPEN_DIALOG_TRADE:
               this.prevMoveStrategy = moveStrategy;
               moveStrategy = _freezeMovementStrategy;
               noTalk();
               GameSwf.instance.managerTrade.startTradeWith(npcName,ETradeType.ETT_NPC);
               break;
            default:
               super.onNpcAction(param1,param2);
         }
      }
      
      public function onTradeFinished() : void
      {
         moveStrategy = this.prevMoveStrategy;
         onStartTalk(this);
         FishaoFscModelManager.locationExtension.talkWithNpc(npcName,position,2,ENpcAnswer.ENA_YES);
      }
      
      public function onTradeCanceled() : void
      {
         moveStrategy = this.prevMoveStrategy;
         onStartTalk(this);
         FishaoFscModelManager.locationExtension.talkWithNpc(npcName,position,2,ENpcAnswer.ENA_NO);
      }
   }
}

