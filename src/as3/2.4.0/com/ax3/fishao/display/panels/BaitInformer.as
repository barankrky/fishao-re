package com.ax3.fishao.display.panels
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.fishao.EResourceID;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.display.MainMenuIconWrapper;
   import com.ax3.fishao.model.UserModel;
   import com.ax3.fishao.resources.EResourceType;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.InventorySwfDialog;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class BaitInformer extends gButtonInventory implements IToolTipTarget
   {
      
      private var tooltipConfig:Object;
      
      private var _locked:Boolean = false;
      
      public function BaitInformer()
      {
         super();
         UtilsTextField.setBoldFont(title);
         UtilsTextField.setBoldFont(viewCount.label);
         addEventListener(MouseEvent.CLICK,this.onMouseClick);
         mouseChildren = false;
         buttonMode = true;
         app.user.addEventListener(UserModel.BAIT_TYPE_CHANGE,this.onBaitChange);
         app.user.addEventListener(UserModel.BAIT_COUNT_CHANGE,this.onBaitCountChange);
         this.onBaitChange();
         this.onBaitCountChange();
         scaleX = scaleY = viewImage.scaleX = viewImage.scaleY = 1;
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         var _loc2_:InventorySwfDialog = null;
         if(this._locked)
         {
            return;
         }
         FishaoSoundManager.play(FishaoSoundManager.SFX_051_UI_Open_menu);
         if(GameSwf.instance.managerTutorial.isAnyTutorialInProgress)
         {
            _loc2_ = app.dialogFactory.getInventorySwfDialogTutorial();
         }
         else
         {
            _loc2_ = app.dialogFactory.getInventorySwfDialog();
         }
         _loc2_.showAndSetTab(EResourceType.BAIT_NAME);
      }
      
      private function onBaitCountChange(param1:Event = null) : void
      {
         if(app.user.baitCount > 0)
         {
            viewCount.label.text = app.user.baitCount.toString();
            viewCount.visible = true;
         }
         else
         {
            viewCount.visible = false;
         }
      }
      
      private function onBaitChange(param1:Event = null) : void
      {
         while(viewImage.numChildren > 0)
         {
            viewImage.removeChildAt(0);
         }
         var _loc2_:ScaledBitmap = new ScaledBitmap();
         _loc2_.width = 56;
         _loc2_.height = 56;
         var _loc3_:int = int(app.user.baitInfoId);
         if(_loc3_ == EResourceID.ER_BAIT_EMPTY)
         {
            this.tooltipConfig = {"text":I18n.get("select_bait")};
         }
         else
         {
            this.tooltipConfig = {"text":I18n.get("bait_" + _loc3_)};
            app.resourceManager.replaceBitmapDataFromURL(_loc2_,FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(ResourceType.BAIT.name,_loc3_)));
            viewImage.addChild(_loc2_);
         }
      }
      
      public function getTooltipType() : TooltipType
      {
         return TooltipType.TEXT_TOOLTIP;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         return this.tooltipConfig;
      }
      
      public function lock() : void
      {
         this._locked = true;
         filters = MainMenuIconWrapper.DISABLE_FILTERS;
      }
      
      public function unlock() : void
      {
         this._locked = false;
         filters = MainMenuIconWrapper.NORMAL_FILTERS;
      }
   }
}

