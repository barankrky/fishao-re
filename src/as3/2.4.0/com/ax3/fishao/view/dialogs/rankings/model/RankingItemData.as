package com.ax3.fishao.view.dialogs.rankings.model
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   
   public class RankingItemData
   {
      
      private var _position:Number;
      
      private var _login:String;
      
      private var _score:String;
      
      private var _scoreValue:int;
      
      private var _select:Boolean;
      
      private var _type:int;
      
      public function RankingItemData(param1:int)
      {
         super();
         this._type = param1;
      }
      
      public static function sortByPosition(param1:RankingItemData, param2:RankingItemData) : int
      {
         var _loc3_:int = 0;
         var _loc4_:Number = param1._position;
         var _loc5_:Number = param2._position;
         if(_loc4_ < _loc5_)
         {
            _loc3_ = -1;
         }
         else if(_loc4_ > _loc5_)
         {
            _loc3_ = 1;
         }
         return _loc3_;
      }
      
      public function get position() : Number
      {
         return this._position;
      }
      
      public function get login() : String
      {
         return this._login;
      }
      
      public function get score() : String
      {
         return this._score;
      }
      
      public function get select() : Boolean
      {
         return this._select;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._position = Debug.assertProperty(param1,"position");
         this._position += 1;
         this._login = Debug.assertProperty(param1,"login");
         this._scoreValue = Debug.assertProperty(param1,"score");
         if(this._type == ERankingType.FISH_SIZE)
         {
            this._score = I18n.formatDistance(this._scoreValue);
         }
         else
         {
            this._score = this._scoreValue + "";
         }
      }
   }
}

