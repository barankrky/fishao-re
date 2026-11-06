package com.ax3.fishao.display.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.MenuFrameButtonWrapper;
   import com.ax3.fishao.display.popups.ScalableCenterTextFieldWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class FishMarketAvailableDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var okButton:MenuFrameButtonWrapper;
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var title:ScalableCenterTextFieldWrapper;
      
      public var label_main_1:TextField;
      
      public var label_main_2:TextField;
      
      public var label_main_3:TextField;
      
      public var label_its_available:TextField;
      
      public var label_ps:TextField;
      
      public function FishMarketAvailableDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "fishmarket_available.swf";
         super(_loc1_);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         tabChildren = false;
         this.okButton.handler = this.onCloseClick;
         this.closeButton.handler = this.onCloseClick;
         this.closeButton.visible = false;
         this.title.text = I18n.getUpper("fishMarketAvailable_title");
         this.label_main_1.text = I18n.get("fishMarketAvailable_label_center1").replace("#USERNAME#",app.user.username);
         this.label_main_2.text = I18n.get("fishMarketAvailable_label_center2");
         this.label_main_3.text = I18n.get("fishMarketAvailable_label_center3");
         this.label_its_available.text = I18n.get("fishMarketAvailable_its_available");
         this.label_ps.text = I18n.get("fishMarketAvailable_ps");
         super.onAssetCreationComplete();
      }
      
      private function onCloseClick(param1:MouseEvent) : void
      {
         close();
      }
   }
}

