package com.ax3.fishao.model
{
   public class SettingsModel
   {
      
      public static const DEFAULT_BACKGROUND_MUSIC_VOLUME:Number = 0.5;
      
      public static const DEFAULT_SFX_VOLUME:int = 1;
      
      public static const SETTINGS:Array = ["birthDate","showBirthDate","email","showEmail","showInventory","timeFormat","units","gameLanguage","country","timezone","backMusic","soundEffects","float","receiveMails"];
      
      private var _timeFormat:int = 1;
      
      private var _birthDate:Date = new Date();
      
      private var _showBirthDate:Boolean = true;
      
      private var _email:String = "";
      
      private var _showEmail:Boolean = false;
      
      private var _showInventory:Boolean = true;
      
      private var _units:String = "cm";
      
      private var _gameLanguage:String = "en";
      
      private var _country:String = "UKR";
      
      private var _timezone:String = "";
      
      private var _backMusic:Number = 0.5;
      
      private var _soundEffects:Number = 1;
      
      private var _float:int = 1;
      
      private var _receiveMails:Boolean = false;
      
      private var _canChangeTimezone:Boolean = true;
      
      private var _prevEmail:String = "";
      
      public function SettingsModel()
      {
         super();
      }
      
      public function get birthDate() : Date
      {
         return this._birthDate;
      }
      
      public function set birthDate(param1:Date) : void
      {
         this._birthDate = param1;
      }
      
      public function get showBirthDate() : Boolean
      {
         return this._showBirthDate;
      }
      
      public function set showBirthDate(param1:Boolean) : void
      {
         this._showBirthDate = param1;
      }
      
      public function get float() : int
      {
         return this._float;
      }
      
      public function set float(param1:int) : void
      {
         this._float = param1;
      }
      
      public function get email() : String
      {
         return this._email;
      }
      
      public function set email(param1:String) : void
      {
         this._prevEmail = this._email;
         this._email = param1;
      }
      
      public function get showEmail() : Boolean
      {
         return this._showEmail;
      }
      
      public function set showEmail(param1:Boolean) : void
      {
         this._showEmail = param1;
      }
      
      public function get showInventory() : Boolean
      {
         return this._showInventory;
      }
      
      public function set showInventory(param1:Boolean) : void
      {
         this._showInventory = param1;
      }
      
      public function get timeFormat() : int
      {
         return this._timeFormat;
      }
      
      public function set timeFormat(param1:int) : void
      {
         this._timeFormat = param1;
      }
      
      public function get units() : String
      {
         return this._units;
      }
      
      public function set units(param1:String) : void
      {
         this._units = param1;
      }
      
      public function get gameLanguage() : String
      {
         return this._gameLanguage;
      }
      
      public function set gameLanguage(param1:String) : void
      {
         this._gameLanguage = param1;
      }
      
      public function get country() : String
      {
         return this._country;
      }
      
      public function set country(param1:String) : void
      {
         this._country = param1;
      }
      
      public function get timezone() : String
      {
         return this._timezone;
      }
      
      public function set timezone(param1:String) : void
      {
         this._timezone = param1;
      }
      
      public function get backMusic() : Number
      {
         return this._backMusic;
      }
      
      public function set backMusic(param1:Number) : void
      {
         this._backMusic = param1;
      }
      
      public function get soundEffects() : Number
      {
         return this._soundEffects;
      }
      
      public function set soundEffects(param1:Number) : void
      {
         this._soundEffects = param1;
      }
      
      public function get receiveMails() : Boolean
      {
         return this._receiveMails;
      }
      
      public function set receiveMails(param1:Boolean) : void
      {
         this._receiveMails = param1;
      }
      
      public function get canChangeTimezone() : Boolean
      {
         return this._canChangeTimezone;
      }
      
      public function set canChangeTimezone(param1:Boolean) : void
      {
         this._canChangeTimezone = param1;
      }
      
      public function get prevEmail() : String
      {
         return this._prevEmail;
      }
      
      public function set prevEmail(param1:String) : void
      {
         if(this._prevEmail == param1 || this._prevEmail == "current@mail" || this._prevEmail == "")
         {
            return;
         }
         this._prevEmail = param1;
      }
      
      public function toObject() : Object
      {
         var _loc1_:Object = null;
         var _loc2_:Object = {};
         for each(_loc1_ in SETTINGS)
         {
            _loc2_[_loc1_] = this[_loc1_];
         }
         return _loc2_;
      }
   }
}

