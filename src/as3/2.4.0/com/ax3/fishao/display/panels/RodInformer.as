package com.ax3.fishao.display.panels
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.config.RodColorFilter;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.display.MainMenuIconWrapper;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.model.UserModel;
   import com.ax3.fishao.model.info.UserRod;
   import com.ax3.fishao.resources.EResourceType;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.InventorySwfDialog;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class RodInformer extends gButtonInventory implements IToolTipTarget
   {
      
      private var tooltipConfig:Object;
      
      private var _locked:Boolean = false;
      
      public function RodInformer()
      {
         super();
         UtilsTextField.setBoldFont(title);
         UtilsTextField.setBoldFont(viewCount.label);
         addEventListener(MouseEvent.CLICK,this.onMouseClick);
         mouseChildren = false;
         buttonMode = true;
         app.user.addEventListener(UserModel.ROD_TYPE_CHANGE,this.onRodChange);
         app.user.addEventListener(UserModel.ROD_COUNT_CHANGE,this.onRodCountChange);
         this.onRodCountChange();
         this.onRodChange();
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
         _loc2_.showAndSetTab(EResourceType.RODS_NAME);
      }
      
      private function onRodCountChange(param1:Event = null) : void
      {
         if(app.user.rodCount > -1)
         {
            viewCount.label.text = app.user.rodCount.toString();
            viewCount.visible = true;
         }
         else
         {
            viewCount.visible = false;
         }
      }
      
      private function onRodChange(param1:Event = null) : void
      {
         var _loc2_:ScaledBitmap = null;
         _loc2_ = null;
         var _loc3_:UserRod = null;
         while(viewImage.numChildren > 0)
         {
            viewImage.removeChildAt(0);
         }
         _loc2_ = new ScaledBitmap();
         _loc2_.width = 56;
         _loc2_.height = 56;
         _loc3_ = app.user.inventory.getRod(app.user.userRodId);
         if(_loc3_ != null)
         {
            _loc2_.filters = RodColorFilter.getShowColorFilters(_loc3_.infoId,ShopItemColor.findColorName(_loc3_.color));
            app.resourceManager.replaceBitmapDataFromURL(_loc2_,FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceIconFilenameByKind(ResourceType.ROD.name,_loc3_.infoId)));
            this.tooltipConfig = {"text":I18n.get("rod_" + _loc3_.infoId)};
         }
         else
         {
            this.tooltipConfig = {"text":I18n.get("select_rod")};
         }
         viewImage.addChild(_loc2_);
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
      
      public function clearRod() : void
      {
         while(viewImage.numChildren > 0)
         {
            viewImage.removeChildAt(0);
         }
         var _loc1_:ScaledBitmap = new ScaledBitmap();
         _loc1_.width = 56;
         _loc1_.height = 56;
         this.tooltipConfig = {"text":I18n.get("select_rod")};
         viewImage.addChild(_loc1_);
      }
   }
}

