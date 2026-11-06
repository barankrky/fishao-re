package com.ax3.fishao.view.dialogs.club_fish.item
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.requirements.ERequirementType;
   import com.ax3.fishao.requirements.RequirementClubPoints;
   import com.ax3.fishao.requirements.RequirementClubUnlockByFishcoins;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CatchInfoSwfDialog;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.club_fish.ControllerClubFish;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.events.Event;
   
   public class ControllerClubFishItem extends Controller
   {
      
      private var _view:ViewClubFishItem = new ViewClubFishItem(this);
      
      private var _isUnlocked:Boolean;
      
      private var _fish:FishInfoVO;
      
      private var _owner:ControllerClubFish;
      
      private var _clubPoints:int;
      
      public function ControllerClubFishItem(param1:ControllerClubFish, param2:FishInfoVO, param3:Boolean, param4:int)
      {
         super(this._view);
         this._owner = param1;
         this._fish = param2;
         this._isUnlocked = param3;
         this._clubPoints = param4;
         this.init();
      }
      
      private function onResponseReceived(param1:ServerResp) : void
      {
         if(UtilsDialog.tryHandleResponseError(param1))
         {
            return;
         }
         this._owner.onFishUnlocked(this._fish.id);
         this._view.isLocked = false;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:CatchInfoSwfDialog = null;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._view.buttonBuy:
                  FishaoFscModelManager.fscModel.extensionFishes.unlockClub(this._fish.id,Preloader.waitForResponse(this.onResponseReceived));
                  _loc4_ = true;
                  break;
               case this._view.viewFish:
                  _loc3_ = app.dialogFactory.getDialog(CatchInfoSwfDialog);
                  _loc3_.setFish(this._fish.id);
                  _loc3_.show();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         this._view.fishID = this._fish.id;
         var _loc1_:RequirementClubUnlockByFishcoins = this._fish.getRequirement(ERequirementType.ERT_CLUB_UNLOCK_BY_FISHCOINS) as RequirementClubUnlockByFishcoins;
         var _loc2_:RequirementClubPoints = this._fish.getRequirement(ERequirementType.ERT_CLUB_POINTS) as RequirementClubPoints;
         var _loc3_:Boolean = _loc1_ != null;
         var _loc4_:Boolean = _loc2_ != null && this._clubPoints < _loc2_.points;
         if(this._isUnlocked)
         {
            this._view.isLocked = false;
         }
         else if(_loc4_)
         {
            this._view.onLockedByPoints(_loc2_.points);
         }
         else if(_loc3_)
         {
            this._view.onLockedByCoins(_loc1_.price);
         }
         else
         {
            this._view.isLocked = false;
         }
      }
   }
}

