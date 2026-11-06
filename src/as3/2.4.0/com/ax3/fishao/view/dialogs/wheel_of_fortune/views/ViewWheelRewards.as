package com.ax3.fishao.view.dialogs.wheel_of_fortune.views
{
   import com.ax3.events.Listeners;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.Utils;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.WheelOfFortuneReward;
   import com.greensock.TweenLite;
   import com.greensock.easing.Back;
   import com.greensock.easing.Cubic;
   import com.greensock.easing.Linear;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class ViewWheelRewards extends ViewBase
   {
      
      public static const REWARDS_ANGLES:Array = [342,306,270,234,198,162,126,90,54,18];
      
      private static const ROTATION_SPEED:int = 100;
      
      private static const WHEEL_TURNS_AFTER_GOT_RESULT:int = 1;
      
      private static const REWARDS_COUNT:int = 10;
      
      private static const ANGLE_AVAILABLE_RANGE:int = 14;
      
      private var _source:DisplayObjectContainer;
      
      private var _rewardsBitmap:Bitmap;
      
      private var _rewardsBitmapMC:DisplayObjectContainer;
      
      private var _viewRewards:Array;
      
      private var _rewards:Array;
      
      private var _pointerRewardType:String;
      
      public function ViewWheelRewards(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this._source = param2;
         this.init();
      }
      
      public function set rewards(param1:Array) : void
      {
         var _loc2_:WheelOfFortuneReward = null;
         var _loc3_:ViewWheelReward = null;
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc2_ = param1[_loc4_] as WheelOfFortuneReward;
            _loc3_ = this._viewRewards[_loc4_];
            _loc3_.rewardType = _loc2_.type;
            _loc3_.text = _loc2_.translationWheel;
            _loc4_++;
         }
         this._rewards = param1;
      }
      
      private function getRewardIndexByType(param1:String) : int
      {
         var _loc2_:WheelOfFortuneReward = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this._rewards)
         {
            if(_loc2_.type == param1)
            {
               _loc3_ = this._rewards.indexOf(_loc2_);
               break;
            }
         }
         return _loc3_;
      }
      
      public function get pointerRewardTypeCurrent() : String
      {
         var _loc1_:String = null;
         var _loc2_:int = this._rewardsBitmapMC.rotation < 0 ? int(this._rewardsBitmapMC.rotation + 360) : int(this._rewardsBitmapMC.rotation);
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < REWARDS_ANGLES.length)
         {
            if(_loc2_ >= REWARDS_ANGLES[_loc4_] - 18 && _loc2_ <= REWARDS_ANGLES[_loc4_] + 18)
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         return (this._rewards[_loc3_] as WheelOfFortuneReward).type;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:String = this.pointerRewardTypeCurrent;
         if(this._pointerRewardType == _loc2_)
         {
            return;
         }
         this._pointerRewardType = _loc2_;
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_UPDATE,EDialogType.EDT_WHEEL_OF_FORTUNE);
      }
      
      private function onSpinFinish() : void
      {
         this.convertIntoMovieClip();
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_FINISH,EDialogType.EDT_WHEEL_OF_FORTUNE);
         Listeners.removeEventListener(this._source,this._source,Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:ViewWheelReward = null;
         this._viewRewards = [];
         var _loc3_:int = 0;
         while(_loc3_ < REWARDS_COUNT)
         {
            _loc1_ = Debug.assertProperty(this._source,"viewReward_" + _loc3_);
            _loc2_ = new ViewWheelReward(controller,_loc1_);
            this._viewRewards.push(_loc2_);
            _loc3_++;
         }
         this._rewardsBitmapMC = new MovieClip();
         this._rewardsBitmapMC.x = this._source.x;
         this._rewardsBitmapMC.y = this._source.y;
         this._source.parent.addChildAt(this._rewardsBitmapMC,this._source.parent.getChildIndex(this._source));
      }
      
      private function convertIntoBitmap() : void
      {
         this._rewardsBitmapMC.rotation = this._source.rotation;
         this._source.rotation = 0;
         var _loc1_:BitmapData = new BitmapData(this._source.width,this._source.height,true,16777215);
         var _loc2_:Rectangle = this._source.getBounds(this._source);
         _loc1_.drawWithQuality(this._source,new Matrix(1,0,0,1,-_loc2_.x,-_loc2_.y),null,null,null,false,StageQuality.BEST);
         this._rewardsBitmap = new Bitmap(_loc1_);
         this._rewardsBitmap.x = -this._rewardsBitmap.width / 2;
         this._rewardsBitmap.y = -this._rewardsBitmap.height / 2;
         this._rewardsBitmapMC.addChild(this._rewardsBitmap);
         this._source.visible = false;
         this._rewardsBitmapMC.visible = true;
      }
      
      private function convertIntoMovieClip() : void
      {
         this._source.rotation = this._rewardsBitmapMC.rotation;
         this._source.visible = true;
         this._rewardsBitmapMC.visible = false;
         this._rewardsBitmap.bitmapData.dispose();
         this._rewardsBitmap = null;
      }
      
      public function spinStart() : void
      {
         this.convertIntoBitmap();
         Listeners.addEventListener(this._source,this._source,Event.ENTER_FRAME,this.onEnterFrame);
         this.spinBack(this.spinContinue);
      }
      
      private function spinBack(param1:Function) : void
      {
         var _loc2_:int = this._rewardsBitmapMC.rotation + ROTATION_SPEED * 1.5;
         var _loc3_:Object = {
            "rotation":_loc2_,
            "ease":Back.easeIn,
            "onComplete":param1
         };
         TweenLite.to(this._rewardsBitmapMC,2,_loc3_);
      }
      
      private function spinContinue() : void
      {
         var _loc1_:int = this._rewardsBitmapMC.rotation + ROTATION_SPEED * 3;
         var _loc2_:Object = {
            "rotation":_loc1_,
            "ease":Linear.easeNone,
            "onComplete":this.spinContinue
         };
         TweenLite.to(this._rewardsBitmapMC,1,_loc2_);
      }
      
      public function spinStop() : void
      {
         TweenLite.killTweensOf(this._rewardsBitmapMC);
         var _loc1_:int = this._rewardsBitmapMC.rotation + ROTATION_SPEED;
         var _loc2_:Object = {
            "ease":Cubic.easeOut,
            "rotation":_loc1_
         };
         TweenLite.to(this._rewardsBitmapMC,1,_loc2_);
      }
      
      public function spinToReward(param1:WheelOfFortuneReward) : void
      {
         TweenLite.killTweensOf(this._rewardsBitmapMC);
         this._rewardsBitmapMC.rotation = this._rewardsBitmapMC.rotation > 0 ? this._rewardsBitmapMC.rotation - 360 : this._rewardsBitmapMC.rotation;
         var _loc2_:int = this.getRewardIndexByType(param1.type);
         var _loc3_:Number = Utils.randomFromTo(-ANGLE_AVAILABLE_RANGE,ANGLE_AVAILABLE_RANGE);
         var _loc4_:int = REWARDS_ANGLES[_loc2_] + WHEEL_TURNS_AFTER_GOT_RESULT * 360 + _loc3_;
         var _loc5_:Object = {
            "ease":Cubic.easeOut,
            "rotation":_loc4_,
            "onComplete":this.onSpinFinish
         };
         TweenLite.to(this._rewardsBitmapMC,7,_loc5_);
      }
   }
}

