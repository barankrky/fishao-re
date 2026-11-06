package com.ax3.fishao.view.panels.user_popup
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   
   public class ViewUserPopupNotInClub extends ViewUserPopupBase
   {
      
      public function ViewUserPopupNotInClub(param1:IController)
      {
         super(param1,new gViewUserInfoTooltip());
      }
   }
}

