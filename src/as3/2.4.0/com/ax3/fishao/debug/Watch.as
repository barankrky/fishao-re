package com.ax3.fishao.debug
{
   import com.junkbyte.console.addons.watcher.WatchAddon;
   import flash.utils.Dictionary;
   
   public class Watch
   {
      
      private static var _watches:Dictionary = new Dictionary();
      
      private static var _keys:Vector.<String> = new Vector.<String>();
      
      public function Watch()
      {
         super();
      }
      
      public static function change(param1:String, param2:Object) : void
      {
         if(_keys.indexOf(param1) == -1)
         {
            _keys.push(param1);
            _keys.sort(Array.CASEINSENSITIVE);
         }
         _watches[param1] = param2;
         WatchAddon.update();
      }
      
      public static function generateTextReport() : String
      {
         var _loc1_:String = null;
         var _loc2_:String = "";
         for each(_loc1_ in _keys)
         {
            _loc2_ += _loc1_ + ": " + _watches[_loc1_] + "\n";
         }
         return _loc2_;
      }
   }
}

