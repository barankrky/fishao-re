package com.ax3.fishao.tutorial.views.dialogs.story
{
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class StorySwfDialog extends StorySwfDialogAsset
   {
      
      private var _male:Boolean = true;
      
      protected var _labelLetsStart:TextFieldAutofitWrapper;
      
      protected var _labelCanYou:TextFieldAutofitWrapper;
      
      private var _tutorialInfo:TutorialInfo;
      
      public function StorySwfDialog()
      {
         super();
         this._male = app.char.body.type == CharViewConfig.MALE;
         this._tutorialInfo = GameSwf.instance.managerTutorial.tutorialCommon;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         nextButton.handler = this.onNext;
         super.onAssetCreationComplete();
         story.male.visible = this._male;
         story.female.visible = !this._male;
         this.showTutorialArrow();
      }
      
      private function onNext(param1:* = null) : void
      {
         story.gotoAndStop(2);
         this._labelLetsStart = new TextFieldAutofitWrapper(story.getChildByName("txtLetsStart") as TextField);
         this._labelCanYou = new TextFieldAutofitWrapper(story.getChildByName("txtCanYou") as TextField);
         this._labelLetsStart.text = I18n.get("storyDialog_LetsStart");
         this._labelCanYou.text = I18n.get("storyDialog_CanYou");
         nextButton.label = I18n.get("buttonPlayCapital");
         nextButton.handler = this.onPlay;
         story.male.visible = this._male;
         story.female.visible = !this._male;
         this._tutorialInfo.onStepComplete();
         this.showTutorialArrow();
      }
      
      private function onPlay(param1:* = null) : void
      {
         close();
         this._tutorialInfo.onStepComplete();
      }
      
      public function showTutorialArrow() : void
      {
         GameSwf.instance.managerTutorial.tutorialHelpers.helperArrow.showTutorialArrow(this.getArrowPosition,0);
      }
      
      private function getArrowPosition() : Point
      {
         var _loc1_:Point = new Point(nextButton.x + nextButton.width * 0.5,nextButton.y);
         _loc1_ = localToGlobal(_loc1_);
         return new Point(_loc1_.x,_loc1_.y - 60);
      }
   }
}

