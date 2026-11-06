package com.ax3.fishao
{
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.base.LocationDialog;
   import flash.desktop.NativeProcess;
   import flash.desktop.NativeProcessStartupInfo;
   import flash.events.IOErrorEvent;
   import flash.filesystem.File;
   import flash.system.Capabilities;
   import flash.utils.setInterval;
   
   public class DiscordPresence
   {
      
      private static var _process:NativeProcess;
      
      private static var _lastDetails:String;
      
      public function DiscordPresence()
      {
         super();
      }
      
      public static function start() : void
      {
         var exe:File;
         var info:NativeProcessStartupInfo = null;
         if(!NativeProcess.isSupported)
         {
            return;
         }
         exe = File.applicationDirectory.resolvePath("out/discord-rpc" + (Capabilities.os.indexOf("Windows") == 0 ? ".exe" : ""));
         if(!exe.exists)
         {
            return;
         }
         info = new NativeProcessStartupInfo();
         info.executable = exe;
         try
         {
            _process = new NativeProcess();
            _process.addEventListener(IOErrorEvent.STANDARD_INPUT_IO_ERROR,stop);
            _process.addEventListener(IOErrorEvent.STANDARD_OUTPUT_IO_ERROR,stop);
            _process.addEventListener(IOErrorEvent.STANDARD_ERROR_IO_ERROR,stop);
            _process.start(info);
         }
         catch(e:Error)
         {
            _process = null;
            return;
         }
         update();
         setInterval(update,15000);
      }
      
      private static function update() : void
      {
         var details:String = null;
         if(_process == null || !_process.running)
         {
            return;
         }
         try
         {
            details = describe();
            if(details != _lastDetails)
            {
               _lastDetails = details;
               _process.standardInput.writeUTFBytes(JSON.stringify({"details":details}) + "\n");
            }
         }
         catch(e:Error)
         {
            stop();
         }
      }
      
      private static function stop(param1:IOErrorEvent = null) : void
      {
         if(_process != null)
         {
            if(_process.running)
            {
               _process.exit(true);
            }
            _process = null;
         }
      }
      
      private static function describe() : String
      {
         var _loc1_:LocationConfig = null;
         var _loc2_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc2_ != null && _loc2_.locationModel != null)
         {
            _loc1_ = _loc2_.locationModel.locationConfig;
         }
         if(_loc1_ == null)
         {
            if(GameSwf.worldMap != null && GameSwf.worldMap.parent != null)
            {
               return "Looking at the world map";
            }
            return "In the menus";
         }
         if(_loc1_.id >= 201 && _loc1_.id <= 299)
         {
            return "Fishing in a tournament";
         }
         switch(_loc1_.id)
         {
            case LocationConfig.PRIVATE_HOUSE.id:
               return "Relaxing at home";
            case LocationConfig.FRIENDS_PRIVATE_HOUSE.id:
               return "Visiting a friend";
            case LocationConfig.SUBLOCATION_1_DECORMARKET.id:
               return "At Decor Market";
            default:
               return "At " + prettyName(_loc1_.filename);
         }
      }
      
      private static function prettyName(param1:String) : String
      {
         var _loc2_:Array = param1.replace(/^(sub)?location_\d+_|\/$/g,"").split("_");
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc2_[_loc3_] = String(_loc2_[_loc3_]).charAt(0).toUpperCase() + String(_loc2_[_loc3_]).substr(1);
            _loc3_++;
         }
         return _loc2_.join(" ");
      }
   }
}

