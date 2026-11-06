package com.ax3.utils.timer
{
   public class AlarmManager implements IUpdate
   {
      
      private static var _instance:AlarmManager;
      
      private var _alarms:Vector.<SingleAlarm> = new Vector.<SingleAlarm>();
      
      private var _group:UpdateGroup;
      
      public function AlarmManager()
      {
         super();
         this._group = UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_500);
      }
      
      public static function getInstance() : AlarmManager
      {
         if(_instance == null)
         {
            _instance = new AlarmManager();
         }
         return _instance;
      }
      
      public function addAlarm(param1:SingleAlarm) : void
      {
         if(this._alarms.indexOf(param1) == -1)
         {
            this._alarms.push(param1);
            this.updateTimerStatusGivenAlarmList();
         }
      }
      
      public function removeAlarm(param1:SingleAlarm) : void
      {
         if(this._alarms.indexOf(param1) > -1)
         {
            this._alarms.splice(this._alarms.indexOf(param1),1);
            this.updateTimerStatusGivenAlarmList();
         }
      }
      
      private function updateTimerStatusGivenAlarmList() : void
      {
         if(this._alarms.length > 0)
         {
            this._group.add(this);
         }
         else
         {
            this._group.remove(this);
         }
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:SingleAlarm = null;
         var _loc4_:Number = new Date().time;
         for each(_loc3_ in this._alarms)
         {
            if(_loc3_.activateTimestampMS <= _loc4_)
            {
               _loc3_.activate(_loc4_);
            }
         }
      }
      
      public function createWatchReport() : String
      {
         return "AlarmManager[_alarms=" + this._alarms.length + "]";
      }
   }
}

