package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class CatchInfoSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var txtCaughtIn:TextField;
      
      public var title:DialogTitleWrapper;
      
      public var recommendationBaitView:MovieClip;
      
      public var recommendationRodView:MovieClip;
      
      public var recommendationGadgetView:MovieClip;
      
      public var imgFish:MovieClip;
      
      public function CatchInfoSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "catch_info_dialog.swf";
         super(_loc1_);
      }
   }
}

