package com.ax3.fishao.display.dialogs
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class LoadingScreen extends Sprite implements ILoadingScreen
   {
      
      public static const TYPE_SIMPLE:String = "simple";
      
      public static const TYPE_BUBBLES:String = "bubbles";
      
      public static const TYPE_TIPS:String = "tips";
      
      private var _viewType:String;
      
      private var _currentScreen:ILoadingScreen;
      
      private var default_bg_color:uint = 196655;
      
      private var bgshape:Sprite;
      
      public function LoadingScreen()
      {
         super();
      }
      
      private function initBG() : void
      {
         this.bgshape = new Sprite();
         this.bgshape.graphics.beginFill(this.default_bg_color);
         this.bgshape.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
         addChildAt(this.bgshape,0);
         stage.addEventListener(Event.RESIZE,this.resizeBGWithStage);
      }
      
      private function changeBGColor(param1:uint) : void
      {
         this.bgshape.graphics.beginFill(param1);
         this.bgshape.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
      }
      
      private function resizeBGWithStage(param1:Event) : void
      {
         try
         {
            this.bgshape.width = stage.stageWidth;
            this.bgshape.height = stage.stageHeight;
         }
         catch(e:Error)
         {
         }
      }
      
      public function set viewType(param1:String) : void
      {
         this._viewType = param1;
         this.init();
      }
      
      public function init() : void
      {
         this.clear();
         if(this._viewType == null)
         {
            this._viewType = LoadingScreen.TYPE_BUBBLES;
         }
         switch(this._viewType)
         {
            case LoadingScreen.TYPE_BUBBLES:
               this._currentScreen = new LoadingScreenBubbles();
               break;
            case LoadingScreen.TYPE_SIMPLE:
               this._currentScreen = new LoadingScreenSimple();
               break;
            case LoadingScreen.TYPE_TIPS:
               this._currentScreen = new LoadingScreenTips();
         }
         this.addChild(MovieClip(this._currentScreen));
         this.textUpdate();
      }
      
      public function fitToScreen() : void
      {
         if(this._currentScreen != null)
         {
            this._currentScreen.fitToScreen();
         }
      }
      
      public function textUpdate() : void
      {
         if(this._currentScreen != null)
         {
            this._currentScreen.textUpdate();
         }
      }
      
      public function set percent(param1:Number) : void
      {
         if(this._currentScreen != null)
         {
            this._currentScreen.percent = param1;
         }
      }
      
      public function clear() : void
      {
         while(this.numChildren > 0)
         {
            this._currentScreen.destroy();
            this.removeChildAt(0);
         }
      }
      
      public function destroy() : void
      {
      }
   }
}

