package com.ax3.fishao.view.dialogs.missions
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.fishao.view.buttons.ResizableButtonWrapper;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class MissionsSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var title:DialogTitleWrapper;
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var labelHeader:TextField;
      
      public var labelMissionTitle:TextField;
      
      public var labelMissionDescription:TextField;
      
      public var labelMissionProgressValue:TextField;
      
      public var labelMissionReward:TextField;
      
      public var labelMissionRewardDescription:TextField;
      
      public var labelPagesValue:TextField;
      
      public var labelProgressOverall:TextField;
      
      public var labelProgressOverallValue:TextField;
      
      public var buttonAcceptMission:FishaoButtonWrapper;
      
      public var buttonCollect:FishaoButtonWrapper;
      
      public var buttonSwitchView:ResizableButtonWrapper;
      
      public var buttonPrevPage:FrameButtonWrapper;
      
      public var buttonNextPage:FrameButtonWrapper;
      
      public var progressBarMission:MovieClip;
      
      public var progressBarOverall:MovieClip;
      
      public var rewardImageContainer:MovieClip;
      
      public function MissionsSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "missions_dialog.swf";
         super(_loc1_);
      }
   }
}

