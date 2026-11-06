package com.ax3.utils.timer
{
   import com.ax3.errors.InitError;
   import flash.display.Stage;
   import flash.utils.Dictionary;
   
   public class UpdateManager
   {
      
      private static var _instance:UpdateManager;
      
      public static var frameRate:Number;
      
      public static var frameTimeMs:Number = 33;
      
      private var _updateGroups:Dictionary;
      
      private var _stage:Stage;
      
      public function UpdateManager()
      {
         super();
         if(_instance != null)
         {
            throw new Error("User getInstance() method");
         }
         _instance = this;
         this._updateGroups = new Dictionary();
      }
      
      public static function getInstance() : UpdateManager
      {
         if(_instance == null)
         {
            _instance = new UpdateManager();
         }
         return _instance;
      }
      
      public function init(param1:Stage) : void
      {
         this._stage = param1;
      }
      
      public function createGroup(param1:String, param2:Number = -1) : void
      {
         if(this._stage == null)
         {
            throw new InitError();
         }
         if(this._updateGroups[param1] == null)
         {
            this._updateGroups[param1] = new UpdateGroup(this._stage,param2);
            return;
         }
         throw new Error("Update group \'" + param1 + "\' exist");
      }
      
      public function getGroup(param1:String) : UpdateGroup
      {
         return this._updateGroups[param1];
      }
   }
}

