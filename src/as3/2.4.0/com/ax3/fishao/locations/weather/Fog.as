package com.ax3.fishao.locations.weather
{
   import com.ax3.utils.math.randomRange;
   import com.ax3.utils.math.randomRangeEase;
   import com.greensock.TweenMax;
   import com.inkora.easing.Circular;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class Fog extends Weather
   {
      
      private var _drops:Vector.<MovieClip> = new Vector.<MovieClip>();
      
      private var _isActive:Boolean = false;
      
      private var _screenWidth:Number = 1;
      
      private var _screenHeight:Number = 1;
      
      private var _scrollX:Number = 0;
      
      private var _scrollY:Number = 0;
      
      public var wind:Object;
      
      public var nWind:int;
      
      public var windTimeMin:int;
      
      public var snowSize:Number;
      
      public var margin:int = 0;
      
      public var windTimeMax:int;
      
      public var snowAmount:int;
      
      public var tracer:Boolean;
      
      private var _fogs:Vector.<FogCloud> = new Vector.<FogCloud>();
      
      public function Fog(param1:Object)
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
            this.initFog();
         }
         this._scrollX = param1.x;
         this._scrollY = param1.y;
      }
      
      public function readConfig(param1:Object) : void
      {
         this.snowAmount = 3;
      }
      
      public function initFog() : void
      {
         var _loc1_:FogCloud = null;
         var _loc2_:int = 0;
         var _loc3_:FogCloud = null;
         for each(_loc1_ in this._fogs)
         {
            TweenMax.killChildTweensOf(_loc1_,false);
            removeChild(_loc1_);
         }
         this._fogs = new Vector.<FogCloud>();
         _loc2_ = 0;
         while(_loc2_ < this.snowAmount)
         {
            _loc3_ = this.createFogCloud(_loc2_);
            this._fogs.push(_loc3_);
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
         TweenMax.to(this.wind,Math.random() * 3 + 1,{
            "force":this.nWind,
            "delay":Math.random() * (this.windTimeMax - this.windTimeMin) + this.windTimeMin,
            "onComplete":this.windRandom
         });
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
         var _loc1_:FogCloud = null;
         if(this._isActive == true)
         {
            this._isActive = false;
            for each(_loc1_ in this._fogs)
            {
               TweenMax.killChildTweensOf(_loc1_,false);
               removeChild(_loc1_);
            }
            this._fogs = new Vector.<FogCloud>();
         }
      }
      
      private function activate() : void
      {
         if(this._isActive == false)
         {
            this._isActive = true;
            this.initFog();
         }
      }
      
      private function createFogCloud(param1:int) : FogCloud
      {
         var _loc2_:FogCloud = new FogCloud();
         addChild(_loc2_);
         this.showFogCloud(_loc2_);
         return _loc2_;
      }
      
      private function showFogCloud(param1:FogCloud) : void
      {
         param1.alpha = 0;
         param1.scaleX = param1.scaleY = randomRange(2,5);
         this.fogX(param1);
         this.fogY(param1);
         TweenMax.to(param1,Math.random() * 4 + 2,{
            "alpha":1,
            "onComplete":this.showFogCloud,
            "onCompleteParams":[param1],
            "yoyo":true,
            "repeat":1,
            "delay":2
         });
      }
      
      private function fogX(param1:FogCloud) : void
      {
         param1.x = randomRangeEase(0,this._screenWidth,Circular.easeInOut) + this._scrollX;
      }
      
      private function fogY(param1:FogCloud) : void
      {
         param1.y = randomRangeEase(0,this._screenHeight,Circular.easeInOut) + this._scrollY;
      }
   }
}

