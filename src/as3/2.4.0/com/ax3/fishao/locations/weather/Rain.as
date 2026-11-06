package com.ax3.fishao.locations.weather
{
   import com.ax3.utils.math.limit;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class Rain extends Weather implements IUpdate
   {
      
      private static const MAX_DROPS_COUNT:int = 300;
      
      private var _dropsDensity:Number = 0.0003;
      
      private var _dropsCount:int = 0;
      
      private var _drops:Vector.<DropCached> = new Vector.<DropCached>();
      
      private var _isActive:Boolean = false;
      
      private var _windSpeed:Number = 7.5;
      
      private var _fallSpeed:Number = 75;
      
      private var _dropRotationDegree:Number = 10;
      
      private var _screenWidth:Number = 1;
      
      private var _screenHeight:Number = 1;
      
      private var _dropAlpha:Number = 1;
      
      private var _scrollX:Number = 0;
      
      private var _scrollY:Number = 0;
      
      public function Rain(param1:Object)
      {
         super(param1);
         this.readConfig(param1);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddToStage,false,0,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemoveToStage,false,0,true);
      }
      
      public function readConfig(param1:Object) : void
      {
         this._fallSpeed = param1.fallSpeed;
         this._dropAlpha = param1.dropAlpha;
         this._windSpeed = param1.fallSpeed / 10;
         this._dropsDensity = param1.dropsDensity;
         this._dropRotationDegree = param1.dropRotationDegree;
      }
      
      private function init() : void
      {
         var _loc1_:DropCached = null;
         var _loc2_:int = 0;
         var _loc3_:DropCached = null;
         for each(_loc1_ in this._drops)
         {
            removeChild(_loc1_);
         }
         this._drops = new Vector.<DropCached>();
         _loc2_ = 0;
         while(_loc2_ < this._dropsCount)
         {
            _loc3_ = new DropCached();
            _loc3_.gotoAndStop(1);
            _loc3_.alpha = this._dropAlpha;
            _loc3_.scaleY = _loc3_.scaleX = Math.round((Math.random() * 0.5 + 0.1) * 10) / 10;
            _loc3_.x = Math.random() * this._screenWidth;
            _loc3_.y = Math.random() * this._screenHeight;
            _loc3_.endY = this._screenHeight;
            _loc3_.rotation = this._dropRotationDegree;
            this._drops.push(_loc3_);
            addChild(_loc3_);
            _loc2_++;
         }
         if(stage != null)
         {
            this.activate();
         }
      }
      
      private function onAddToStage(param1:Event) : void
      {
         this.activate();
      }
      
      private function onRemoveToStage(param1:Event) : void
      {
         this.deactivate();
      }
      
      private function deactivate() : void
      {
         if(this._isActive == true)
         {
            this._isActive = false;
            UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).remove(this);
         }
      }
      
      private function activate() : void
      {
         if(this._isActive == false)
         {
            this._isActive = true;
            UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).add(this);
         }
      }
      
      private function gotoDropFirstFrame(param1:DropCached) : void
      {
         param1.gotoAndStop(1);
      }
      
      private function gotoDropNextFrame(param1:DropCached) : void
      {
         param1.gotoAndStop(param1.currentFrame + 1);
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         if(this._screenWidth != param1.width || this._screenHeight != param1.height)
         {
            this._screenWidth = param1.width;
            this._screenHeight = param1.height;
            this._dropsCount = limit(this._screenWidth * this._screenHeight * this._dropsDensity,1,MAX_DROPS_COUNT);
            this.init();
         }
         this._scrollX = param1.x;
         this._scrollY = param1.y;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:DropCached = null;
         for each(_loc3_ in this._drops)
         {
            if(_loc3_.y > _loc3_.endY + _loc3_.height)
            {
               if(_loc3_.currentFrame < _loc3_.totalFrames)
               {
                  this.gotoDropNextFrame(_loc3_);
               }
               else
               {
                  if(_loc3_.currentFrame != 1)
                  {
                     this.gotoDropFirstFrame(_loc3_);
                  }
                  _loc3_.x = Math.random() * this._screenWidth * 1.4 + this._scrollX;
                  _loc3_.y = -_loc3_.height + this._scrollY;
                  _loc3_.endY = Math.random() * this._screenHeight * 1.1 + this._scrollY;
               }
            }
            else
            {
               _loc3_.x -= _loc3_.scaleX * this._windSpeed;
               _loc3_.y += _loc3_.scaleY * this._fallSpeed;
            }
         }
      }
   }
}

