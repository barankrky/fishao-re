package com.ax3.fishao.view.dialogs
{
   import flash.events.Event;
   
   public class BreederRexFishSwfDialog extends BreederRexFishSwfDialogAsset
   {
      
      public static const BREEDER_DIALOG_CLOSED:String = "breeder_dialog_closed";
      
      public function BreederRexFishSwfDialog()
      {
         super();
      }
      
      override public function close() : void
      {
         super.close();
         dispatchEvent(new Event(BREEDER_DIALOG_CLOSED));
      }
   }
}

