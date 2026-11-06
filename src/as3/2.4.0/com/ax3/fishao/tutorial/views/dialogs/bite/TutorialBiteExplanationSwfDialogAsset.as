package com.ax3.fishao.tutorial.views.dialogs.bite
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.text.TextField;
   
   public class TutorialBiteExplanationSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var startReelingbutton:FishaoButtonWrapper;
      
      public var txt_youHaveBite:TextField;
      
      public var txt_useYourLeft:TextField;
      
      public var txt_example:TextField;
      
      public var txt_youHaveBiteSmall:TextField;
      
      public var txt_useYourDirection:TextField;
      
      public var txt_progress:TextField;
      
      private var _labelTitle:TextFieldAutofitWrapper;
      
      private var _labelDescription:TextFieldAutofitWrapper;
      
      public function TutorialBiteExplanationSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "tutorial_bite_explanation_dialog.swf";
         super(_loc1_);
         _canClosedByEsc = false;
      }
      
      override public function get width() : Number
      {
         return 675;
      }
      
      override public function get height() : Number
      {
         return 492;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this._labelTitle = new TextFieldAutofitWrapper(this.txt_youHaveBiteSmall);
         this._labelDescription = new TextFieldAutofitWrapper(this.txt_useYourDirection);
         this._labelTitle.text = I18n.get("tutorialBiteExplanationDialog_youHaveBiteSmall");
         this._labelDescription.text = I18n.get("tutorialBiteExplanationDialog_useYourDirection");
         this.txt_youHaveBite.text = I18n.get("tutorialBiteExplanationDialog_youHaveBite");
         this.txt_useYourLeft.text = I18n.get("tutorialBiteExplanationDialog_useYourLeft");
         this.txt_example.text = I18n.get("tutorialBiteExplanationDialog_example");
         this.txt_progress.text = I18n.get("tutorialBiteExplanationDialog_progress");
         this.startReelingbutton.label = I18n.get("tutorialBiteExplanationDialog_startReeling");
         super.onAssetCreationComplete();
      }
   }
}

