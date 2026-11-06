package com.ax3.fishao.view.dialogs.periodicFeatures
{
   import com.ax3.fishao.debug.Debug;
   
   public class PeriodicFeatureBase
   {
      
      private var _type:String;
      
      private var _state:String;
      
      public function PeriodicFeatureBase()
      {
         super();
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._type = Debug.assertProperty(param1,"type");
         this._state = Debug.assertProperty(param1,"state");
      }
   }
}

