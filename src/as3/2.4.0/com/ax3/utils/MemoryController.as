package com.ax3.utils
{
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.system.System;
   import flash.utils.Dictionary;
   import flash.utils.setInterval;
   import flash.utils.setTimeout;
   
   public class MemoryController
   {
      
      private static var m_tracking:Dictionary = new Dictionary(true);
      
      private var mInterval:int;
      
      private var mWarningMemoryLimit:int;
      
      private var mCriticalMemoryLimit:int;
      
      private var mAbortFunction:Function;
      
      private var mWarningFunction:Function;
      
      private var mForcedIterationsNum:int;
      
      private var mForcedCleanInterval:int;
      
      private var mIsAbleToForce:Boolean;
      
      public function MemoryController(param1:int = 1000, param2:int = 62914560, param3:int = 104857600, param4:int = 60000, param5:int = 1, param6:Function = null, param7:Function = null)
      {
         super();
         this.mInterval = param1;
         this.mWarningMemoryLimit = param2;
         this.mCriticalMemoryLimit = param3;
         this.mAbortFunction = param6;
         this.mWarningFunction = param7;
         this.mForcedIterationsNum = param5;
         this.mForcedCleanInterval = param4;
         this.mIsAbleToForce = true;
         setInterval(this.checkMemoryUsage,this.mInterval);
      }
      
      private static function doSimpleClean() : void
      {
         var _loc1_:Point = new Point();
         _loc1_ = null;
         var _loc2_:String = "1234567812345678";
         _loc2_ = null;
         var _loc3_:Array = [];
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < 256)
         {
            _loc3_.push("a");
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < 256)
         {
            delete _loc3_[_loc4_];
            _loc4_++;
         }
         _loc3_ = null;
      }
      
      public static function track(param1:*, param2:String) : void
      {
         m_tracking[param1] = param2;
      }
      
      public static function getReport() : String
      {
         var _loc1_:Object = null;
         var _loc2_:String = "";
         var _loc3_:int = 0;
         _loc2_ += "\n-------------------------\n";
         for(_loc1_ in m_tracking)
         {
            _loc2_ += _loc1_ + ":\'" + m_tracking[_loc1_] + "\'\n";
            _loc3_++;
         }
         return _loc2_ + ("------------- (total: " + _loc3_ + ")");
      }
      
      public static function clearTrack() : void
      {
         m_tracking = new Dictionary(true);
      }
      
      private function MakeAbleToForce() : void
      {
         this.mIsAbleToForce = true;
      }
      
      public function doForcedClean() : void
      {
         if(!this.mIsAbleToForce)
         {
            return;
         }
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < this.mForcedIterationsNum)
         {
            try
            {
               new LocalConnection().connect("Crio");
               new LocalConnection().connect("Crio");
            }
            catch(e:*)
            {
            }
            _loc1_++;
         }
         this.mIsAbleToForce = false;
         setTimeout(this.MakeAbleToForce,this.mForcedCleanInterval);
      }
      
      private function checkMemoryUsage() : void
      {
         if(System.totalMemory > this.mCriticalMemoryLimit)
         {
            if(this.mAbortFunction != null)
            {
               this.mAbortFunction();
            }
            this.doForcedClean();
         }
         else if(System.totalMemory > this.mWarningMemoryLimit)
         {
            doSimpleClean();
            if(this.mWarningFunction != null)
            {
               this.mWarningFunction();
            }
         }
      }
   }
}

