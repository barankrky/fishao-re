package com.ax3.fishao.players
{
   import com.ax3.fishao.display.dialogs.LoginDialog;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   
   public class ManagerPlayers extends ManagerBase
   {
      
      public function ManagerPlayers()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_10M).addFunction(this.update10M);
      }
      
      private function update10M(param1:uint, param2:uint) : void
      {
         if(!app.user.isGuest || GameSwf.instance.managerTutorial.isAnyTutorialInProgress || GameSwf.currentLocationDialog == null)
         {
            return;
         }
         var _loc3_:LoginDialog = GameSwf.instance.getOpenedPopup(LoginDialog) as LoginDialog;
         if(_loc3_ != null)
         {
            return;
         }
         _loc3_ = app.dialogFactory.getLoginDialog();
         _loc3_.show();
      }
   }
}

