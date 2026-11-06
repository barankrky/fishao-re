package com.ax3.fishao.managers
{
   import com.ax3.utils.AverageNumber;
   import com.junkbyte.console.Cc;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class PerformanceManager extends EventDispatcher
   {
      
      public static const WEATHER_OFF:String = "weatherOff";
      
      public static const DAY_NIGHT_OFF:String = "dayNightOff";
      
      public static var CAN_CHANGE_WEATHER:Boolean = true;
      
      public static var CAN_CHANGE_DAY_NIGHT:Boolean = true;
      
      private static const TO_WEATHER_OFF_SEC:Number = 10;
      
      private static const TO_DAY_NIGHT_OFF_SEC:Number = 10;
      
      private static const MIN_FPS:int = 15;
      
      public var averageNumber:AverageNumber;
      
      public var lowQualityTime:Number = 0;
      
      public var fps:int;
      
      public var enabled:Boolean = true;
      
      public var sleepMode:Boolean = false;
      
      private var _lastResetTsMs:uint;
      
      public function PerformanceManager()
      {
         super();
         this.averageNumber = new AverageNumber();
      }
      
      public function addStageActiveStateListeners(param1:Stage) : void
      {
         param1.addEventListener(Event.ACTIVATE,this.activate);
      }
      
      private function activate(param1:Event) : void
      {
         this.sleepMode = false;
      }
      
      public function controlFPS(param1:uint, param2:uint) : void
      {
         if(this.enabled == false)
         {
            return;
         }
         this.recalculateFPS(param1,param2);
         if(this.fps <= MIN_FPS)
         {
            this.lowQualityTime += param2;
         }
         else
         {
            this.lowQualityTime = 0;
         }
         if(this.lowQualityTime >= TO_WEATHER_OFF_SEC * 1000 && CAN_CHANGE_WEATHER)
         {
            CAN_CHANGE_WEATHER = false;
            dispatchEvent(new Event(WEATHER_OFF));
            Cc.warn("Attention! Over low FPS. The weather effects will be off");
         }
         if(this.lowQualityTime >= TO_DAY_NIGHT_OFF_SEC * 1000 && CAN_CHANGE_DAY_NIGHT)
         {
         }
      }
      
      public function recalculateFPS(param1:uint, param2:uint) : void
      {
         this.averageNumber.push(param2);
         this.fps = Math.round(1000 / this.averageNumber.value);
         if(param1 - this._lastResetTsMs > 3000)
         {
            this.averageNumber.count /= 3;
            this._lastResetTsMs = param1;
         }
      }
   }
}

