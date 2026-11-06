package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.view.buttons.ResizableButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishBoardWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishListItemWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishdexBadgeWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishdexListSetWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishdexMainInterfaceWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishdexRatingWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishdexSearchWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishdexTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.VScrollWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class FishdexSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      protected var _fishListButton:SwfFactoryWrapper;
      
      private var _fishListButtonItemAsset:DisplayObject;
      
      protected var _badge:SwfFactoryWrapper;
      
      public var closeBtn:CloseMenuFishaoButtonWrapper;
      
      public var title:FishdexTitleWrapper;
      
      public var fishListVScroll:VScrollWrapper;
      
      public var fishDexVScroll:VScrollWrapper;
      
      public var notepadSliderVScroll:VScrollWrapper;
      
      protected var fishListContainer:DisplayObjectContainer;
      
      protected var fishInfoContainer:DisplayObjectContainer;
      
      public var listSet:FishdexListSetWrapper;
      
      public var main:FishdexMainInterfaceWrapper;
      
      public var notCaught:TextField;
      
      public var viewCatchInfoButton:ResizableButtonWrapper;
      
      public var viewFishBoard:FishBoardWrapper;
      
      public var search:FishdexSearchWrapper;
      
      public var notepadTextField:TextField;
      
      public var stars:FishdexRatingWrapper;
      
      private var _lastNotepadText:String;
      
      protected var _fishId:int;
      
      public function FishdexSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "fishdexDialog.swf";
         super(_loc1_);
      }
      
      protected function onButtonClosedClicked(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this.closeBtn.handler = this.onButtonClosedClicked;
         this._fishListButton = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,FishListItemWrapper);
         this._fishListButton.process(this._fishListButtonItemAsset);
         this._badge = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,FishdexBadgeWrapper);
         this._badge.process(this.main.badge);
         this.notepadTextField.addEventListener(FocusEvent.FOCUS_OUT,this.sendNotepadText);
         this.notepadTextField.addEventListener(FocusEvent.FOCUS_IN,this.saveNotepadText);
      }
      
      private function saveNotepadText(param1:FocusEvent) : void
      {
         this._lastNotepadText = this.notepadTextField.text;
      }
      
      private function sendNotepadText(param1:FocusEvent) : void
      {
         if(this._lastNotepadText != this.notepadTextField.text)
         {
            GameSwf.instance.managerFishes.notepadUpdate(this._fishId,this.notepadTextField.text);
            FishaoFscModelManager.charExtension.updateNotepadData(this._fishId,this.notepadTextField.text);
         }
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         super.onAssetLoadingComplete(param1);
         this._fishListButtonItemAsset = DisplayObjectContainer(DisplayObjectContainer(param1.getChildByName("fishListContainer")).getChildByName("listSet")).getChildByName("FishListButton");
         this.fishListContainer = DisplayObjectContainer(param1.getChildByName("fishListContainer"));
         this.fishInfoContainer = DisplayObjectContainer(DisplayObjectContainer(param1.getChildByName("main")).getChildByName("fishInfoContainer"));
      }
      
      override public function get height() : Number
      {
         return 598;
      }
   }
}

