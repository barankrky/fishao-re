package com.ax3.utils.timer
{
   import com.ax3.utils.Callback;
   
   public class SingleAlarm
   {
      
      private static var globalInstanceId:int;
      
      private var _startTimestampMS:Number = -1;
      
      private var _durationSec:Number;
      
      private var _callback:Callback;
      
      private var instanceId:int;
      
      public function SingleAlarm(param1:Number = 0)
      {
         super();
         this.instanceId = globalInstanceId++;
         this._durationSec = param1;
      }
      
      public function activateInSec(param1:Number, param2:Callback = null) : void
      {
         this._durationSec = param1;
         this._callback = param2;
         this._startTimestampMS = new Date().time;
         AlarmManager.getInstance().addAlarm(this);
      }
      
      public function get leftTimeMS() : Number
      {
         if(this._startTimestampMS != -1)
         {
            return this.activateTimestampMS - new Date().time;
         }
         return this._durationSec * 1000;
      }
      
      public function get activateTimestampMS() : Number
      {
         return this._startTimestampMS + this._durationSec * 1000;
      }
      
      public function isComplete() : Boolean
      {
         var _loc1_:Number = new Date().time;
         if(this.activateTimestampMS <= _loc1_)
         {
            return true;
         }
         return false;
      }
      
      public function activate(param1:Number) : void
      {
         AlarmManager.getInstance().removeAlarm(this);
         if(this._callback != null)
         {
            this._callback.call();
         }
      }
      
      public function destroy() : void
      {
         this._callback = null;
         AlarmManager.getInstance().removeAlarm(this);
      }
   }
}

