package com.ax3.fishao.tutorial.views.dialogs.story
{
   import com.ax3.display.wrappers.impl.MenuFrameButtonWrapper;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class StorySwfDialogAsset extends DialogBase
   {
      
      public var nextButton:MenuFrameButtonWrapper;
      
      public var story:MovieClip;
      
      protected var _labelHeWas:TextFieldAutofitWrapper;
      
      protected var _labelYourGrandpa:TextFieldAutofitWrapper;
      
      protected var _labelButHe:TextFieldAutofitWrapper;
      
      public function StorySwfDialogAsset()
      {
         super("storyDialog.swf",false);
         _canClosedByEsc = false;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this.nextButton.label = I18n.get("buttonNextCapital");
         this.story.gotoAndStop(1);
         this._labelYourGrandpa = new TextFieldAutofitWrapper(this.story.getChildByName("txtYourGrandpa") as TextField);
         this._labelHeWas = new TextFieldAutofitWrapper(this.story.getChildByName("txtHeWas") as TextField);
         this._labelButHe = new TextFieldAutofitWrapper(this.story.getChildByName("txtButHe") as TextField);
         this._labelYourGrandpa.text = I18n.get("storyDialog_YourGrandpa");
         this._labelHeWas.text = I18n.get("storyDialog_HeWas");
         this._labelButHe.text = I18n.get("storyDialog_ButHe");
         this._labelHeWas.source.x -= 12;
         this._labelHeWas.source.y -= 40;
         super.onAssetCreationComplete();
      }
   }
}

