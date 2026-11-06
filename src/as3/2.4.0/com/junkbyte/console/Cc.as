package com.junkbyte.console
{
   import com.adobe.images.PNGEncoder;
   import com.ax3.utils.TimeConverter;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import mx.utils.Base64Encoder;
   
   public class Cc
   {
      
      private static var _console:Console;
      
      private static var _config:ConsoleConfig;
      
      private static var _sentReportToServer:Boolean = false;
      
      public function Cc()
      {
         super();
      }
      
      public static function get config() : ConsoleConfig
      {
         if(!_config)
         {
            _config = new ConsoleConfig();
         }
         return _config;
      }
      
      public static function start(param1:DisplayObjectContainer, param2:String, param3:Boolean) : void
      {
         if(_console)
         {
            if(Boolean(param1) && !_console.parent)
            {
               param1.addChild(_console);
            }
         }
         else
         {
            _console = new Console(param2,config,param3);
            if(param1)
            {
               param1.addChild(_console);
            }
         }
      }
      
      public static function startOnStage(param1:DisplayObject, param2:String = "", param3:Boolean = false) : void
      {
         if(_console)
         {
            if(Boolean(param1) && Boolean(param1.stage) && _console.parent != param1.stage)
            {
               param1.stage.addChild(_console);
            }
         }
         else if(Boolean(param1) && Boolean(param1.stage))
         {
            start(param1.stage,param2,param3);
         }
         else
         {
            _console = new Console(param2,config,param3);
            if(param1)
            {
               param1.addEventListener(Event.ADDED_TO_STAGE,addedToStageHandle);
            }
         }
      }
      
      public static function add(param1:*, param2:int = 2, param3:Boolean = false) : void
      {
         if(_console)
         {
            _console.add(param1,param2,param3);
         }
      }
      
      public static function ch(param1:*, param2:*, param3:int = 2, param4:Boolean = false) : void
      {
         if(_console)
         {
            _console.ch(param1,param2,param3,param4);
         }
      }
      
      public static function log(... rest) : void
      {
         if(_console)
         {
            _console.log.apply(null,rest);
         }
      }
      
      public static function logWithTime(... rest) : void
      {
         rest.unshift(TimeConverter.toMicroTime(getTimer()));
         if(_console)
         {
            _console.log.apply(null,rest);
         }
      }
      
      public static function info(... rest) : void
      {
         if(_console)
         {
            _console.info.apply(null,rest);
         }
      }
      
      public static function debug(... rest) : void
      {
         if(_console)
         {
            _console.debug.apply(null,rest);
         }
      }
      
      public static function warn(... rest) : void
      {
         if(_console)
         {
            _console.warn.apply(null,rest);
         }
      }
      
      public static function error(... rest) : String
      {
         if(_console)
         {
            return _console.error.apply(null,rest);
         }
         return "";
      }
      
      public static function fatal(... rest) : void
      {
         if(_console)
         {
            _console.fatal.apply(null,rest);
         }
      }
      
      public static function logch(param1:*, ... rest) : void
      {
         logchArgs(param1,rest);
      }
      
      public static function logchArgs(param1:*, param2:Array) : void
      {
         if(_console)
         {
            _console.addCh(param1,param2,Console.LOG);
         }
      }
      
      public static function logdbg(... rest) : void
      {
         if(_console)
         {
            _console.addCh("DEBUG",rest,Console.LOG);
         }
      }
      
      public static function infoch(param1:*, ... rest) : void
      {
         if(_console)
         {
            _console.addCh(param1,rest,Console.INFO);
         }
      }
      
      public static function debugch(param1:*, ... rest) : void
      {
         if(_console)
         {
            _console.addCh(param1,rest,Console.DEBUG);
         }
      }
      
      public static function warnch(param1:*, ... rest) : void
      {
         if(_console)
         {
            _console.addCh(param1,rest,Console.WARN);
         }
      }
      
      public static function errorch(param1:*, ... rest) : void
      {
         if(_console)
         {
            _console.addCh(param1,rest,Console.ERROR);
         }
      }
      
      public static function fatalch(param1:*, ... rest) : void
      {
         if(_console)
         {
            _console.addCh(param1,rest,Console.FATAL);
         }
      }
      
      public static function stack(param1:*, param2:int = -1, param3:int = 5) : void
      {
         if(_console)
         {
            _console.stack(param1,param2,param3);
         }
      }
      
      public static function stackch(param1:*, param2:*, param3:int = -1, param4:int = 5) : void
      {
         if(_console)
         {
            _console.stackch(param1,param2,param3,param4);
         }
      }
      
      public static function inspect(param1:Object, param2:Boolean = true) : void
      {
         if(_console)
         {
            _console.inspect(param1,param2);
         }
      }
      
      public static function inspectch(param1:*, param2:Object, param3:Boolean = true) : void
      {
         if(_console)
         {
            _console.inspectch(param1,param2,param3);
         }
      }
      
      public static function explode(param1:Object, param2:int = 3) : void
      {
         if(_console)
         {
            _console.explode(param1,param2);
         }
      }
      
      public static function explodech(param1:*, param2:Object, param3:int = 3) : void
      {
         if(_console)
         {
            _console.explodech(param1,param2,param3);
         }
      }
      
      public static function explodedbg(param1:Object, param2:int = 3) : void
      {
         if(_console)
         {
            _console.explodech("DEBUG",param1,param2);
         }
      }
      
      public static function addHTML(... rest) : void
      {
         if(_console)
         {
            _console.addHTML.apply(null,rest);
         }
      }
      
      public static function addHTMLch(param1:*, param2:int, ... rest) : void
      {
         if(_console)
         {
            _console.addHTMLch.apply(null,new Array(param1,param2).concat(rest));
         }
      }
      
      public static function map(param1:DisplayObjectContainer, param2:uint = 0) : void
      {
         if(_console)
         {
            _console.map(param1,param2);
         }
      }
      
      public static function mapch(param1:*, param2:DisplayObjectContainer, param3:uint = 0) : void
      {
         if(_console)
         {
            _console.mapch(param1,param2,param3);
         }
      }
      
      public static function clear(param1:String = null) : void
      {
         if(_console)
         {
            _console.clear(param1);
         }
      }
      
      public static function bindKey(param1:KeyBind, param2:Function = null, param3:Array = null) : void
      {
         if(_console)
         {
            _console.bindKey(param1,param2,param3);
         }
      }
      
      public static function addMenu(param1:String, param2:Function, param3:Array = null, param4:String = null) : void
      {
         if(_console)
         {
            _console.addMenu(param1,param2,param3,param4);
         }
      }
      
      public static function listenUncaughtErrors(param1:LoaderInfo) : void
      {
         if(_console)
         {
            _console.listenUncaughtErrors(param1);
         }
      }
      
      public static function store(param1:String, param2:Object, param3:Boolean = false) : void
      {
         if(_console)
         {
            _console.store(param1,param2,param3);
         }
      }
      
      public static function addSlashCommand(param1:String, param2:Function, param3:String = "", param4:Boolean = true, param5:String = ";") : void
      {
         if(_console)
         {
            _console.addSlashCommand(param1,param2,param3,param4,param5);
         }
      }
      
      public static function removeEqualSlashCommand(param1:String, param2:Function) : void
      {
         if(_console)
         {
            _console.removeEqualSlashCommand(param1,param2);
         }
      }
      
      public static function watch(param1:Object, param2:String = null) : String
      {
         if(_console)
         {
            return _console.watch(param1,param2);
         }
         return null;
      }
      
      public static function unwatch(param1:String) : void
      {
         if(_console)
         {
            _console.unwatch(param1);
         }
      }
      
      public static function addGraph(param1:String, param2:Object, param3:String, param4:Number = -1, param5:String = null, param6:Rectangle = null, param7:Boolean = false) : void
      {
         if(_console)
         {
            _console.addGraph(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function fixGraphRange(param1:String, param2:Number = NaN, param3:Number = NaN) : void
      {
         if(_console)
         {
            _console.fixGraphRange(param1,param2,param3);
         }
      }
      
      public static function removeGraph(param1:String, param2:Object = null, param3:String = null) : void
      {
         if(_console)
         {
            _console.removeGraph(param1,param2,param3);
         }
      }
      
      public static function setViewingChannels(... rest) : void
      {
         if(_console)
         {
            _console.setViewingChannels.apply(null,rest);
         }
      }
      
      public static function setIgnoredChannels(... rest) : void
      {
         if(_console)
         {
            _console.setIgnoredChannels.apply(null,rest);
         }
      }
      
      public static function set minimumPriority(param1:uint) : void
      {
         if(_console)
         {
            _console.minimumPriority = param1;
         }
      }
      
      public static function get width() : Number
      {
         if(_console)
         {
            return _console.width;
         }
         return 0;
      }
      
      public static function set width(param1:Number) : void
      {
         if(_console)
         {
            _console.width = param1;
         }
      }
      
      public static function get height() : Number
      {
         if(_console)
         {
            return _console.height;
         }
         return 0;
      }
      
      public static function set height(param1:Number) : void
      {
         if(_console)
         {
            _console.height = param1;
         }
      }
      
      public static function get x() : Number
      {
         if(_console)
         {
            return _console.x;
         }
         return 0;
      }
      
      public static function set x(param1:Number) : void
      {
         if(_console)
         {
            _console.x = param1;
         }
      }
      
      public static function get y() : Number
      {
         if(_console)
         {
            return _console.y;
         }
         return 0;
      }
      
      public static function set y(param1:Number) : void
      {
         if(_console)
         {
            _console.y = param1;
         }
      }
      
      public static function get visible() : Boolean
      {
         if(_console)
         {
            return _console.visible;
         }
         return false;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         if(_console)
         {
            _console.visible = param1;
         }
      }
      
      public static function get fpsMonitor() : Boolean
      {
         if(_console)
         {
            return _console.fpsMonitor;
         }
         return false;
      }
      
      public static function set fpsMonitor(param1:Boolean) : void
      {
         if(_console)
         {
            _console.fpsMonitor = param1;
         }
      }
      
      public static function get memoryMonitor() : Boolean
      {
         if(_console)
         {
            return _console.memoryMonitor;
         }
         return false;
      }
      
      public static function set memoryMonitor(param1:Boolean) : void
      {
         if(_console)
         {
            _console.memoryMonitor = param1;
         }
      }
      
      public static function get commandLine() : Boolean
      {
         if(_console)
         {
            return _console.commandLine;
         }
         return false;
      }
      
      public static function set commandLine(param1:Boolean) : void
      {
         if(_console)
         {
            _console.commandLine = param1;
         }
      }
      
      public static function get displayRoller() : Boolean
      {
         if(_console)
         {
            return _console.displayRoller;
         }
         return false;
      }
      
      public static function set displayRoller(param1:Boolean) : void
      {
         if(_console)
         {
            _console.displayRoller = param1;
         }
      }
      
      public static function setRollerCaptureKey(param1:uint, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(_console)
         {
            _console.setRollerCaptureKey(param1,param4,param2,param3);
         }
      }
      
      public static function get remoting() : Boolean
      {
         if(_console)
         {
            return _console.remoting;
         }
         return false;
      }
      
      public static function set remoting(param1:Boolean) : void
      {
         if(_console)
         {
            _console.remoting = param1;
         }
      }
      
      public static function remotingSocket(param1:String, param2:int) : void
      {
         if(_console)
         {
            _console.remotingSocket(param1,param2);
         }
      }
      
      public static function remove() : void
      {
         if(_console)
         {
            if(_console.parent)
            {
               _console.parent.removeChild(_console);
            }
            _console = null;
         }
      }
      
      public static function getAllLog(param1:String = "\r\n") : String
      {
         if(_console)
         {
            return _console.getAllLog(param1);
         }
         return "";
      }
      
      public static function get instance() : Console
      {
         return _console;
      }
      
      private static function addedToStageHandle(param1:Event) : void
      {
         var _loc2_:DisplayObjectContainer = param1.currentTarget as DisplayObjectContainer;
         _loc2_.removeEventListener(Event.ADDED_TO_STAGE,addedToStageHandle);
         if(Boolean(_console) && _console.parent == null)
         {
            _loc2_.stage.addChild(_console);
         }
      }
      
      public static function sendToServer(param1:String, param2:Boolean = false, param3:String = null, param4:String = null) : void
      {
         var url:String = param1;
         var makeScreenshot:Boolean = param2;
         var tag:String = param3;
         var stackTrace:String = param4;
         var urlVariables:URLVariables = null;
         var bitmapData:BitmapData = null;
         var encodedScreenshot:ByteArray = null;
         var base64Encoder:Base64Encoder = null;
         var request:URLRequest = null;
         var loader:URLLoader = null;
         Cc.log("Stack trace is: " + new Error().getStackTrace());
         if(_sentReportToServer == false)
         {
            _sentReportToServer = true;
            Cc.log("Send report(tag:" + (tag == null ? "null" : tag) + ") to server " + url);
            if(_console.stage != null)
            {
               urlVariables = new URLVariables();
               urlVariables.log = _console.getAllLog();
               bitmapData = new BitmapData(_console.stage.stageWidth,_console.stage.stageHeight);
               bitmapData.draw(_console.stage);
               encodedScreenshot = PNGEncoder.encode(bitmapData);
               base64Encoder = new Base64Encoder();
               base64Encoder.encodeBytes(encodedScreenshot);
               urlVariables.screenshot = base64Encoder.toString();
               if(tag != null && tag != "")
               {
                  urlVariables.tag = tag;
               }
               request = new URLRequest(url);
               request.data = urlVariables;
               request.method = URLRequestMethod.POST;
               loader = new URLLoader();
               loader.addEventListener(IOErrorEvent.IO_ERROR,function(param1:IOErrorEvent):void
               {
                  Cc.log("Bug report send failed: " + param1.text);
               });
               loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,function(param1:SecurityErrorEvent):void
               {
                  Cc.log("Bug report security error: " + param1.text);
               });
               loader.load(request);
            }
         }
      }
   }
}

