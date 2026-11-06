package com.ax3.fishao.tutorial.views.panels.bite_panel
{
   import com.ax3.fishao.display.panels.BiteProcessPanelAsset;
   
   public class BitePanelTutorial extends BiteProcessPanelAsset
   {
      
      public function BitePanelTutorial()
      {
         super();
      }
      
      override public function set fishSizeCm(param1:Number) : void
      {
         if(GameSwf.instance.managerTutorial.isTutorialCommonComplete)
         {
            super.fishSizeCm = param1;
            return;
         }
         if(_fishSizeCm == param1)
         {
            return;
         }
         _fishSizeCm = param1;
         _fishSizeCmFactor = _fishSizeCm * 0.025 * (11 + _fishRandom - 0.33) / 11;
      }
   }
}

