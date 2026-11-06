package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.InventoryTabWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.fishesPanel.ProfileFishesWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.inventoryPanel.ProfileInventoryWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.prizesPanel.ProfilePrizesWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.reportPanel.ProfileReportWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.userInfoPanel.ProfileUserInfoWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class ProfileSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var title:DialogTitleWrapper;
      
      public var closeBtn:CloseMenuFishaoButtonWrapper;
      
      public var tabUpLayer:Sprite;
      
      public var userInfoTab:InventoryTabWrapper;
      
      public var fishesTab:InventoryTabWrapper;
      
      public var prizesTab:InventoryTabWrapper;
      
      public var inventoryTab:InventoryTabWrapper;
      
      public var referralsTab:DisplayObject;
      
      public var reportTab:InventoryTabWrapper;
      
      public var userInfoPanel:ProfileUserInfoWrapper;
      
      public var fishesPanel:ProfileFishesWrapper;
      
      public var prizesPanel:ProfilePrizesWrapper;
      
      public var inventoryPanel:ProfileInventoryWrapper;
      
      public var referralsPanel:DisplayObject;
      
      public var reportPanel:ProfileReportWrapper;
      
      public var tabDownLayer:Sprite;
      
      protected var _isLoaded:Boolean = false;
      
      public function ProfileSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "Profile.swf";
         super(_loc1_);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         tabChildren = false;
         super.onAssetCreationComplete();
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         this._isLoaded = true;
         super.onAssetLoadingComplete(param1);
      }
   }
}

