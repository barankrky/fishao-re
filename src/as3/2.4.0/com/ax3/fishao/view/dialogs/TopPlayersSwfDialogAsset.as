package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class TopPlayersSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var closeButton:FishaoButtonWrapper;
      
      public var title:TextField;
      
      public var playerHeader:TextField;
      
      public var fishHeader:TextField;
      
      public var lengthHeader:TextField;
      
      public var timeHeader:TextField;
      
      public var line1:MovieClip;
      
      public var line2:MovieClip;
      
      public var line3:MovieClip;
      
      public var line4:MovieClip;
      
      public var line5:MovieClip;
      
      public var line6:MovieClip;
      
      public var line7:MovieClip;
      
      public var line8:MovieClip;
      
      public var line9:MovieClip;
      
      public var line10:MovieClip;
      
      public function TopPlayersSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "top_players.swf";
         super(_loc1_);
      }
   }
}

