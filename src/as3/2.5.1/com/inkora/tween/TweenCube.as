package com.inkora.tween
{
   import com.inkora.core.TweenEngine;
   
   public class TweenCube extends TweenEngine
   {
      
      public static var created:int = 0;
      
      public static var destroyed:int = 0;
      
      protected static var plugins:Object = {};
      
      public static var useAutoGC:Boolean = false;
      
      public static var Framerate:Number = 30;
      
      public static const TRUE:int = 1;
      
      public static const FALSE:int = 2;
      
      public static const NONE:int = 0;
      
      public static const REMOVEALL:int = 1;
      
      public static const INTERRUPT:int = 3;
      
      public static const COMPLETE:int = 4;
      
      public static const SEQUENCE:int = 5;
      
      public static var OverwriteMode:int = NONE;
      
      public static var autoStartTweens:int = NONE;
      
      protected var inited:Boolean = false;
      
      protected var targetProps:Object;
      
      protected var _reverse:Boolean = false;
      
      protected var _reset:Boolean = true;
      
      protected var propertyList:Object;
      
      protected var queueTween:TweenCube;
      
      protected var lastqueuedTween:Boolean = false;
      
      public var target:Object;
      
      public var autoStart:Boolean;
      
      public var pluginData:Object;
      
      public var overwrite:int;
      
      public function TweenCube(param1:Object = null, param2:Number = 1, param3:Object = null, param4:Object = null)
      {
         this.target = param1;
         super(param2,param4);
         this._reverse = tweenProps.reverse ? Boolean(tweenProps.reverse) : false;
         this.autoStart = tweenProps.autoStart != null ? Boolean(tweenProps.autoStart) : true;
         if(TweenCube.autoStartTweens != TweenCube.NONE)
         {
            this.autoStart = TweenCube.autoStartTweens == TweenCube.TRUE ? true : false;
         }
         this.framerate = Framerate;
         this.overwrite = tweenProps.overwrite ? int(tweenProps.overwrite) : TweenCube.OverwriteMode;
         this.checkOverwrite(this.target);
         this.targetProps = param3 != null ? param3 : {};
         if(this.autoStart)
         {
            this.play();
         }
      }
      
      public static function ActivatePlugins(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = int(param1.length);
         while(_loc3_--)
         {
            _loc2_ = param1[_loc3_].ActivatePlugin();
            TweenCube.plugins[_loc2_.tweenPropertyName] = _loc2_;
         }
      }
      
      public static function to(param1:Object, param2:Number, param3:Object, param4:Object = null) : TweenCube
      {
         if(param1 == null)
         {
            throw new Error("Tween target is null");
         }
         return new TweenCube(param1,param2,param3,param4);
      }
      
      public static function from(param1:Object, param2:Number, param3:Object, param4:Object = null) : TweenCube
      {
         if(!param4)
         {
            param4 = {};
         }
         param4.reverse = 1;
         return new TweenCube(param1,param2,param3,param4);
      }
      
      public static function timedCall(param1:Number, param2:Function, param3:Array = null) : void
      {
         var _loc4_:Object = {};
         _loc4_.x = 1;
         new TweenCube(_loc4_,param1,{"x":100},{
            "onComplete":param2,
            "onCompleteParams":param3
         });
      }
      
      public static function pauseAllTweens() : void
      {
         TweenEngine.pauseAllTweens = true;
      }
      
      public static function resumeAllTweens() : void
      {
         TweenEngine.pauseAllTweens = false;
      }
      
      public static function destroyTweensOf(param1:Object, param2:Boolean = true) : void
      {
         var _loc3_:Array = null;
         _loc3_ = tweenList[param1];
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:int = int(_loc3_.length);
         while(--_loc4_ > -1)
         {
            if(TweenCube(_loc3_[_loc4_]).active)
            {
               if(param2)
               {
                  TweenCube(_loc3_[_loc4_]).gotoEnd();
               }
               else
               {
                  TweenCube(_loc3_[_loc4_]).stop();
               }
            }
            TweenCube(_loc3_[_loc4_]).garbageCollect = true;
            TweenCube(_loc3_[_loc4_]).destroyTween();
         }
      }
      
      public static function destroyAllTweens(param1:Boolean = true) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         for(_loc2_ in tweenList)
         {
            _loc3_ = tweenList[_loc2_];
            _loc4_ = int(_loc3_.length);
            while(--_loc4_ > -1)
            {
               if(TweenCube(_loc3_[_loc4_]).active)
               {
                  if(param1)
                  {
                     TweenCube(_loc3_[_loc4_]).gotoEnd();
                  }
                  else
                  {
                     TweenCube(_loc3_[_loc4_]).stop();
                  }
               }
               TweenCube(_loc3_[_loc4_]).garbageCollect = true;
               TweenCube(_loc3_[_loc4_]).destroyTween();
            }
         }
      }
      
      override public function renderTween(param1:Number, param2:Boolean) : void
      {
         var _loc3_:String = null;
         if(!this.inited)
         {
            this.init();
         }
         var _loc4_:Number = 0;
         for(_loc3_ in this.propertyList)
         {
            _loc4_ = this.propertyList[_loc3_].initVal + this.propertyList[_loc3_].rangeVal * param1;
            if(this.propertyList[_loc3_].isPlugin)
            {
               this.propertyList[_loc3_].target.tweenPlugin(this.target,_loc3_,_loc4_,this.propertyList[_loc3_].initVal,this.propertyList[_loc3_].rangeVal,param1,param2,this);
            }
            else
            {
               this.propertyList[_loc3_].target[_loc3_] = _loc4_;
            }
         }
         if(this.tweenProps.onChange != null)
         {
            this.tweenProps.onChange.apply(null,this.tweenProps.onChangeParams);
         }
      }
      
      override public function tweenEnd() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this.propertyList)
         {
            if(this.propertyList[_loc1_].isPlugin)
            {
               this.propertyList[_loc1_].target.completePlugin(this.target,this);
            }
         }
         if(useAutoGC)
         {
            this.garbageCollect = true;
         }
         else
         {
            TickerTweenList[this] = null;
            delete TickerTweenList[this];
         }
         if(this.tweenProps.onComplete != null)
         {
            this.tweenProps.onComplete.apply(null,this.tweenProps.onCompleteParams);
         }
         if(this.queueTween)
         {
            this.queueTween.invalidate();
            this.queueTween.play();
         }
         else
         {
            this.destroyTween();
         }
      }
      
      protected function init() : void
      {
         var _loc1_:String = null;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this._reset)
         {
            this.propertyList = {};
            this._reset = false;
         }
         for(_loc1_ in this.targetProps)
         {
            if(plugins[_loc1_])
            {
               plugins[_loc1_].initPlugin(this.target,this.targetProps[_loc1_],this.propertyList,this);
            }
            else
            {
               this.propertyList[_loc1_] = this.getTweenable(this.target,_loc1_,this.target[_loc1_],this.targetProps[_loc1_] - this.target[_loc1_]);
            }
         }
         _loc2_ = [];
         for(_loc3_ in this.propertyList)
         {
            _loc2_.push(this.propertyList[_loc3_]);
         }
         _loc2_.sortOn("priority",Array.NUMERIC | Array.DESCENDING);
         _loc4_ = int(_loc2_.length);
         _loc5_ = 0;
         this.propertyList = {};
         while(_loc5_ < _loc4_)
         {
            this.propertyList[_loc2_[_loc5_].property] = _loc2_[_loc5_];
            _loc5_++;
         }
         _loc2_ = null;
         if(this._reverse)
         {
            for(_loc6_ in this.propertyList)
            {
               this.propertyList[_loc6_].initVal += this.propertyList[_loc6_].rangeVal;
               this.propertyList[_loc6_].rangeVal = -this.propertyList[_loc6_].rangeVal;
               this.inited = true;
               this.renderTween(0,false);
            }
         }
         if(this.tweenProps.onInit != null)
         {
            this.tweenProps.onInit.apply(null,this.tweenProps.onInitParams);
         }
         this.inited = true;
      }
      
      override protected function invalidate() : void
      {
         if(active)
         {
            this.pause();
         }
         this._reset = true;
         this.init();
         super.invalidate();
         if(active)
         {
            this.resume();
         }
         else
         {
            this.play();
         }
      }
      
      public function setProperty(param1:String, param2:Number) : void
      {
         this.targetProps[param1] = param2;
         this.invalidate();
      }
      
      public function setProperties(param1:Object) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in param1)
         {
            this.targetProps[_loc2_] = param1[_loc2_];
         }
         this.invalidate();
      }
      
      protected function checkOverwrite(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         if(!tweenList[param1])
         {
            tweenList[param1] = [this];
            return;
         }
         _loc2_ = tweenList[param1];
         while(_loc4_ < _loc2_.length)
         {
            switch(this.overwrite)
            {
               case TweenCube.INTERRUPT:
                  TweenCube(_loc2_[_loc4_]).stop();
                  TweenCube(_loc2_[_loc4_]).destroyTween();
                  break;
               case TweenCube.COMPLETE:
                  TweenCube(_loc2_[_loc4_]).stop();
                  TweenCube(_loc2_[_loc4_]).gotoEnd();
                  TweenCube(_loc2_[_loc4_]).updateTime = 0;
                  TweenCube(_loc2_[_loc4_]).destroyTween();
                  break;
               case TweenCube.SEQUENCE:
                  if(!TweenCube(_loc2_[_loc4_]).queueTween)
                  {
                     TweenCube(_loc2_[_loc4_]).queueTween = this;
                     this.autoStart = false;
                  }
                  break;
               case TweenCube.REMOVEALL:
                  TweenCube(_loc2_[_loc4_]).stop();
                  TweenCube(_loc2_[_loc4_]).destroyTween();
                  break;
               case TweenCube.NONE:
                  if(TweenCube(_loc2_[_loc4_]).ended)
                  {
                     TweenCube(_loc2_[_loc4_]).destroyTween();
                  }
            }
            _loc4_++;
         }
         if(!tweenList[param1])
         {
            tweenList[param1] = [this];
         }
         else
         {
            tweenList[param1].push(this);
         }
      }
      
      public function getTweenable(param1:Object, param2:String, param3:Number, param4:Number, param5:int = 0, param6:Boolean = false, param7:String = "") : Object
      {
         return {
            "target":param1,
            "property":param2,
            "initVal":param3,
            "rangeVal":param4,
            "priority":param5,
            "isPlugin":param6,
            "propType":param7
         };
      }
      
      public function destroyTween() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Object = this.target;
         _loc1_ = tweenList[_loc3_];
         if(_loc1_ != null)
         {
            _loc2_ = int(_loc1_.length);
            while(--_loc2_ > -1)
            {
               if(TweenCube(_loc1_[_loc2_]) == this)
               {
                  TickerTweenList[this] = null;
                  delete TickerTweenList[this];
                  _loc1_.splice(_loc2_,1);
                  break;
               }
            }
            if(_loc1_.length == 0)
            {
               delete tweenList[_loc3_];
            }
         }
         this.destroy();
      }
      
      private function destroy() : void
      {
         this.target = null;
         this.targetProps = null;
         this.pluginData = null;
      }
   }
}

