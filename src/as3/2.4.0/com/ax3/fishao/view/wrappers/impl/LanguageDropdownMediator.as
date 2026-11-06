package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.fishao.utils.I18n;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class LanguageDropdownMediator extends EventDispatcher
   {
      
      private var _langs:Dictionary = new Dictionary();
      
      private var _languageDropdown:FishaoDropdownWithImage;
      
      private var _langsNames:Vector.<String> = new Vector.<String>();
      
      private var _currentLangID:String;
      
      public function LanguageDropdownMediator(param1:String)
      {
         var _loc2_:String = null;
         super();
         for(_loc2_ in I18n.langs)
         {
            this._langs[_loc2_] = I18n.langs[_loc2_];
            this._langsNames.push(this._langs[_loc2_]);
         }
         this._langsNames.sort(0);
         this._currentLangID = param1;
      }
      
      public function config(param1:FishaoDropdownWithImage) : void
      {
         this._languageDropdown = param1;
         this._languageDropdown.init();
         this._languageDropdown.addEventListener(Event.CHANGE,this.onLanguageChange);
         var _loc2_:String = this._langs[this._currentLangID];
         if(_loc2_ == null)
         {
            this._languageDropdown.text = "...";
         }
         else
         {
            this._languageDropdown.text = _loc2_;
         }
         this._languageDropdown.clear();
         this._languageDropdown.flag = "flag/flag_" + this._currentLangID + ".png";
         this._languageDropdown.create(this._langsNames);
      }
      
      private function onLanguageChange(param1:Event) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in this._langs)
         {
            if(this._languageDropdown.displayValue == this._langs[_loc2_])
            {
               this._currentLangID = _loc2_;
            }
         }
         this._languageDropdown.clear();
         this._languageDropdown.flag = "flag/flag_" + this._currentLangID + ".png";
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get currentLangID() : String
      {
         return this._currentLangID;
      }
   }
}

