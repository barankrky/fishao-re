package com.ax3.net
{
   import com.ax3.fishao.display.dialogs.LoadingScreen;
   import com.ax3.jss.requests.server.ServerResp;
   
   public class RequestIndicator extends LoadingIndicator
   {
      
      private var _callback:Function;
      
      private var _onRequestComplete:Function;
      
      public function RequestIndicator(param1:Function, param2:Function)
      {
         super(LoadingScreen.TYPE_SIMPLE);
         this._callback = param1;
         this._onRequestComplete = param2;
         _isProgress = true;
      }
      
      public function handler(param1:ServerResp) : void
      {
         if(this._callback != null)
         {
            this._callback(param1);
         }
         if(this._onRequestComplete != null)
         {
            this._onRequestComplete(this);
         }
      }
      
      override public function toString() : String
      {
         return "RequestIndicator(id:" + _id + ")";
      }
   }
}

