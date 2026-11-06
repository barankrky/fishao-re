package com.ax3.net
{
   import com.ax3.events.URLBitmapLoaderEvent;
   import com.ax3.utils.Callback;
   import flash.utils.Dictionary;
   
   public class DelayLoadBitmap extends URLBitmapLoader
   {
      
      private var _callbacksByURL:Dictionary = new Dictionary();
      
      public function DelayLoadBitmap()
      {
         super();
         addEventListener(URLBitmapLoaderEvent.BITMAP_LOADED_FROM_URL,this.onBitmapLoad);
      }
      
      private function onBitmapLoad(param1:URLBitmapLoaderEvent) : void
      {
         var _loc2_:Callback = null;
         if(this._callbacksByURL[param1.param] != null)
         {
            for each(_loc2_ in this._callbacksByURL[param1.param] as Array)
            {
               _loc2_.call(this);
            }
            this._callbacksByURL[param1.param] = null;
            delete this._callbacksByURL[param1.param];
         }
      }
      
      public function executeOnBitmapLoad(param1:Function, param2:String, param3:*) : void
      {
         if(isBitmapURLLoaded(param2))
         {
            param1(param2,param3);
         }
         else
         {
            if(this._callbacksByURL[param2] == null)
            {
               this._callbacksByURL[param2] = [];
            }
            if((this._callbacksByURL[param2] as Array).indexOf(param1) == -1)
            {
               (this._callbacksByURL[param2] as Array).push(new Callback(param1,param2,param3));
               getBitmapFromURL(param2);
            }
         }
      }
   }
}

