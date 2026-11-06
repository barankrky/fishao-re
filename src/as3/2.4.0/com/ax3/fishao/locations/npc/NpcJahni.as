package com.ax3.fishao.locations.npc
{
   import com.ax3.fishao.ENpcAction;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.chars.IMoveStrategy;
   import com.ax3.fishao.locations.npc.base.ENpcAnswer;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fruits.model.DialogFruitsCrush;
   
   public class NpcJahni extends NPC
   {
      
      private var prevMoveStrategy:IMoveStrategy;
      
      public function NpcJahni(param1:LocationUser, param2:FloatInWaterManager)
      {
         super(param1,param2);
      }
      
      override public function onNpcAction(param1:String, param2:Object) : void
      {
         var _loc3_:DialogFruitsCrush = null;
         switch(param1)
         {
            case ENpcAction.ENA_OPEN_DIALOG_FRUITS_CRUSH:
               this.prevMoveStrategy = moveStrategy;
               moveStrategy = _freezeMovementStrategy;
               noTalk();
               _loc3_ = app.dialogFactory.getDialogFruitsCrush();
               _loc3_.show();
               break;
            default:
               super.onNpcAction(param1,param2);
         }
      }
      
      public function onFruitsCrushCanceled() : void
      {
         moveStrategy = this.prevMoveStrategy;
         onStartTalk(this);
         FishaoFscModelManager.locationExtension.talkWithNpc(npcName,position,2,ENpcAnswer.ENA_NO);
      }
      
      public function onFruitsCrushFinished() : void
      {
         moveStrategy = this.prevMoveStrategy;
         onStartTalk(this);
         FishaoFscModelManager.locationExtension.talkWithNpc(npcName,position,2,ENpcAnswer.ENA_YES);
      }
   }
}

