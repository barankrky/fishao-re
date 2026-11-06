package com.ax3.fishao.players
{
   import com.ax3.fishao.display.dialogs._ff4bc99b83037eb582ba7515;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   
   public class _d69406d4038d621b7c23451e extends _9d4645de4f8d7c9a1a570db1
   {
      
      public function _d69406d4038d621b7c23451e()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_10M)._475178699397df7592a9026e(this._73da4d279a6a91dc0c19e8a7);
      }
      
      private function _73da4d279a6a91dc0c19e8a7(param1:uint, param2:uint) : void
      {
         if(!app.user.isGuest || GameSwf.instance.managerTutorial.isAnyTutorialInProgress || GameSwf.currentLocationDialog == null)
         {
            return;
         }
         var _loc3_:_ff4bc99b83037eb582ba7515 = GameSwf.instance._4aeac9e48c0facbd15fae3ba(_ff4bc99b83037eb582ba7515) as _ff4bc99b83037eb582ba7515;
         if(_loc3_ != null)
         {
            return;
         }
         _loc3_ = app.dialogFactory._1f3561c317f3572f00e9a035();
         _loc3_.show();
      }
   }
}

