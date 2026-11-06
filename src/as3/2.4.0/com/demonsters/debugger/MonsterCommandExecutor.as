package com.demonsters.debugger
{
   import flash.utils.Dictionary;
   
   public class MonsterCommandExecutor
   {
      
      private static var _commands:Dictionary = new Dictionary();
      
      public function MonsterCommandExecutor()
      {
         super();
      }
      
      public static function addCommandListener(param1:String, param2:Function) : void
      {
         if(_commands[param1] == null)
         {
            _commands[param1] = [];
         }
         (_commands[param1] as Array).push(param2);
      }
      
      public static function executeCommand(param1:String, param2:Array) : void
      {
         var _loc3_:* = undefined;
         if(_commands[param1] != null)
         {
            for each(_loc3_ in _commands[param1])
            {
               if(_loc3_ is Function)
               {
                  (_loc3_ as Function).apply(null,param2);
               }
            }
         }
      }
   }
}

