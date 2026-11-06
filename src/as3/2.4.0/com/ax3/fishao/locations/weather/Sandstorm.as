package com.ax3.fishao.locations.weather
{
   import assets.common.Sand;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.math.randomRange;
   import com.greensock.TweenMax;
   import com.greensock.easing.Cubic;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class Sandstorm extends Weather
   {
      
      private static const MAX_SNOWFLAKE_COUNT:int = 300;
      
      private var _snowflakeDensity:Number = 0.0003;
      
      private var _snowflakeCount:int = 0;
      
      private var _isActive:Boolean = false;
      
      private var _windSpeed:Number = 7.5;
      
      private var _fallSpeed:Number = 75;
      
      private var _dropRotationDegree:Number = 10;
      
      private var _screenWidth:Number = 1;
      
      private var _screenHeight:Number = 1;
      
      private var _dropAlpha:Number = 1;
      
      private var _scrollX:Number = 0;
      
      private var _scrollY:Number = 0;
      
      public var windBegin:int;
      
      public var wind:Object;
      
      public var windForceMin:int;
      
      public var nWind:int;
      
      public var nAlpha:Number;
      
      public var windTimeMin:int;
      
      public var snowSize:Number;
      
      public var windForceMax:int;
      
      public var margin:int;
      
      public var windTimeMax:int;
      
      public var snowAlphaMin:Number;
      
      public var snowAmount:int;
      
      public var snowAlphaMax:Number;
      
      public var tracer:Boolean;
      
      public var gravity:int;
      
      public var snowZmin:Number;
      
      public var snowZmax:Number;
      
      public var sh:int;
      
      public var windDirection:String;
      
      public var sw:int;
      
      public var intro:Boolean;
      
      public var fade:Boolean;
      
      public function Sandstorm(param1:Object)
      {
         super(param1);
         this.readConfig(param1);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddToStage,false,0,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemoveToStage,false,0,true);
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         if(this._screenWidth != param1.width || this._screenHeight != param1.height)
         {
            this._screenWidth = param1.width;
            this._screenHeight = param1.height;
            this._snowflakeCount = limit(this._screenWidth * this._screenHeight * this._snowflakeDensity,1,MAX_SNOWFLAKE_COUNT);
            this.sh = this._screenHeight;
            this.sw = this._screenWidth;
            this.initSnow();
         }
         this._scrollX = param1.x;
         this._scrollY = param1.y;
      }
      
      public function readConfig(param1:Object) : void
      {
         this.tracer = true;
         this.intro = true;
         this.fade = true;
         this.snowAmount = 15;
         this.snowSize = 0.75;
         this.snowZmin = 0;
         this.snowZmax = 1;
         this.snowAlphaMin = 0.5;
         this.snowAlphaMax = 0.75;
         this.gravity = 100;
         this.windBegin = 400;
         this.windForceMin = 100;
         this.windForceMax = 500;
         this.windDirection = "right";
         this.windTimeMin = 1;
         this.windTimeMax = 2;
         this.snowAmount = this.snowAmount;
         this.margin = 200;
         var _loc2_:* = false;
         this.mouseEnabled = false;
         this.wind = new Object();
         this.wind.max = this.windForceMax;
         this.wind.min = this.windForceMin;
         this.wind.dir = this.windDirection;
         if(this.wind.dir == "right")
         {
            this.wind.force = this.windBegin;
         }
         else if(this.wind.dir == "left")
         {
            this.wind.force = -this.windBegin;
         }
         else
         {
            this.wind.force = this.windBegin;
         }
         this.windRandom();
         this.nAlpha = 1;
      }
      
      public function initSnow() : void
      {
         var _loc1_:DisplayObject = null;
         while(this.numChildren)
         {
            _loc1_ = this.getChildAt(0);
            TweenMax.killTweensOf(_loc1_,false);
            removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.snowAmount)
         {
            this.createSnow(_loc2_);
            _loc2_++;
         }
      }
      
      public function windRandom() : void
      {
         if(this.wind.dir == "right")
         {
            this.nWind = Math.random() * (this.wind.max - this.wind.min) + this.wind.min;
         }
         else if(this.wind.dir == "left")
         {
            this.nWind = -Math.random() * (this.wind.max - this.wind.min) - this.wind.min;
         }
         else
         {
            this.nWind = Math.random() * (this.wind.max * 2 - this.wind.min) - this.wind.min - this.wind.max;
         }
         if(this.tracer == true)
         {
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
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }
      
      private function activate() : void
      {
         if(this._isActive == false)
         {
            this._isActive = true;
            addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
      }
      
      private function createSnow(param1:int) : void
      {
         var _loc3_:Bitmap = null;
         var _loc2_:BitmapData = new Sand();
         _loc3_ = new Bitmap(_loc2_);
         _loc3_.y = Math.random() * (this.sh + this.margin * 2) - this.margin * 2;
         _loc3_.x = Math.random() * (this.sw + this.margin * 2) - this.margin * 2;
         _loc3_.rotation = Math.random() * 360;
         var _loc4_:Number = randomRange(2,4);
         _loc3_.scaleY = _loc4_;
         _loc3_.scaleX = _loc4_;
         _loc3_.alpha = this.newAlpha(_loc3_);
         addChild(_loc3_);
         this.snowX(_loc3_);
         this.snowY(_loc3_);
      }
      
      public function newAlpha(param1:Bitmap) : Number
      {
         if(param1.scaleX < 2 * this.snowSize)
         {
            this.nAlpha = Math.random() * (this.snowAlphaMax - this.snowAlphaMin) + this.snowAlphaMin;
         }
         else if(param1.scaleX > 2 * this.snowSize && param1.scaleX < 4 * this.snowSize)
         {
            this.nAlpha = (Math.random() * (this.snowAlphaMax - this.snowAlphaMin) + this.snowAlphaMin) * 0.6;
         }
         else if(param1.scaleX > 4 * this.snowSize)
         {
            this.nAlpha = (Math.random() * (this.snowAlphaMax - this.snowAlphaMin) + this.snowAlphaMin) * 0.4;
         }
         return this.nAlpha;
      }
      
      public function snowY(param1:Bitmap) : void
      {
         this.yReset(param1);
         TweenMax.to(param1,(Math.random() * 2 + 2) / param1.scaleY,{
            "y":param1.y + this._screenHeight + param1.height,
            "onComplete":this.snowY,
            "onCompleteParams":[param1],
            "ease":Cubic.easeInOut,
            "overwrite":false
         });
      }
      
      public function snowX(param1:Bitmap) : void
      {
         this.xReset(param1);
         TweenMax.to(param1,(Math.random() * 2 + 2) / param1.scaleX,{
            "alpha":this.newAlpha(param1),
            "x":param1.x + this._screenWidth + param1.width,
            "onComplete":this.snowX,
            "onCompleteParams":[param1],
            "ease":Cubic.easeInOut,
            "overwrite":false
         });
      }
      
      public function xReset(param1:Bitmap) : void
      {
         param1.x = this._scrollX + Math.random() * this._screenWidth - param1.width;
      }
      
      public function yReset(param1:Bitmap) : void
      {
         param1.y = this._scrollY + Math.random() * this._screenHeight - param1.height;
      }
   }
}

