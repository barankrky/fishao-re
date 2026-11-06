package com.ax3.fishao.tutorial.simple.base
{
   import com.ax3.fishao.display.Gui;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.tutorial.helpers.ETutorialPopupSize;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperPopup;
   import com.ax3.fishao.utils.I18n;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class TutorialInfoSimple extends TutorialInfo
   {
      
      public function TutorialInfoSimple()
      {
         super();
      }
      
      protected function focusOnMapIcon(param1:String) : void
      {
         var _loc2_:Gui = this.gui;
         if(_loc2_ == null)
         {
            return;
         }
         this.disableGui();
         var _loc3_:TutorialHelpers = this.tutorialHelpers;
         _loc2_.mainMenu.mapIcon.enable();
         var _loc4_:DisplayObject = _loc2_.mainMenu.mapIcon;
         _loc3_.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc4_),30);
         _loc3_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc4_,new Point(_loc4_.width / 2,-50)),0);
         if(param1 != null)
         {
            _loc3_.helperPopup.showOnlyTextBig(I18n.get(param1));
         }
      }
      
      override protected function prepareAndGetPopup() : TutorialHelperPopup
      {
         var _loc1_:TutorialHelperPopup = super.prepareAndGetPopup();
         _loc1_.sizeLabel = ETutorialPopupSize.ETPS_MEDIUM;
         return _loc1_;
      }
   }
}

