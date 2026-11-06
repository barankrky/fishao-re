package com.ax3.fishao.locations.npc
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.chars.IMoveStrategy;
   import com.ax3.fishao.locations.npc.base.ENpcAnswer;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.locations.privateHouse.model.EPlayerPosition;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   
   public class NpcRex extends NPC
   {
      
      private var prevMoveStrategy:IMoveStrategy;
      
      public function NpcRex(param1:LocationUser, param2:FloatInWaterManager)
      {
         super(param1,param2);
      }
      
      override public function get roomCurrent() : String
      {
         return EPlayerPosition.EPP_GARDEN;
      }
      
      override public function toChat(param1:String, param2:int) : void
      {
         if(param1 != "@open_breeder_dialog" && param1 != "@open_breeding_status_dialog")
         {
            super.toChat(param1,param2);
         }
         else
         {
            this.prevMoveStrategy = moveStrategy;
            moveStrategy = _freezeMovementStrategy;
            noTalk();
         }
      }
      
      public function breedingDialogClosed() : void
      {
         moveStrategy = this.prevMoveStrategy;
         if(onStartTalk != null)
         {
            onStartTalk(this);
         }
         this.toChat(I18n.get("Breeder_Rex_dialog_closed"),0);
      }
      
      public function breedingStatusDialogClosed() : void
      {
         moveStrategy = this.prevMoveStrategy;
         tryCallOnStartTalk();
         this.toChat(I18n.get("Breeder_Rex_come_later"),0);
      }
      
      public function breedingFinishedCheck() : void
      {
         moveStrategy = this.prevMoveStrategy;
         tryCallOnStartTalk();
         FishaoFscModelManager.locationExtension.talkWithNpc(this.npcName,position,0,ENpcAnswer.ENA_NO,Preloader.waitForResponse());
      }
      
      public function tryBreed(param1:Number, param2:int) : void
      {
         var _loc3_:String = null;
         var _loc4_:FishInfoVO = app.fishDict.get(param1) as FishInfoVO;
         switch(param2)
         {
            case 0:
               _loc3_ = I18n.get("Breeder_Rex_fish_chosen");
               break;
            case 1:
               _loc3_ = I18n.get("Breeder_Rex_fish_instant_breed");
         }
         _loc3_ = _loc3_.split("#FISHNAME#").join(_loc4_.displayName);
         moveStrategy = this.prevMoveStrategy;
         onStartTalk(this);
         this.toChat(_loc3_,0);
      }
   }
}

