package com.ax3.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class _8e0ad3e3097154db523ce770 extends Bitmap
   {
      
      public static const LOADED_EVENT:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掮掩捘控掜掓捧揧挔挒揳授掑挋揕捬挮掄掾挜","挤挒揧揿掁捕掞掎捈挆揂振揍捋揽捚");
      
      public function _8e0ad3e3097154db523ce770()
      {
         super();
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         super.bitmapData = param1;
         dispatchEvent(new Event(LOADED_EVENT));
      }
   }
}

