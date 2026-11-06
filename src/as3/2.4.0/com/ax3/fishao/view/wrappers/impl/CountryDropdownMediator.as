package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.fishao.model.CountrieseDict;
   import com.ax3.fishao.model.CountryRecord;
   import flash.events.Event;
   
   public class CountryDropdownMediator
   {
      
      private var _countries:CountrieseDict;
      
      private var _currentCountryID:String;
      
      private var _countryDropdown:FishaoLongDropdown;
      
      public function CountryDropdownMediator(param1:CountrieseDict, param2:String)
      {
         super();
         this._countries = param1;
         this._currentCountryID = param2;
      }
      
      public function config(param1:FishaoLongDropdown) : void
      {
         this._countryDropdown = param1;
         this._countryDropdown.init();
         this._countryDropdown.addEventListener(Event.CHANGE,this.onCountryChange);
         var _loc2_:CountryRecord = this._countries.getCountryById(this._currentCountryID);
         if(_loc2_ != null)
         {
            this._countryDropdown.text = _loc2_.name;
         }
         this._countryDropdown.create(this._countries.forDropdown);
      }
      
      private function onCountryChange(param1:Event) : void
      {
         this._currentCountryID = this._countries.getCountryByName(this._countryDropdown.displayValue).id;
      }
      
      public function get currentCountryID() : String
      {
         return this._currentCountryID;
      }
      
      public function setDropdownEnable(param1:Boolean) : void
      {
         if(param1)
         {
            this._countryDropdown.enable();
         }
         else
         {
            this._countryDropdown.disable();
         }
      }
   }
}

