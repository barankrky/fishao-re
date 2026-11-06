package com.ax3.display.dialog
{
   public class SWFDialogConfig
   {
      
      public static var globalPostfix:String = "";
      
      private var _swfFileName:String;
      
      public function SWFDialogConfig()
      {
         super();
      }
      
      public function get swfFileName() : String
      {
         return this._swfFileName + globalPostfix;
      }
      
      public function get swfFileNameRaw() : String
      {
         return this._swfFileName;
      }
      
      public function set swfFileName(param1:String) : void
      {
         this._swfFileName = param1;
      }
   }
}

