package com.ax3.fishao.locations.chars
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class BitmapAnimationViewport extends Bitmap
   {
      
      private var _callback:Function = null;
      
      public var direction:int = 0;
      
      public var params:Object = null;
      
      public function BitmapAnimationViewport()
      {
         super();
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         super.bitmapData = param1;
         this.dispatchUpdate();
      }
      
      private function dispatchUpdate() : void
      {
         if(this._callback != null)
         {
            this._callback.call(this);
         }
      }
      
      public function destroy() : void
      {
         this._callback = null;
         this.params = null;
      }
      
      public function set updateCallback(param1:Function) : void
      {
         this._callback = param1;
      }
   }
}

