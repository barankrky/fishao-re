package com.ax3.fishao.view.dialogs.friends
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class FriendsSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var title:DialogTitleWrapper;
      
      public var btnClose:CloseMenuFishaoButtonWrapper;
      
      public var listSet:MovieClip;
      
      public var btnPreviousPage:FrameButtonWrapper;
      
      public var btnNextPage:FrameButtonWrapper;
      
      public var lblPages:TextField;
      
      public var lblNoFriends:TextField;
      
      public var lblName:TextField;
      
      public var lblLastWorld:TextField;
      
      public var lblActions:TextField;
      
      public var lblFilter:TextField;
      
      public var inpFilter:TextField;
      
      public function FriendsSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "friends_dialog.swf";
         super(_loc1_);
      }
   }
}

