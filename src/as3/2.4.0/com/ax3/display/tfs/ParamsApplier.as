package com.ax3.display.tfs
{
   import avmplus.getQualifiedClassName;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.describeType;
   
   public class ParamsApplier
   {
      
      public function ParamsApplier()
      {
         super();
      }
      
      public static function applyTextFieldStyles(param1:TextField, param2:Array) : void
      {
         var _loc3_:TextFieldStyle = null;
         for each(_loc3_ in param2)
         {
            assignBaseStyles(param1,_loc3_.parentStyles);
            assignFormat(param1,_loc3_.format);
            assignConfigTo(param1,_loc3_.params);
         }
      }
      
      private static function assignBaseStyles(param1:TextField, param2:Array) : void
      {
         if(param2 != null && param2.length > 0)
         {
            applyTextFieldStyles(param1,param2);
         }
      }
      
      private static function assignFormat(param1:TextField, param2:Object) : void
      {
         var _loc3_:TextFormat = null;
         if(param2 is TextFormat)
         {
            _loc3_ = param2 as TextFormat;
         }
         else
         {
            _loc3_ = param1.defaultTextFormat;
            assignConfigTo(_loc3_,param2);
         }
         param1.defaultTextFormat = _loc3_;
         param1.setTextFormat(_loc3_);
      }
      
      public static function assignConfigTo(param1:Object, param2:Object) : void
      {
         var _loc3_:* = undefined;
         if(getQualifiedClassName(param2) == "Object")
         {
            for(_loc3_ in param2)
            {
               if(param1.hasOwnProperty(_loc3_))
               {
                  param1[_loc3_] = param2[_loc3_];
               }
            }
         }
      }
      
      public static function copyProperties(param1:Object, param2:Object, param3:Array = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:String = null;
         if(param3 == null)
         {
            param3 = [];
         }
         if(param2 != null)
         {
            if(getQualifiedClassName(param2) == "Object")
            {
               for(_loc4_ in param2)
               {
                  if(param1.hasOwnProperty(_loc4_) && param3.indexOf(_loc7_) == -1)
                  {
                     param1[_loc4_] = param2[_loc4_];
                  }
               }
            }
            else
            {
               _loc5_ = describeType(param2);
               for each(_loc6_ in _loc5_.accessor)
               {
                  _loc4_ = String(_loc6_.@name);
                  _loc7_ = String(_loc6_.@access);
                  if(param1.hasOwnProperty(_loc4_) && (_loc7_ == "readwrite" || _loc7_ == "write") && param3.indexOf(_loc7_) == -1)
                  {
                     param1[_loc4_] = param2[_loc4_];
                  }
               }
            }
         }
      }
      
      public static function copyTextFieldStyle(param1:TextField, param2:TextField) : void
      {
         var _loc3_:TextFormat = param2.defaultTextFormat;
         param1.setTextFormat(_loc3_);
         param1.defaultTextFormat = _loc3_;
         ParamsApplier.copyProperties(param1,param2,["htmlText"]);
      }
      
      public static function parseIntInArrayForEach(param1:Object, param2:Object, param3:Array) : void
      {
         if(!(param1 is String))
         {
            param1 = param1.toString();
         }
         param3[param2] = parseInt(String(param1));
      }
   }
}

