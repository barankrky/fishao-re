package com.ax3.fishao.utils
{
   public class UtilsString
   {
      
      public function UtilsString()
      {
         super();
      }
      
      public static function isNullOrEmpty(param1:String) : Boolean
      {
         return param1 == null || param1.length == 0;
      }
      
      public static function stringColorToUint(param1:String) : uint
      {
         var _loc2_:String = param1.replace("#","0x");
         return uint(_loc2_);
      }
      
      public static function getFirstCharCapitalized(param1:String) : String
      {
         var value:String = param1;
         var result:String = value.toLowerCase();
         result = result.replace(/(^[a-z]|\s[a-z])/g,function():String
         {
            return arguments[1].toUpperCase();
         });
         return result;
      }
      
      public static function restoreEscapeSqlChars(param1:String) : String
      {
         var _loc2_:String = null;
         return param1.replace("\\\'","\'");
      }
      
      public static function limitCharCount(param1:String, param2:int, param3:String = "") : String
      {
         var _loc4_:String = param1;
         if(param1.length > param2)
         {
            _loc4_ = param1.substr(0,param2 - param3.length);
            _loc4_ += param3;
         }
         return _loc4_;
      }
      
      public static function createTable(param1:Array, param2:Array, param3:int, param4:String) : String
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:Array = null;
         var _loc10_:String = null;
         var _loc11_:int = int(param1.length);
         var _loc12_:Array = new Array(_loc11_);
         var _loc13_:int = 0;
         var _loc14_:String = "";
         _loc5_ = 0;
         while(_loc5_ < _loc11_)
         {
            _loc7_ = param1[_loc5_] as String;
            _loc12_[_loc5_] = _loc7_.length;
            _loc6_ = 0;
            while(_loc6_ < param2.length)
            {
               _loc9_ = param2[_loc6_] as Array;
               _loc10_ = _loc9_[_loc5_] as String;
               _loc8_ = _loc10_.length;
               if(_loc12_[_loc5_] < _loc8_)
               {
                  _loc12_[_loc5_] = _loc8_;
               }
               _loc6_++;
            }
            _loc13_ += _loc12_[_loc5_];
            _loc5_++;
         }
         var _loc15_:String = "";
         var _loc16_:int = 0;
         while(_loc16_ < param3)
         {
            _loc15_ += "-";
            _loc16_++;
         }
         _loc14_ += _loc15_ + "\n";
         _loc5_ = 0;
         while(_loc5_ < _loc11_)
         {
            _loc7_ = param1[_loc5_] as String;
            _loc7_ += "\t";
            _loc14_ += "| " + _loc7_ + " ";
            _loc5_++;
         }
         _loc14_ += "|\n";
         _loc14_ += _loc15_ + "\n";
         _loc6_ = 0;
         while(_loc6_ < param2.length)
         {
            _loc9_ = param2[_loc6_] as Array;
            _loc5_ = 0;
            while(_loc5_ < _loc11_)
            {
               _loc7_ = _loc9_[_loc5_] as String;
               _loc7_ += "\t";
               _loc14_ += "| " + _loc7_ + " ";
               _loc5_++;
            }
            _loc14_ += "|\n";
            _loc6_++;
         }
         _loc14_ += _loc15_;
         return "<textformat tabstops=\'" + param4 + "\'>" + _loc14_ + "</textformat>";
      }
   }
}

