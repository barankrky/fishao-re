package com.ax3.fishao.view.dialogs.wheel_of_fortune.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.greensock.TweenLite;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ViewWheelRewardUser extends ViewBase
   {
      
      private static const ANIMATION_LABELS_DURATION:Number = 0.5;
      
      private var _source:DisplayObjectContainer;
      
      private var _labelTop:TextFieldAutofitWrapper;
      
      private var _labelBottom:TextFieldAutofitWrapper;
      
      private var _iconReward:MovieClip;
      
      private var _viewPlaceholder:DisplayObjectContainer;
      
      private var _viewPlaceholderSize:Point;
      
      public function ViewWheelRewardUser(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this._source = param2;
         this.init();
      }
      
      public function set rewardTypeWheel(param1:String) : void
      {
         this._iconReward.gotoAndStop(param1);
      }
      
      public function set textTop(param1:String) : void
      {
         this._labelTop.text = param1;
      }
      
      public function set textBottom(param1:String) : void
      {
         this._labelBottom.text = param1;
      }
      
      public function get viewPlaceholder() : DisplayObjectContainer
      {
         return this._viewPlaceholder;
      }
      
      public function get viewPlaceholderSize() : Point
      {
         return this._viewPlaceholderSize;
      }
      
      private function init() : void
      {
         this._iconReward = Debug.assertProperty(this._source,"iconReward");
         var _loc1_:TextField = Debug.assertProperty(this._source,"labelTop");
         this._labelTop = new TextFieldAutofitWrapper(_loc1_);
         var _loc2_:TextField = Debug.assertProperty(this._source,"labelBottom");
         this._labelBottom = new TextFieldAutofitWrapper(_loc2_);
         this._viewPlaceholder = Debug.assertProperty(this._source,"viewPlaceholder");
         this._viewPlaceholderSize = new Point();
         this._viewPlaceholderSize.x = this._viewPlaceholder.width;
         this._viewPlaceholderSize.y = this._viewPlaceholder.height;
         this._viewPlaceholder.alpha = 0;
         this._labelTop.source.alpha = 0;
         this._labelBottom.source.alpha = 0;
      }
      
      public function hideLabels() : void
      {
         this.tryCleanupTweenLabels();
         TweenLite.to(this._labelTop.source,ANIMATION_LABELS_DURATION,{"alpha":0});
         TweenLite.to(this._labelBottom.source,ANIMATION_LABELS_DURATION,{"alpha":0});
      }
      
      public function showLabels() : void
      {
         this.tryCleanupTweenLabels();
         TweenLite.to(this._labelTop.source,ANIMATION_LABELS_DURATION,{"alpha":1});
         TweenLite.to(this._labelBottom.source,ANIMATION_LABELS_DURATION,{"alpha":1});
      }
      
      public function showPlaceholder() : void
      {
         this.tryCleanupTweenImages();
         TweenLite.to(this._viewPlaceholder,ANIMATION_LABELS_DURATION,{"alpha":1});
         TweenLite.to(this._iconReward,ANIMATION_LABELS_DURATION,{"alpha":0});
      }
      
      public function hidePlaceholder() : void
      {
         this.tryCleanupTweenImages();
         TweenLite.to(this._viewPlaceholder,ANIMATION_LABELS_DURATION,{"alpha":0});
         TweenLite.to(this._iconReward,ANIMATION_LABELS_DURATION,{"alpha":1});
      }
      
      private function tryCleanupTweenLabels() : void
      {
         TweenLite.killTweensOf(this._labelTop.source);
         TweenLite.killTweensOf(this._labelBottom.source);
      }
      
      private function tryCleanupTweenImages() : void
      {
         TweenLite.killTweensOf(this._iconReward);
         TweenLite.killTweensOf(this._viewPlaceholder);
      }
   }
}

