package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.ScrollListWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.text.TextField;
   
   public class TimezoneSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var title:TextField;
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var description:TextField;
      
      public var currentTime:TextField;
      
      public var applyButton:FrameButtonWrapper;
      
      public var continentsList:ScrollListWrapper;
      
      public var placesList:ScrollListWrapper;
      
      public function TimezoneSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "TimezoneDialog.swf";
         super(_loc1_);
      }
      
      override public function get width() : Number
      {
         return 733;
      }
      
      override public function get height() : Number
      {
         return 579;
      }
   }
}

