package com.ax3.fishao.view.dialogs.furniture_factory.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.greensock.TweenLite;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ViewFurnitureFactoryReward extends ViewBase
   {
      
      private static const ANIMATION_APPEAR_DURATION:Number = 0.5;
      
      private var _source:DisplayObjectContainer;
      
      private var _icon:MovieClip;
      
      private var _viewPlaceholder:DisplayObjectContainer;
      
      private var _viewPlaceholderSize:Point;
      
      private var _viewRaysAnimated:DisplayObjectContainer;
      
      private var _labelTop:TextFieldAutofitWrapper;
      
      private var _labelBottom:TextFieldAutofitWrapper;
      
      private var _labelTimeLeft:TextFieldAutofitWrapper;
      
      private var _labelRarity:TextFieldAutofitWrapper;
      
      public function ViewFurnitureFactoryReward(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function get viewPlaceholder() : DisplayObjectContainer
      {
         return this._viewPlaceholder;
      }
      
      public function get viewPlaceholderSize() : Point
      {
         return this._viewPlaceholderSize;
      }
      
      public function get labelTop() : TextFieldAutofitWrapper
      {
         return this._labelTop;
      }
      
      public function get labelBottom() : TextFieldAutofitWrapper
      {
         return this._labelBottom;
      }
      
      public function get labelTimeLeft() : TextFieldAutofitWrapper
      {
         return this._labelTimeLeft;
      }
      
      public function get labelRarity() : TextFieldAutofitWrapper
      {
         return this._labelRarity;
      }
      
      private function init() : void
      {
         this._icon = Debug.assertProperty(this._source,"icon");
         this._viewPlaceholder = Debug.assertProperty(this._source,"viewPlaceholder");
         this._viewPlaceholderSize = new Point();
         this._viewPlaceholderSize.x = this._viewPlaceholder.width;
         this._viewPlaceholderSize.y = this._viewPlaceholder.height;
         this._viewPlaceholder.alpha = 0;
         this._viewRaysAnimated = Debug.assertProperty(this._source,"viewRaysAnimated");
         this._viewRaysAnimated.alpha = 0;
         var _loc1_:TextField = Debug.assertProperty(this._source,"labelTop",TextField);
         this._labelTop = new TextFieldAutofitWrapper(_loc1_);
         var _loc2_:TextField = Debug.assertProperty(this._source,"labelBottom",TextField);
         this._labelBottom = new TextFieldAutofitWrapper(_loc2_);
         this._labelBottom.text = EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_LABEL_FREE_SPIN_DESCRIPTION;
         var _loc3_:TextField = Debug.assertProperty(this._source,"labelTimeLeft",TextField);
         this._labelTimeLeft = new TextFieldAutofitWrapper(_loc3_);
         var _loc4_:TextField = Debug.assertProperty(this._source,"labelRarity",TextField);
         this._labelRarity = new TextFieldAutofitWrapper(_loc4_);
         this._labelRarity.source.alpha = 0;
      }
      
      public function showReward() : void
      {
         this.tryCleanupTweenImages();
         TweenLite.to(this._viewRaysAnimated,ANIMATION_APPEAR_DURATION,{"alpha":1});
         TweenLite.to(this._viewPlaceholder,ANIMATION_APPEAR_DURATION,{"alpha":1});
         TweenLite.to(this._icon,ANIMATION_APPEAR_DURATION,{"alpha":0});
         this._labelRarity.source.alpha = 1;
         this._labelTimeLeft.source.alpha = 0;
      }
      
      public function hideReward() : void
      {
         this.tryCleanupTweenImages();
         TweenLite.to(this._viewRaysAnimated,ANIMATION_APPEAR_DURATION,{"alpha":0});
         TweenLite.to(this._viewPlaceholder,ANIMATION_APPEAR_DURATION,{"alpha":0});
         TweenLite.to(this._icon,ANIMATION_APPEAR_DURATION,{"alpha":1});
         this._labelRarity.source.alpha = 0;
         this._labelTimeLeft.source.alpha = 1;
      }
      
      private function tryCleanupTweenImages() : void
      {
         TweenLite.killTweensOf(this._viewRaysAnimated);
         TweenLite.killTweensOf(this._viewPlaceholder);
         TweenLite.killTweensOf(this._icon);
         TweenLite.killTweensOf(this._labelRarity.source);
         TweenLite.killTweensOf(this._labelTimeLeft.source);
      }
   }
}

