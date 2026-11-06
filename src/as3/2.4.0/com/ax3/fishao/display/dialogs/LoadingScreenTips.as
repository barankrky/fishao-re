package com.ax3.fishao.display.dialogs
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.utils.I18n;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class LoadingScreenTips extends IN_GAME_LOADING_TIPS implements ILoadingScreen
   {
      
      private var currentTip:int;
      
      private var _originSize:Point = new Point(800,600);
      
      private var fadeTipTime:Number = 0.3;
      
      private var showTipTime:Number = 15000;
      
      private var timer:Timer = new Timer(15000);
      
      private var defaultTextFieldHeight:Number;
      
      private var defaultTextFieldY:Number;
      
      public function LoadingScreenTips()
      {
         super();
         this.percent = 0;
         this.defaultTextFieldHeight = TextField(dialogBaloon.label).height;
         this.defaultTextFieldY = TextField(dialogBaloon.label).y;
         this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.hideTipAnimation);
         this.showRandomTip();
      }
      
      public function set percent(param1:Number) : void
      {
         var _loc2_:int = int(param1 * 100 + 0.5);
         TextField(progressBar.progressText).text = _loc2_ + "%";
         progressBar.gotoAndStop(_loc2_);
      }
      
      private function showRandomTip() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = Math.floor(Math.random() * tipsImageContainer.totalFrames) + 1;
         }
         while(this.currentTip == _loc1_);
         this.currentTip = _loc1_;
         tipsImageContainer.gotoAndStop(this.currentTip);
         TextField(dialogBaloon.label).text = I18n.get("loading_screen_tip_" + this.currentTip);
         this.tipTextVerticalAlign();
         this.showTipAnimation();
      }
      
      private function tipTextVerticalAlign() : void
      {
         TextField(dialogBaloon.label).height = TextField(dialogBaloon.label).textHeight + 5;
         TextField(dialogBaloon.label).y = this.defaultTextFieldY + (this.defaultTextFieldHeight - TextField(dialogBaloon.label).textHeight) / 2;
      }
      
      private function showTimerStart() : void
      {
         this.timer.repeatCount = 1;
         this.timer.delay = this.showTipTime;
         this.timer.start();
      }
      
      private function hideTipAnimation(param1:TimerEvent = null) : void
      {
         this.destroyTipsAnimation();
         TweenLite.to(tipsImageContainer,this.fadeTipTime,{
            "alpha":0,
            "onComplete":this.showRandomTip
         });
         TweenLite.to(dialogBaloon.label,this.fadeTipTime,{"alpha":0});
      }
      
      private function showTipAnimation() : void
      {
         this.destroyTipsAnimation();
         TweenLite.to(tipsImageContainer,this.fadeTipTime,{
            "alpha":1,
            "onComplete":this.showTimerStart
         });
         TweenLite.to(dialogBaloon.label,this.fadeTipTime,{"alpha":1});
      }
      
      private function destroyTipsAnimation() : void
      {
         TweenLite.killTweensOf(tipsImageContainer);
         TweenLite.killTweensOf(dialogBaloon);
      }
      
      public function fitToScreen() : void
      {
         var _loc1_:DisplayObjectContainer = DisplayObjectContainer(background.getChildByName("stretchableArea"));
         this.stretchBackground(_loc1_,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this.centerToRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
      }
      
      private function stretchBackground(param1:DisplayObjectContainer, param2:int, param3:int) : void
      {
         var _loc4_:DisplayObject = null;
         _loc4_ = param1.getChildByName("top");
         var _loc5_:DisplayObject = param1.getChildByName("middle");
         var _loc6_:DisplayObject = param1.getChildByName("bottom");
         var _loc7_:Rectangle = _loc5_.getRect(DisplayObjectContainer(_loc5_).getChildByName("rawBackgroundRect"));
         if(_loc7_.width <= param2)
         {
            _loc4_.x = _loc5_.x = _loc6_.x = -(param2 - _loc7_.width) / 2;
            _loc4_.width = _loc5_.width = _loc6_.width = param2;
         }
         if(_loc7_.height <= param3)
         {
            _loc4_.y = -_loc4_.height;
            _loc4_.height = _loc6_.height = (param3 - _loc7_.height) / 2;
         }
      }
      
      private function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.screenSizeChanged(param1,param2,param3,param4);
      }
      
      public function screenSizeChanged(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Number = Math.min(param3 / this._originSize.x,param4 / this._originSize.y);
         this.scaleX = this.scaleY = _loc5_;
         this.x = param1 + (param3 - this._originSize.x * _loc5_) * 0.5;
         this.y = param2 + (param4 - this._originSize.y * _loc5_) * 0.5;
      }
      
      public function textUpdate() : void
      {
      }
      
      public function destroy() : void
      {
         this.destroyTipsAnimation();
         if(this.timer.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.timer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.hideTipAnimation);
         }
      }
   }
}

