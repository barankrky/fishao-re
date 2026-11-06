package com.ax3.fishao.view.dialogs.missions
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoCheckboxWrapper;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class MissionCompletedSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var labelHeader:TextField;
      
      public var labelMissionTitle:TextField;
      
      public var labelMissionDescription:TextField;
      
      public var labelMissionReward:TextField;
      
      public var labelRewardDescription:TextField;
      
      public var labelShareProgress:TextField;
      
      public var checkShareProgress:FishaoCheckboxWrapper;
      
      public var buttonCollect:FishaoButtonWrapper;
      
      public var rewardImageContainer:MovieClip;
      
      public function MissionCompletedSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "mission_completed_dialog.swf";
         super(_loc1_);
      }
   }
}

