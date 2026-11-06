package com.ax3.fishao.quests
{
   import com.ax3.fishao.debug.Debug;
   
   public class QuestInfoBase
   {
      
      private var _stepsTotal:int;
      
      private var _isComplete:Boolean;
      
      private var _type:String;
      
      public function QuestInfoBase()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
      }
      
      public function deserialize(param1:Object) : void
      {
         this._isComplete = Debug.getPropertyOrDefault(param1,"is_complete",this._isComplete);
         this._type = Debug.getPropertyOrDefault(param1,"type",this._type);
         this._stepsTotal = Debug.getPropertyOrDefault(param1,"steps_total",this._stepsTotal);
      }
   }
}

