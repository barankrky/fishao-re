package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.IBaseDialog;
   
   public class TopPopupGroup extends BasePopupGroup
   {
      
      public function TopPopupGroup(param1:int)
      {
         super(param1);
      }
      
      override protected function showAnimation(param1:IBaseDialog) : void
      {
         onShowAnimationComplete(param1);
      }
      
      override protected function closeAnimation(param1:IBaseDialog) : void
      {
         onCloseAnimationComplete(param1);
      }
   }
}

