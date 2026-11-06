package com.demonsters.debugger
{
   import flash.system.System;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import mx.utils.StringUtil;
   
   public class MonsterProfiler
   {
      
      private static var _startTime:Dictionary = new Dictionary();
      
      private static var _counter:Dictionary = new Dictionary();
      
      private static var _totalTime:Dictionary = new Dictionary();
      
      private static var _keys:Array = [];
      
      private static var _currentDepth:int = 0;
      
      private static var _lastTimestampMS:Number = 0;
      
      private static var _lastMemory:Number = 0;
      
      public function MonsterProfiler()
      {
         super();
      }
      
      public static function startInside(param1:String) : void
      {
         ++_currentDepth;
         start(StringUtil.repeat("\t",_currentDepth) + param1);
      }
      
      public static function endInside(param1:String) : void
      {
         end(StringUtil.repeat("\t",_currentDepth) + param1);
         --_currentDepth;
      }
      
      public static function start(param1:String) : void
      {
         if(_keys.indexOf(param1) == -1)
         {
            _keys.push(param1);
         }
         _startTime[param1] = getTimer();
         if(_counter[param1] == null)
         {
            _counter[param1] = 0;
         }
         _counter[param1] = Number(_counter[param1]) + 1;
      }
      
      public static function end(param1:String) : void
      {
         if(_totalTime[param1] == null)
         {
            _totalTime[param1] = 0;
         }
         _totalTime[param1] += getTimer() - _startTime[param1];
      }
      
      public static function generateXMLReports() : XML
      {
         var _loc1_:XML = <root/>;
         _loc1_.appendChild(generateExecutionTimeReport());
         return _loc1_;
      }
      
      private static function generateExecutionTimeReport() : XML
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = <profiler/>;
         for each(_loc2_ in _keys)
         {
            _loc1_ = <node/>;
            _loc1_.@label = _loc2_;
            _loc1_.@totalTime = _totalTime[_loc2_];
            _loc1_.@calls = _counter[_loc2_];
            _loc3_.appendChild(_loc1_);
         }
         return _loc3_;
      }
      
      public static function clear() : void
      {
         _startTime = new Dictionary();
         _counter = new Dictionary();
         _totalTime = new Dictionary();
         _keys = [];
      }
      
      public static function memKey(param1:String) : void
      {
         var _loc2_:XML = <root/>;
         var _loc3_:XML = <memoryKey/>;
         _loc3_.@label = param1;
         _loc3_.@timeLeft = getTimer() - _lastTimestampMS;
         _loc3_.@memAdd = System.totalMemory - _lastMemory;
         _loc3_.@memTotal = System.totalMemory;
         _lastTimestampMS = getTimer();
         _lastMemory = System.totalMemory;
         _loc2_.appendChild(_loc3_);
         MonsterDebuggerCore.sendMemKey(_loc2_);
      }
   }
}

