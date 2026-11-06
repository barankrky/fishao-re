package com.junkbyte.console.addons.watcher
{
   import com.junkbyte.console.Cc;
   import com.junkbyte.console.Console;
   
   public class WatchAddon
   {
      
      private static var _console:Console;
      
      public function WatchAddon()
      {
         super();
      }
      
      public static function addToMenu(param1:String = "Wt", param2:Console = null) : void
      {
         _console = param2;
         if(_console == null)
         {
            _console = Cc.instance;
         }
         if(_console == null || param1 == null)
         {
            return;
         }
         _console.addMenu(param1,onMenuClick);
      }
      
      public static function onMenuClick() : void
      {
         var _loc1_:WatchPanel = _console.panels.getPanel(WatchPanel.NAME) as WatchPanel;
         if(_loc1_)
         {
            _loc1_.close();
         }
         else
         {
            _loc1_ = new WatchPanel(_console);
            _loc1_.x = _console.x + _console.width;
            _loc1_.y = _console.y;
            _loc1_.start();
            _console.panels.addPanel(_loc1_);
         }
      }
      
      public static function update() : void
      {
         var _loc1_:WatchPanel = _console.panels.getPanel(WatchPanel.NAME) as WatchPanel;
         if(_loc1_)
         {
            _loc1_.update();
         }
      }
   }
}

