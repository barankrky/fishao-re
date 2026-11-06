package com.ax3.net
{
   public class LoadingIndicator
   {
      
      public static var globalInstanceId:int;
      
      private static var AUTO_INCREMENT:int = 0;
      
      public var progressHandler:* = null;
      
      protected var _isProgress:Boolean;
      
      protected var _id:int = 0;
      
      private var _viewType:String;
      
      public var instanceId:int;
      
      public function LoadingIndicator(param1:String = null)
      {
         super();
         this.instanceId = globalInstanceId++;
         this._id = AUTO_INCREMENT++;
         this._viewType = param1;
      }
      
      public function start() : void
      {
         this._isProgress = true;
      }
      
      public function stop() : void
      {
         this._isProgress = false;
      }
      
      public function isCompleted() : Boolean
      {
         return this._isProgress == false;
      }
      
      public function getPercent() : Number
      {
         if(this.progressHandler == null)
         {
            return 0;
         }
         if(this.progressHandler is Function)
         {
            return this.progressHandler();
         }
         return 0;
      }
      
      public function get viewType() : String
      {
         return this._viewType;
      }
      
      public function toString() : String
      {
         return "LoadingIndicator(id:" + this._id + ")";
      }
      
      public function destroy() : void
      {
         this.progressHandler = null;
      }
   }
}

