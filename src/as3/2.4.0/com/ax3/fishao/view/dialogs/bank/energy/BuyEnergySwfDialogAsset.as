package com.ax3.fishao.view.dialogs.bank.energy
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.FishbucksIndicatorWrapper;
   import com.ax3.display.wrappers.impl.FishcoinsIndicatorWrapper;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class BuyEnergySwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var title:TextField;
      
      public var fishcoinsIndicator:FishcoinsIndicatorWrapper;
      
      public var fishbucksIndicator:FishbucksIndicatorWrapper;
      
      public var line1:MovieClip;
      
      public var line2:MovieClip;
      
      public var line3:MovieClip;
      
      public var line4:MovieClip;
      
      public var line5:MovieClip;
      
      public var buyButton1:FishaoButtonWrapper;
      
      public var buyButton2:FishaoButtonWrapper;
      
      public var buyButton3:FishaoButtonWrapper;
      
      public var buyButton4:FishaoButtonWrapper;
      
      public var buyButton5:FishaoButtonWrapper;
      
      public function BuyEnergySwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "buy_energy.swf";
         super(_loc1_);
      }
   }
}

