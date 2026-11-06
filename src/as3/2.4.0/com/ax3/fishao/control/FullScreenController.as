package com.ax3.fishao.control
{
   import com.ax3.events.GameResizeEvent;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.utils.UtilsApp;
   import com.junkbyte.console.Cc;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   
   public class FullScreenController
   {
      
      private static var _instance:FullScreenController;
      
      private static var _dispatcher:IEventDispatcher;
      
      private var _stage:Stage;
      
      private var _backgroundSprite:Sprite;
      
      public function FullScreenController()
      {
         super();
         if(_instance != null)
         {
            throw new Error("Use getInstance method !");
         }
      }
      
      public static function getInstance() : FullScreenController
      {
         if(_instance == null)
         {
            _instance = new FullScreenController();
         }
         return _instance;
      }
      
      public function get isFullscreenNow() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._stage != null)
         {
            _loc1_ = this._stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE || this._stage.displayState == StageDisplayState.FULL_SCREEN;
         }
         return _loc1_;
      }
      
      public function init(param1:IEventDispatcher, param2:Stage, param3:Sprite) : void
      {
         this._stage = param2;
         this._backgroundSprite = param3;
         this._stage.addEventListener(Event.RESIZE,this.onResize);
         _dispatcher = param1;
         this.executeResize();
      }
      
      private function onResize(param1:Event) : void
      {
         this.executeResize();
      }
      
      private function executeResize() : void
      {
         this.updateScreenSizeConfig();
         this.dispatchResize();
         this.redrawBackground();
      }
      
      private function redrawBackground() : void
      {
         this._backgroundSprite.graphics.clear();
         this._backgroundSprite.graphics.beginFill(Config.GAME_BACKGROUND);
         this._backgroundSprite.graphics.drawRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this._backgroundSprite.graphics.endFill();
      }
      
      private function dispatchResize() : void
      {
         _dispatcher.dispatchEvent(new GameResizeEvent(Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT));
      }
      
      public function updateScreenSizeConfig() : void
      {
         Cc.log(this + ".updateScreenSizeConfig(_stage.stageWidth: " + this._stage.stageWidth + ", _stage.stageHeight: " + this._stage.stageHeight + ")");
         Config.SCREEN_WIDTH = this._stage.stageWidth;
         Config.SCREEN_HEIGHT = this._stage.stageHeight;
         Config.FULLSCREEN = this._stage.displayState == StageDisplayState.FULL_SCREEN || this._stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
         this._stage.scaleMode = StageScaleMode.NO_SCALE;
      }
      
      public function switchFullScreen() : void
      {
         var flashPlayerVersion:Number = NaN;
         if(this.isFullscreenNow)
         {
            this._stage.displayState = StageDisplayState.NORMAL;
         }
         else
         {
            flashPlayerVersion = UtilsApp.getFlashPlayerVersion();
            Cc.log("flashPlayerVersion=" + flashPlayerVersion);
            if(flashPlayerVersion >= 11.3)
            {
               Cc.log("Go StageDisplayState.FULL_SCREEN_INTERACTIVE");
               try
               {
                  this._stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
               }
               catch(e:Error)
               {
                  Cc.error("Fullscreen error: " + e);
                  GameSwf.sendReportToServer();
               }
            }
            else
            {
               Cc.log("Go StageDisplayState.FULL_SCREEN");
               this._stage.displayState = StageDisplayState.FULL_SCREEN;
            }
         }
      }
      
      public function exitFromFullscreen() : void
      {
         if(this.isFullscreenNow)
         {
            this._stage.displayState = StageDisplayState.NORMAL;
         }
      }
   }
}

