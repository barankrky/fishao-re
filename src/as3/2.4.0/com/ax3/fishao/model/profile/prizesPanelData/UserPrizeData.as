package com.ax3.fishao.model.profile.prizesPanelData
{
   import com.ax3.fishao.debug.Debug;
   
   public class UserPrizeData
   {
      
      private var _type:String;
      
      private var _timeReceivedAgo:int;
      
      private var _imageUrl:String;
      
      private var _collectionId:int;
      
      private var _server:String;
      
      private var _tournamentDifficulty:String;
      
      private var _tournamentMembersCount:int;
      
      private var _fishId:int;
      
      private var _fishLength:int;
      
      private var _date:String;
      
      public function UserPrizeData()
      {
         super();
      }
      
      public function get timeReceivedAgo() : int
      {
         return this._timeReceivedAgo;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageUrl() : String
      {
         return this._imageUrl;
      }
      
      public function get collectionId() : int
      {
         return this._collectionId;
      }
      
      public function get server() : String
      {
         return this._server;
      }
      
      public function get tournamentDifficulty() : String
      {
         return this._tournamentDifficulty;
      }
      
      public function get tournamentMembersCount() : int
      {
         return this._tournamentMembersCount;
      }
      
      public function get fishId() : int
      {
         return this._fishId;
      }
      
      public function get fishLength() : int
      {
         return this._fishLength;
      }
      
      public function get date() : String
      {
         return this._date;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._timeReceivedAgo = Debug.assertProperty(param1,"timeAgoSec");
         this._type = Debug.assertProperty(param1,"type");
         var _loc2_:Object = JSON.parse(Debug.assertProperty(param1,"params"));
         this._server = Debug.getPropertyOrDefault(_loc2_,"serverName","");
         this._collectionId = Debug.getPropertyOrDefault(_loc2_,"collectionId",-1);
         this._imageUrl = "prizes/" + this._type + (this._collectionId != -1 ? this._collectionId : "") + "_128x128.png";
         this._tournamentMembersCount = Debug.getPropertyOrDefault(_loc2_,"members_count",-1);
         this._tournamentDifficulty = Debug.getPropertyOrDefault(_loc2_,"tournament_difficulty","");
         this._fishId = Debug.getPropertyOrDefault(_loc2_,"fishId",-1);
         this._fishLength = Debug.getPropertyOrDefault(_loc2_,"length",-1);
         this._date = Debug.getPropertyOrDefault(_loc2_,"period",-1);
      }
   }
}

