package com.ax3.signals.impl
{
   import com.ax3.signals.Signal;
   
   public class DialogManagerSignals
   {
      
      public var dialogAssetCreatingComplete:Signal = new Signal();
      
      public var dialogAssetCreatingStart:Signal = new Signal();
      
      public function DialogManagerSignals()
      {
         super();
      }
   }
}

