package com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base
{
   import com.ax3.fishao.debug.Debug;
   
   public class WheelOfFortuneReward
   {
      
      protected var _type:String;
      
      public function WheelOfFortuneReward()
      {
         super();
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get translationWheel() : String
      {
         return "Override it!";
      }
      
      public function get translationUserTop() : String
      {
         return "Override it!";
      }
      
      public function get translationUserBottom() : String
      {
         return "Override it!";
      }
      
      public function get imageUrl() : String
      {
         return "";
      }
      
      public function deserializeRewardWheel(param1:Object) : void
      {
         this._type = Debug.assertProperty(param1,"type");
      }
      
      public function deserializeRewardUser(param1:Object) : void
      {
         this._type = Debug.assertProperty(param1,"type");
      }
   }
}

