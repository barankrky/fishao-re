package com.ax3.fishao.view.dialogs.worlds
{
   import com.ax3.fishao.debug.Debug;
   
   public class WorldInfo
   {
      
      private var _id:String;
      
      private var _url:String;
      
      private var _playersMax:int;
      
      private var _playersCount:int;
      
      private var _name:String;
      
      private var _enabled:Boolean;
      
      public function WorldInfo()
      {
         super();
         this._id = this.id;
         this._enabled = true;
         this._name = "";
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get url() : String
      {
         return this._url;
      }
      
      public function get playersMax() : int
      {
         return this._playersMax;
      }
      
      public function get playersCount() : int
      {
         return Math.min(this._playersCount,this._playersMax);
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled && this._playersCount < this._playersMax;
      }
      
      public function get isVirtual() : Boolean
      {
         var _loc1_:String = this._name.toLowerCase();
         return _loc1_.indexOf("virtual") != -1 || _loc1_.indexOf("club") != -1;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._id = Debug.getPropertyOrDefault(param1,"worldId",this._id);
         this._url = Debug.getPropertyOrDefault(param1,"url",this._url);
         this._name = Debug.getPropertyOrDefault(param1,"worldName",this._name);
         this._playersCount = Debug.getPropertyOrDefault(param1,"count",this._playersCount);
         this._playersMax = Debug.getPropertyOrDefault(param1,"maxPlayers",this._playersMax);
         this._enabled = Debug.getPropertyOrDefault(param1,"enabled",this._enabled);
      }
   }
}

