package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.locations.BitmapCroppedMovieClipWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Lamp extends Sprite
   {
      
      public static const NIGHT_STATE:String = "night_state";
      
      public static const DAY_STATE:String = "day_state";
      
      private var _asset:DisplayObjectContainer;
      
      private var _dayState:DisplayObject;
      
      private var _nightState:BitmapCroppedMovieClipWrapper;
      
      public function Lamp(param1:DisplayObject, param2:Function)
      {
         super();
         this._asset = DisplayObjectContainer(param1);
         this._dayState = this._asset.getChildByName("$day");
         this._nightState = new BitmapCroppedMovieClipWrapper(MovieClip(this._asset.getChildByName("$night")));
         this._nightState.framePerSec = 10;
         this._nightState.play();
         param2(this._nightState);
         this.state = DAY_STATE;
      }
      
      public function set state(param1:String) : void
      {
         if(param1 == DAY_STATE)
         {
            this._nightState.alpha = 0;
            this._dayState.alpha = 1;
         }
         else if(param1 == NIGHT_STATE)
         {
            this._nightState.alpha = 1;
            this._dayState.alpha = 0;
         }
      }
      
      public function tweenlight(param1:Number) : void
      {
         this._nightState.alpha = param1;
         this._dayState.alpha = (1 - param1) * 2;
      }
      
      public function get asset() : DisplayObjectContainer
      {
         return this._asset;
      }
      
      public function destroy() : void
      {
         this._asset = null;
         this._dayState = null;
         if(this._nightState != null)
         {
            this._nightState.destroy();
         }
         this._nightState = null;
      }
   }
}

