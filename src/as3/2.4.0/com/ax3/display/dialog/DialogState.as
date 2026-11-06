package com.ax3.display.dialog
{
   public class DialogState
   {
      
      public static const NONE:DialogState = new DialogState("none");
      
      public static const ASSET_CREATING:DialogState = new DialogState("assetCreating");
      
      public static const ASSET_COMPLETE:DialogState = new DialogState("assetComplete");
      
      public static var READY:DialogState = new DialogState("ready");
      
      public var name:String;
      
      public function DialogState(param1:String)
      {
         super();
         this.name = param1;
      }
   }
}

