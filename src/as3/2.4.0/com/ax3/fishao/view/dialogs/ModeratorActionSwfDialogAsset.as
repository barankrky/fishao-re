package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.ScrollTextWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownBaseWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownListBaseItem;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   
   public class ModeratorActionSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var closeButton:FishaoButtonWrapper;
      
      public var reasonLabel:TextField;
      
      public var applyButton:FrameButtonWrapper;
      
      public var scrollText:ScrollTextWrapper;
      
      public var userDropdown:FishaoDropdownBaseWrapper;
      
      public var actionDropdown:FishaoDropdownBaseWrapper;
      
      public var periodDropdown:FishaoDropdownBaseWrapper;
      
      public function ModeratorActionSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "moderator_action_dialog.swf";
         super(_loc1_);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this.closeButton.handler = this.onCloseButtonClick;
         var _loc1_:SwfFactoryWrapper = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,FishaoDropdownListBaseItem);
         _loc1_.process(this.userDropdown.itemTemplate);
         this.userDropdown.setItemFactory(_loc1_);
         this.actionDropdown.setItemFactory(_loc1_);
         this.periodDropdown.setItemFactory(_loc1_);
         this.reasonLabel.text = I18n.get("reasonLabel");
         this.scrollText.text = "";
         this.scrollText.field.addEventListener(Event.CHANGE,this.onTextFieldChange);
         this.scrollText.field.addEventListener(TextEvent.TEXT_INPUT,this.onTextFieldChange);
         this.applyButton.label = I18n.getUpper("applyButton");
         tabChildren = false;
         super.onAssetCreationComplete();
      }
      
      private function onTextFieldChange(param1:Event) : void
      {
         if(this.scrollText.field.text.length > 0)
         {
            this.applyButton.enable();
         }
         else
         {
            this.applyButton.disable();
         }
      }
      
      private function onCloseButtonClick(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.scrollText.resizeTextFieldToContainer();
         this.userDropdown.text = I18n.get("chooseUser");
         this.actionDropdown.text = I18n.get("ChooseBlockType");
         this.periodDropdown.text = I18n.get("choosePeriod");
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this.scrollText.text = "";
      }
   }
}

