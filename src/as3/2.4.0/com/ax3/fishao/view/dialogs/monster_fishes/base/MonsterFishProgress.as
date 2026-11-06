package com.ax3.fishao.view.dialogs.monster_fishes.base
{
   import com.ax3.fishao.debug.Debug;
   
   public class MonsterFishProgress
   {
      
      private var _type:String;
      
      private var _feedLevel:int;
      
      public function MonsterFishProgress()
      {
         super();
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get feedLevel() : int
      {
         return this._feedLevel;
      }
      
      public function set feedLevel(param1:int) : void
      {
         this._feedLevel = param1;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._type = Debug.assertProperty(param1,"type");
         this._feedLevel = Debug.assertProperty(param1,"feed_level");
      }
   }
}

