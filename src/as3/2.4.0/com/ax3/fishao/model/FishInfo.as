package com.ax3.fishao.model
{
   import com.ax3.fishao.core.ISerializable;
   import com.ax3.fishao.debug.Debug;
   import flash.events.EventDispatcher;
   
   public class FishInfo extends EventDispatcher implements ISerializable
   {
      
      private var _id:int;
      
      private var _length:int;
      
      private var _rarity:int;
      
      private var _isShiny:Boolean;
      
      private var _hueShiftOfShiny:int;
      
      public function FishInfo()
      {
         super();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get length() : int
      {
         return this._length;
      }
      
      public function get rarity() : int
      {
         return this._rarity;
      }
      
      public function get isShiny() : Boolean
      {
         return this._isShiny;
      }
      
      public function get hueShiftOfShiny() : int
      {
         return this._hueShiftOfShiny;
      }
      
      public function serialize() : Object
      {
         return {};
      }
      
      public function deserialize(param1:Object) : void
      {
         this._id = Debug.assertProperty(param1,"fish_id",int);
         this._length = Debug.assertProperty(param1,"fish_length",int);
         this._rarity = Debug.assertProperty(param1,"fish_rarity",int);
         this._isShiny = Debug.assertProperty(param1,"is_shiny",Boolean);
         this._hueShiftOfShiny = Debug.assertProperty(param1,"hue_shift_of_shiny",int);
      }
   }
}

