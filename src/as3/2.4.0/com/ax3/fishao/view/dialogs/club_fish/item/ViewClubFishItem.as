package com.ax3.fishao.view.dialogs.club_fish.item
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsColor;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem.ViewWithLoadedImage;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   
   public class ViewClubFishItem extends ViewBase
   {
      
      private var _source:gViewClubsFishItem = new gViewClubsFishItem();
      
      private var _buttonBuy:FrameButtonWrapper;
      
      private var _viewFish:ViewWithLoadedImage;
      
      private var _labelTitle:TextFieldAutofitWrapper;
      
      private var _labelLock:TextFieldAutofitWrapper;
      
      public function ViewClubFishItem(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function get viewFish() : ViewWithLoadedImage
      {
         return this._viewFish;
      }
      
      public function get buttonBuy() : FrameButtonWrapper
      {
         return this._buttonBuy;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this._source.viewLock.visible = param1;
         this._source.viewUnlocked.visible = !param1;
         this._source.labelLock.visible = param1;
         this._buttonBuy.visible = param1;
         this._viewFish.filters = param1 ? [UtilsColor.getFilter(-256)] : [];
      }
      
      public function set name(param1:String) : void
      {
         this._labelTitle.text = param1;
      }
      
      public function set fishID(param1:int) : void
      {
         this._viewFish.imageURL = FishaoBitmapLoader.convertImageNameURL(ConstantsBase.IMAGE_NAME_FISH_225.replace(EStringTypeStubs.ESTS_ID,param1));
      }
      
      public function onLockedByPoints(param1:int) : void
      {
         this.isLocked = true;
         var _loc2_:String = I18n.get(EStringType.EST_CLUB_FISH_LABEL_LOCK);
         _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_VALUE,param1);
         this._labelLock.text = _loc2_;
         this._buttonBuy.visible = false;
         this._source.labelLock.visible = true;
      }
      
      public function onLockedByCoins(param1:int) : void
      {
         this.isLocked = true;
         this._buttonBuy.visible = true;
         this._buttonBuy.label = param1.toString();
         this._source.labelLock.visible = false;
      }
      
      private function init() : void
      {
         this._viewFish = new ViewWithLoadedImage(controller,this._source.viewFish);
         this._viewFish.handleEvents(true);
         this._viewFish.source.visible = true;
         this._viewFish.source.alpha = 0.01;
         this._labelTitle = createAutofitLabel("labelTitle",null);
         this._labelLock = createAutofitLabel("labelLock",null);
         this._buttonBuy = createButton("buttonBuy");
      }
   }
}

