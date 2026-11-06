package com.ax3.controllers
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ScaledBitmapController extends Sprite
   {
      
      private static var _instance:ScaledBitmapController;
      
      private static var _subscribers:Array = new Array();
      
      public static const FRAME_WIDTH:int = 15;
      
      public static const FRAME_HEIGHT:int = 15;
      
      private static const FRAME_COUNT:int = 19;
      
      private var _bitmapdataPreloader:BitmapData = null;
      
      private var _preloaderFrame:BitmapData;
      
      private var _indexFrame:uint = 0;
      
      public function ScaledBitmapController()
      {
         super();
         this._preloaderFrame = new BitmapData(FRAME_WIDTH,FRAME_HEIGHT,true,255);
      }
      
      public static function getInstance() : ScaledBitmapController
      {
         if(_instance == null)
         {
            _instance = new ScaledBitmapController();
         }
         return _instance;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         this.redraw();
      }
      
      public function config(param1:BitmapData) : void
      {
         this._bitmapdataPreloader = param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:Bitmap = null;
         if(this._bitmapdataPreloader != null)
         {
            this._preloaderFrame.copyPixels(this._bitmapdataPreloader,new Rectangle(this._indexFrame * FRAME_WIDTH,0,FRAME_WIDTH,FRAME_HEIGHT),new Point(0,0));
            for each(_loc1_ in _subscribers)
            {
               _loc1_.bitmapData.copyPixels(this._preloaderFrame,new Rectangle(0,0,FRAME_WIDTH,FRAME_HEIGHT),new Point(_loc1_.bitmapData.width / 2 - FRAME_WIDTH / 2,_loc1_.height / 2 - FRAME_HEIGHT / 2));
            }
            if(this._indexFrame >= FRAME_COUNT - 1)
            {
               this._indexFrame = 0;
            }
            else
            {
               ++this._indexFrame;
            }
         }
      }
      
      public function subscribeBitmap(param1:Bitmap) : void
      {
         if(hasEventListener(Event.ENTER_FRAME) == false && this._bitmapdataPreloader != null)
         {
            addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         if(_subscribers.indexOf(param1) == -1)
         {
            _subscribers.push(param1);
         }
      }
      
      public function unsubscribeBitmap(param1:Bitmap) : void
      {
         if(_subscribers.indexOf(param1) != -1)
         {
            _subscribers.splice(_subscribers.indexOf(param1),1);
         }
         if(_subscribers.length == 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }
   }
}

