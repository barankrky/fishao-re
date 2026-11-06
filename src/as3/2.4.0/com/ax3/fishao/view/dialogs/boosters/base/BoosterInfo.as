package com.ax3.fishao.view.dialogs.boosters.base
{
   public class BoosterInfo
   {
      
      private var _type:String;
      
      private var _id:uint;
      
      public function BoosterInfo(param1:String, param2:uint)
      {
         super();
         this._type = param1;
         this._id = param2;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get id() : uint
      {
         return this._id;
      }
   }
}

