package com.ax3.fishao.debug
{
   import avmplus.getQualifiedClassName;
   import com.junkbyte.console.Cc;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class Debug
   {
      
      public static const AUTO_LOGIN:Boolean = false;
      
      public static const AUTO_SELECT_WORLD:Boolean = false;
      
      public static const AUTO_SELECT_LOCATION:Boolean = false;
      
      public static const AUTO_SELECT_PRIVATE_HOUSE:Boolean = false;
      
      public static const AUTO_SELECT_BACKYARD:Boolean = false;
      
      public static const INCREASE_MOVEMENT_SPEED:Boolean = false;
      
      public static var AUTO_OPEN_DIALOG:Boolean = false;
      
      public static var DISABLE_MUSIC:Boolean = false;
      
      public static var LOG_ENABLED:Boolean = true;
      
      private static var _logMap:Dictionary = new Dictionary();
      
      private static var _excludedLogs:Array = ["drawSync","drawUsers","inspectPlayerPosition","inspectPlayersSurfaceType","inspectRectByLocationLayersSize","onUpdateResp","location dialog update","updateArrow","onMaskClick","updateMask","moveCameraToChar","centerToRect"];
      
      public function Debug()
      {
         super();
      }
      
      public static function getPropertyOrDefault(param1:Object, param2:String, param3:Object) : *
      {
         return param1.hasOwnProperty(param2) ? param1[param2] : param3;
      }
      
      public static function assertProperty(param1:Object, param2:String, param3:Class = null) : *
      {
         assert(param1 != null);
         assert(param1.hasOwnProperty(param2),"Not found param: " + param2 + " for instance of: " + getQualifiedClassName(param1));
         if(param3 != null)
         {
            assert(param1[param2] is param3);
         }
         return param1[param2];
      }
      
      public static function assert(param1:Boolean, param2:String = "Assertion failed!") : void
      {
         if(!param1)
         {
            Cc.log("[ERROR]: " + param2);
            Cc.log(new Error().getStackTrace());
            throw new Error(param2);
         }
      }
      
      public static function assertEqual(param1:Object, param2:Object, param3:String = null) : *
      {
         var _loc4_:String = param3 || objectToString(param1) + " are not equal to " + objectToString(param2);
         assert(param1 == param2,_loc4_);
         return param1;
      }
      
      public static function assertNotEqual(param1:Object, param2:Object, param3:String = null) : *
      {
         var _loc4_:String = param3 || objectToString(param1) + " are not equal to " + objectToString(param2);
         assert(param1 != param2,_loc4_);
         return param1;
      }
      
      private static function objectToString(param1:Object) : String
      {
         return param1 == null ? "null" : param1.toString();
      }
      
      public static function benchmark(param1:String, param2:uint) : void
      {
         var _loc3_:int = getTimer();
      }
      
      public static function log(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(!LOG_ENABLED || isLogExcluded(param1))
         {
            return;
         }
         if(param2)
         {
            delete _logMap[param1];
         }
         if(param1 in _logMap)
         {
            _loc3_ = int(_logMap[param1]);
            Cc.warn(param1 + " " + _loc3_);
            _logMap[param1] = _loc3_ + 1;
         }
         else
         {
            Cc.warn(param1 + " begin");
            _logMap[param1] = 0;
         }
      }
      
      public static function logEnd(param1:String) : void
      {
         if(!LOG_ENABLED || isLogExcluded(param1))
         {
            return;
         }
         Cc.warn(param1 + " end");
         delete _logMap[param1];
      }
      
      private static function isLogExcluded(param1:String) : Boolean
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         for each(_loc2_ in _excludedLogs)
         {
            if(param1.indexOf(_loc2_) != -1)
            {
               _loc3_ = true;
               break;
            }
         }
         return _loc3_;
      }
   }
}

