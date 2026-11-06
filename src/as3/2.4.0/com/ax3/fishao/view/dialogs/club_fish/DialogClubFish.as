package com.ax3.fishao.view.dialogs.club_fish
{
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   
   public class DialogClubFish extends DialogBase
   {
      
      private var _controller:ControllerClubFish;
      
      private var _isSalt:Boolean;
      
      public function DialogClubFish()
      {
         super("dialog_club_fish.swf");
      }
      
      public function set isSalt(param1:Boolean) : void
      {
         this._isSalt = param1;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this._controller = new ControllerClubFish(this._asset,this._isSalt);
      }
      
      override public function destroy() : void
      {
         this._controller.cleanup();
         this._controller = null;
         super.destroy();
      }
   }
}

