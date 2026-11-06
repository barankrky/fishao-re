package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.DialogState;
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.breeding.ManagerBreeding;
   import com.ax3.fishao.view.dialogs.breeding.model.BreedingFish;
   import com.ax3.fishao.view.wrappers.BreederRexFishItemWrapper;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class BreederRexFishSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var title:DialogTitleWrapper;
      
      public var currentFishbucksAmount:TextField;
      
      public var youHave:TextField;
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var addMoreButton:ConfirmFrameButtonWrapper;
      
      public var fish1:BreederRexFishItemWrapper;
      
      public var fish2:BreederRexFishItemWrapper;
      
      public var fish3:BreederRexFishItemWrapper;
      
      private var fish1VO:FishInfoVO;
      
      private var fish2VO:FishInfoVO;
      
      private var fish3VO:FishInfoVO;
      
      public function BreederRexFishSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "breederRexFishDialog.swf";
         super(_loc1_);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this.title.text = I18n.get("breederRexFishDialog_title");
         this.youHave.text = I18n.get("breederRexFishDialog_you_have");
         this.addMoreButton.label = I18n.get("breederRexFishDialog_add_more");
         tabChildren = false;
         this.closeButton.handler = this.onCloseButtonClick;
         if(GameSwf.instance != null)
         {
            this.addMoreButton.handler = GameSwf.instance.showBuyFishbucksDialog;
         }
         this.updateUserFishbucks();
         this.updateFish();
         super.onAssetCreationComplete();
      }
      
      public function updateFishes() : void
      {
         var _loc1_:BreedingFish = null;
         var _loc2_:FishInfoVO = null;
         var _loc3_:ManagerBreeding = GameSwf.instance.managerBreeding;
         var _loc4_:Array = _loc3_.fishes;
         this.fish1VO = this.fish2VO = this.fish3VO = null;
         var _loc5_:int = 0;
         for each(_loc1_ in _loc4_)
         {
            _loc2_ = app.fishDict.get(_loc1_.id) as FishInfoVO;
            _loc2_.breedingSuccessRateCurrent = _loc1_.succesRate;
            _loc2_.breedingDuration = _loc1_.timeLeft;
            _loc5_++;
            switch(_loc5_)
            {
               case 1:
                  this.fish1VO = _loc2_;
                  break;
               case 2:
                  this.fish2VO = _loc2_;
                  break;
               case 3:
                  this.fish3VO = _loc2_;
            }
         }
         if(_state == DialogState.ASSET_COMPLETE)
         {
            this.updateFish();
         }
      }
      
      private function updateFish() : void
      {
         this.fish1.hide();
         this.fish2.hide();
         this.fish3.hide();
         if(this.fish1VO != null)
         {
            this.fish1.setFish(this.fish1VO);
            this.fish1.show();
         }
         if(this.fish2VO != null)
         {
            this.fish2.setFish(this.fish2VO);
            this.fish2.show();
         }
         if(this.fish3VO != null)
         {
            this.fish3.setFish(this.fish3VO);
            this.fish3.show();
         }
      }
      
      private function onCloseButtonClick(param1:MouseEvent) : void
      {
         close();
      }
      
      protected function updateUserFishbucks(param1:Event = null) : void
      {
         this.currentFishbucksAmount.text = String(app.user.fishbucks);
      }
      
      override public function activate() : void
      {
         super.deactivate();
         app.user.onFishbucksChange(this.updateUserFishbucks);
         this.fish1.addEventListener(BreederRexFishItemWrapper.BREEDER_BUTTON_CLICK,this.onBreedButtonClick);
         this.fish2.addEventListener(BreederRexFishItemWrapper.BREEDER_BUTTON_CLICK,this.onBreedButtonClick);
         this.fish3.addEventListener(BreederRexFishItemWrapper.BREEDER_BUTTON_CLICK,this.onBreedButtonClick);
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         app.user.removeOnFishbucksChange(this.updateUserFishbucks);
         if(this.fish1.hasEventListener(BreederRexFishItemWrapper.BREEDER_BUTTON_CLICK))
         {
            this.fish1.removeEventListener(BreederRexFishItemWrapper.BREEDER_BUTTON_CLICK,this.onBreedButtonClick);
         }
         if(this.fish1.hasEventListener(BreederRexFishItemWrapper.BREEDER_BUTTON_CLICK))
         {
            this.fish1.removeEventListener(BreederRexFishItemWrapper.BREEDER_BUTTON_CLICK,this.onBreedButtonClick);
         }
         if(this.fish1.hasEventListener(BreederRexFishItemWrapper.BREEDER_BUTTON_CLICK))
         {
            this.fish1.removeEventListener(BreederRexFishItemWrapper.BREEDER_BUTTON_CLICK,this.onBreedButtonClick);
         }
      }
      
      private function onBreedButtonClick(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         super.close();
      }
   }
}

