package com.ax3.fishao.view.dialogs.club.model
{
   import com.ax3.fishao.debug.Debug;
   
   public class ClubInfo
   {
      
      private var _id:int;
      
      private var _name:String;
      
      private var _emblemID:int;
      
      private var _leaderLogin:String;
      
      private var _type:String;
      
      public function ClubInfo()
      {
         super();
      }
      
      public function get ID() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get emblemID() : int
      {
         return this._emblemID;
      }
      
      public function get leaderLogin() : String
      {
         return this._leaderLogin;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._id = Debug.assertProperty(param1,"id");
         this._name = Debug.assertProperty(param1,"name");
         this._emblemID = Debug.assertProperty(param1,"emblem_id");
         this._type = Debug.assertProperty(param1,"type");
         this._leaderLogin = Debug.assertProperty(param1,"leader_login");
      }
   }
}

