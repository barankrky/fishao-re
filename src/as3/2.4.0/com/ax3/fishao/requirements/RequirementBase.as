package com.ax3.fishao.requirements
{
   import com.ax3.fishao.debug.Debug;
   
   public class RequirementBase
   {
      
      private var _type:String;
      
      public function RequirementBase()
      {
         super();
      }
      
      public function get isComplete() : Boolean
      {
         Debug.assert(false);
         return false;
      }
      
      public function get description() : String
      {
         Debug.assert(false);
         return "";
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
   }
}

