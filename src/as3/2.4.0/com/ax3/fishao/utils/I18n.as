package com.ax3.fishao.utils
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.display.dialogs.IconMessageDialog;
   import com.ax3.fishao.model.info.BuildConfig;
   import com.ax3.fishao.vars.app;
   import com.ax3.net.URLLoaderRepeatable;
   import com.ax3.utils.Callback;
   import com.ax3.utils.empty;
   import com.brokenfunction.json.decodeJson;
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class I18n
   {
      
      private static var _loadCallback:Callback;
      
      public static const LANG_LOADED:String = "lang_loaded";
      
      public static const UNIT_NAME_CM:String = "cm";
      
      public static const UNIT_NAME_FT:String = "ft";
      
      public static const TIME_FORMAT_AM_PM:int = 0;
      
      public static const TIME_FORMAT_24:int = 1;
      
      public static var langs:Object = BuildConfig.getLangList();
      
      public static const LANG_FLAG_BITMAP_WIDTH:int = 20;
      
      public static const LANG_FLAG_BITMAP_HEIGHT:int = 20;
      
      public static const LANG_FLAG_CONTAINER_WIDTH:int = 20;
      
      public static const LANG_FLAG_CONTAINER_HEIGHT:int = 20;
      
      public static var unitName:String = UNIT_NAME_CM;
      
      public static var timeFormat:int = TIME_FORMAT_24;
      
      private static var translations:Dictionary = new Dictionary();
      
      private static const TEMPLATE_PREFIX:String = "#";
      
      private static const TEMPLATE_POSTFIX:String = "#";
      
      private static var langAmountInLoading:int = 0;
      
      private static const SEC_IN_HOUR:int = 60 * 60;
      
      private static const SEC_IN_MIN:int = 60;
      
      private static const SEC_IN_DAY:int = 60 * 60 * 24;
      
      private static const SEC_IN_MONTH:int = 60 * 60 * 24 * 30;
      
      public function I18n()
      {
         super();
      }
      
      private static function initFromJSON(param1:String, param2:Object) : void
      {
         var _loc3_:String = null;
         if(!(param1 in translations))
         {
            translations[param1] = new Dictionary();
         }
         for(_loc3_ in param2)
         {
            translations[param1][_loc3_] = param2[_loc3_];
         }
         initManuallyStringsArray();
      }
      
      public static function init(param1:String, param2:String, param3:Callback = null) : void
      {
         if(!(Config.DEFAULT_LANGUAGE in translations))
         {
            translations[Config.DEFAULT_LANGUAGE] = new Dictionary();
            loadLanguage(Config.DEFAULT_LANGUAGE,param2,null);
         }
         if(!(param1 in translations))
         {
            translations[param1] = new Dictionary();
            loadLanguage(param1,param2,param3);
         }
         else if(langAmountInLoading == 0)
         {
            if(param3 != null)
            {
               param3.call(null);
            }
         }
         else
         {
            _loadCallback = param3;
         }
      }
      
      private static function loadLanguage(param1:String, param2:String, param3:Callback) : void
      {
         ++langAmountInLoading;
         var _loc4_:URLLoaderRepeatable = new URLLoaderRepeatable(3);
         var _loc5_:String = param2 + param1 + ".json?r=" + Math.random();
         _loc4_.addEventListener(Event.COMPLETE,createOnLoadCompleteFunction(param1,param3));
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,createOnLoadLanguageError(_loc5_));
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,securityErrorHandler);
         Cc.log("Loading lang from url:" + _loc5_);
         _loc4_.load(new URLRequest(_loc5_));
      }
      
      private static function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
         Cc.error("Load lang securityErrorHandler: " + param1);
         showLoadingError();
      }
      
      private static function createOnLoadLanguageError(param1:String) : Function
      {
         var loaderRequestUrl:String = param1;
         return function(param1:IOErrorEvent):void
         {
            Cc.error("Language loading error : " + loaderRequestUrl);
            initManuallyStringsArray();
            showLoadingError();
         };
      }
      
      private static function createOnLoadCompleteFunction(param1:String, param2:Callback) : Function
      {
         var lang:String = param1;
         var loadCallback:Callback = param2;
         return function(param1:Event):void
         {
            initFromJSON(lang,decodeJson(URLLoader(param1.currentTarget).data));
            Cc.log("Lang loading complete (" + lang + ")");
            --langAmountInLoading;
            if(loadCallback == null)
            {
               if(langAmountInLoading == 0)
               {
                  if(_loadCallback != null)
                  {
                     _loadCallback.call(null);
                     _loadCallback = null;
                  }
                  GameSwf.globalDispatcher.dispatchEvent(new Event(I18n.LANG_LOADED));
               }
            }
            else
            {
               loadCallback.call();
            }
         };
      }
      
      private static function showLoadingError() : void
      {
         var _loc1_:IconMessageDialog = app.dialogFactory.getIconMessageDialog();
         _loc1_.iconType = IconMessageDialog.ERROR_ICON;
         _loc1_.text = "Can\'t load translations!";
         _loc1_.show();
         GameSwf.globalDispatcher.dispatchEvent(new Event(I18n.LANG_LOADED));
      }
      
      public static function initManuallyStringsArray() : void
      {
         if(!(Config.LANGUAGE in translations))
         {
            translations[Config.LANGUAGE] = new Dictionary();
         }
         if(Config.LANGUAGE != "en")
         {
            return;
         }
      }
      
      public static function getUpper(param1:String) : String
      {
         return get(param1).toUpperCase();
      }
      
      public static function getFishName(param1:int) : String
      {
         return get("fish_" + param1);
      }
      
      public static function get(param1:String) : String
      {
         var _loc2_:String = "";
         if(exist(param1))
         {
            _loc2_ = String(translations[Config.LANGUAGE][param1]);
         }
         else
         {
            Cc.warn("[" + Config.LANGUAGE + "] Unknown text key: " + param1);
            if(exist(param1,Config.DEFAULT_LANGUAGE))
            {
               _loc2_ = String(translations[Config.DEFAULT_LANGUAGE][param1]);
            }
            else
            {
               _loc2_ = "@" + param1;
            }
         }
         return correctCM(_loc2_);
      }
      
      public static function getDefault(param1:String) : String
      {
         var _loc2_:String = "";
         if(exist(param1,Config.DEFAULT_LANGUAGE))
         {
            _loc2_ = String(translations[Config.DEFAULT_LANGUAGE][param1]);
         }
         else
         {
            Cc.warn("[" + Config.DEFAULT_LANGUAGE + "] Unknown text key: " + param1);
         }
         return correctCM(_loc2_);
      }
      
      private static function correctCM(param1:String) : String
      {
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         if(param1.indexOf("##cm") != -1)
         {
            _loc2_ = "";
            _loc3_ = param1.split("##");
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc5_ = String(_loc3_[_loc4_]);
               if(_loc5_.indexOf("cm") != -1 || _loc5_.indexOf("CM") != -1)
               {
                  _loc5_ = _loc5_.replace("cm","");
                  _loc5_ = _loc5_.replace("CM","");
                  _loc5_ = I18n.formatDistance(Number(_loc5_));
               }
               _loc2_ += _loc5_;
               _loc4_++;
            }
            param1 = _loc2_;
         }
         return param1;
      }
      
      public static function exist(param1:String, param2:String = null) : Boolean
      {
         if(param2 == null)
         {
            param2 = Config.LANGUAGE;
         }
         return translations.hasOwnProperty(param2) && translations[param2].hasOwnProperty(param1) && translations[param2][param1] != null && translations[param2][param1] != "";
      }
      
      public static function template(param1:String, param2:Object) : String
      {
         var _loc3_:String = null;
         var _loc4_:String = get(param1);
         for(_loc3_ in param2)
         {
            _loc4_ = _loc4_.split(TEMPLATE_PREFIX + _loc3_ + TEMPLATE_POSTFIX).join(param2[_loc3_]);
         }
         return _loc4_;
      }
      
      public static function formatTimestamp(param1:int, param2:Boolean = false) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = "";
         if(param2)
         {
            param1 *= 0.001;
         }
         if(param1 < 60)
         {
            _loc7_ = I18n.get("rightNow");
         }
         else
         {
            _loc3_ = param1 / 60;
            if(_loc3_ < 60)
            {
               _loc7_ = _loc3_.toString() + " " + I18n.get(_loc3_ > 1 ? "minutes" : "minute");
            }
            else
            {
               _loc4_ = _loc3_ / 60;
               _loc5_ = _loc4_ / 24;
               _loc4_ %= 24;
               _loc6_ = _loc4_ > 0 ? _loc4_.toString() + " " + I18n.get(_loc4_ > 1 ? "hours" : "hour") : "";
               _loc7_ = _loc5_ > 0 ? _loc5_.toString() + " " + I18n.get(_loc5_ > 1 ? "days" : "day") : "";
               if(_loc5_ > 0 && _loc4_ > 0)
               {
                  _loc7_ += ", ";
               }
               _loc7_ += _loc6_;
            }
         }
         return _loc7_;
      }
      
      public static function formatFullTimestamp(param1:int, param2:Boolean = false) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:String = "";
         if(param1 < 60)
         {
            _loc8_ = I18n.get("rightNow");
         }
         else if(param1 < SEC_IN_HOUR)
         {
            _loc6_ = param1 / SEC_IN_MIN;
            _loc7_ = param1 - _loc6_ * 60;
            _loc8_ = _loc6_.toString() + " " + I18n.get(_loc6_ > 1 ? "minutes" : "minute");
            if(_loc7_ > 0)
            {
               _loc8_ += ", " + _loc7_.toString() + " " + I18n.get(_loc7_ > 1 ? "seconds" : "second");
            }
         }
         else if(param1 < SEC_IN_DAY)
         {
            _loc5_ = param1 / SEC_IN_HOUR;
            _loc6_ = (param1 - _loc5_ * SEC_IN_HOUR) / SEC_IN_MIN;
            _loc8_ = _loc5_ > 0 ? _loc5_.toString() + " " + I18n.get(_loc5_ > 1 ? "hours" : "hour") : "";
            if(_loc6_ > 0)
            {
               _loc8_ += ", " + _loc6_.toString() + " " + I18n.get(_loc6_ > 1 ? "minutes" : "minute");
            }
         }
         else if(param1 < SEC_IN_MONTH)
         {
            _loc3_ = param1 / SEC_IN_DAY;
            _loc5_ = (param1 - _loc3_ * SEC_IN_DAY) / SEC_IN_HOUR;
            _loc8_ = _loc3_ > 0 ? _loc3_.toString() + " " + I18n.get(_loc3_ > 1 ? "days" : "day") : "";
            if(_loc5_ > 0)
            {
               _loc8_ += ", " + _loc5_.toString() + " " + I18n.get(_loc5_ > 1 ? "hours" : "hour");
            }
         }
         else
         {
            _loc4_ = param1 / SEC_IN_MONTH;
            _loc3_ = (param1 - _loc4_ * SEC_IN_MONTH) / SEC_IN_DAY;
            _loc8_ = _loc4_.toString() + " " + I18n.get(_loc4_ > 1 ? "months" : "month");
            if(_loc3_ > 0)
            {
               _loc8_ += ", " + _loc3_.toString() + " " + I18n.get(_loc3_ > 1 ? "days" : "day");
            }
         }
         if(param1 >= 60 && param2)
         {
            _loc8_ = I18n.get("TimeAgo").replace("#TIME#",_loc8_);
         }
         return _loc8_;
      }
      
      public static function formatShortTimestamp(param1:int, param2:Boolean = false) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = "";
         if(param1 < 60)
         {
            _loc7_ = I18n.get("rightNow");
         }
         else if(param1 < 60 * 60)
         {
            _loc3_ = param1 / 60;
            _loc7_ = _loc3_.toString() + " " + I18n.get(_loc3_ > 1 ? "minutes" : "minute");
         }
         else if(param1 < 60 * 60 * 24)
         {
            _loc4_ = param1 / 60 / 60;
            _loc7_ = _loc4_ > 0 ? _loc4_.toString() + " " + I18n.get(_loc4_ > 1 ? "hours" : "hour") : "";
         }
         else if(param1 < 60 * 60 * 24 * 30)
         {
            _loc5_ = param1 / 60 / 60 / 24;
            _loc7_ = _loc5_ > 0 ? _loc5_.toString() + " " + I18n.get(_loc5_ > 1 ? "days" : "day") : "";
         }
         else
         {
            _loc6_ = param1 / 60 / 60 / 24 / 30;
            _loc7_ = _loc6_.toString() + " " + I18n.get(_loc6_ > 1 ? "months" : "month");
         }
         if(param1 >= 60 && param2)
         {
            _loc7_ = I18n.get("TimeAgo").replace("#TIME#",_loc7_);
         }
         return _loc7_;
      }
      
      public static function formatTimestampWithMonthAndSeconds(param1:int) : String
      {
         if(param1 > 60)
         {
            return formatTimestampWithMonth(param1,false," " + I18n.get("day_and_hours_separator") + " ");
         }
         return param1 + " " + I18n.get("seconds");
      }
      
      public static function formatTimeWithHoursAndMinutes(param1:int) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = param1 / 60 / 60;
         _loc2_ += _loc3_ > 0 ? _loc3_.toString() + " " + I18n.get(_loc3_ > 1 ? "hours" : "hour") + " " : "";
         var _loc4_:int = (param1 - _loc3_ * 60 * 60) / 60;
         return _loc2_ + (_loc4_ > 0 ? _loc4_.toString() + " " + I18n.get(_loc4_ > 1 ? "minutes" : "minute") : "");
      }
      
      public static function formatTimestampWithMonth(param1:int, param2:Boolean = false, param3:String = ", ") : String
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:String = "";
         if(param2)
         {
            param1 *= 0.001;
         }
         if(param1 < 60)
         {
            _loc9_ = I18n.get("rightNow");
         }
         else
         {
            _loc4_ = param1 / 60;
            if(_loc4_ < 60)
            {
               _loc9_ = _loc4_.toString() + " " + I18n.get(_loc4_ > 1 ? "minutes" : "minute");
            }
            else
            {
               _loc5_ = _loc4_ / 60;
               _loc6_ = _loc5_ / 24;
               if(_loc6_ < 30)
               {
                  _loc5_ %= 24;
                  _loc7_ = _loc5_ > 0 ? _loc5_.toString() + " " + I18n.get(_loc5_ > 1 ? "hours" : "hour") : "";
                  _loc9_ = _loc6_ > 0 ? _loc6_.toString() + " " + I18n.get(_loc6_ > 1 ? "days" : "day") : "";
                  if(_loc6_ > 0 && _loc5_ > 0)
                  {
                     _loc9_ += param3;
                  }
                  _loc9_ += _loc7_;
               }
               else
               {
                  _loc8_ = _loc6_ / 30;
                  _loc9_ = _loc8_.toString() + " " + I18n.get(_loc8_ > 1 ? "months" : "month");
               }
            }
         }
         return _loc9_;
      }
      
      public static function formatDistanceWithoutUnit(param1:Number) : String
      {
         var _loc2_:String = String(param1);
         if(unitName == UNIT_NAME_FT)
         {
            _loc2_ = String(int(param1 * 0.393700787)) + "\'\'";
         }
         return _loc2_;
      }
      
      public static function formatDistance(param1:Number) : String
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:String = "";
         if(unitName == UNIT_NAME_CM)
         {
            _loc4_ = String(int(param1)) + " " + I18n.get("cm");
         }
         else if(unitName == UNIT_NAME_FT)
         {
            _loc2_ = int(param1 * 0.393700787 / 12);
            _loc3_ = int(param1 * 0.393700787 % 12);
            if(_loc2_ > 0)
            {
               _loc4_ = String(_loc2_) + "\'";
               if(_loc3_ > 0)
               {
                  _loc4_ += " ";
               }
            }
            if(_loc3_ > 0)
            {
               _loc4_ += String(_loc3_) + "\'\'";
            }
            if(_loc2_ == 0 && _loc3_ == 0)
            {
               _loc4_ = "0\'\'";
            }
         }
         return _loc4_;
      }
      
      public static function getTileLeftString(param1:int) : String
      {
         if(param1 > 60)
         {
            return I18n.get("TimeAgo").replace("#TIME#",I18n.formatTimestamp(param1));
         }
         return I18n.formatTimestamp(param1);
      }
      
      public static function formatToAmPmIfNeed(param1:String) : String
      {
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = "";
         if(timeFormat == TIME_FORMAT_24)
         {
            _loc4_ = param1;
         }
         else if(timeFormat == TIME_FORMAT_AM_PM)
         {
            _loc3_ = param1.split(":");
            if(int(_loc3_[0]) < 12)
            {
               _loc2_ = I18n.get("timeAM");
            }
            else
            {
               _loc2_ = I18n.get("timePM");
               _loc3_[0] = String(int(_loc3_[0]) - 12);
            }
            if(int(_loc3_[0]) == 0)
            {
               _loc3_[0] = "12";
            }
            _loc4_ = _loc3_[0] + ":" + _loc3_[1] + _loc2_;
         }
         return _loc4_;
      }
      
      public static function inspectLanguageCodeForExists(param1:String) : String
      {
         var _loc2_:String = null;
         if(empty(param1))
         {
            if(!empty(Config.LANGUAGE))
            {
               return Config.LANGUAGE;
            }
            return Config.DEFAULT_LANGUAGE;
         }
         for(_loc2_ in langs)
         {
            if(_loc2_ == param1)
            {
               return param1;
            }
         }
         return Config.DEFAULT_LANGUAGE;
      }
      
      public static function formatTimestampToClockView(param1:int) : String
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = "";
         if(param1 < 60)
         {
            _loc4_ = param1;
         }
         else if(param1 < SEC_IN_HOUR)
         {
            _loc3_ = param1 / SEC_IN_MIN;
            _loc4_ = param1 - _loc3_ * 60;
         }
         else
         {
            _loc2_ = param1 / SEC_IN_HOUR;
            _loc3_ = (param1 - _loc2_ * SEC_IN_HOUR) / SEC_IN_MIN;
            _loc4_ = param1 - _loc2_ * SEC_IN_HOUR - _loc3_ * 60;
         }
         if(_loc2_ < 10)
         {
            _loc5_ += "0";
         }
         _loc5_ += _loc2_ + ":";
         if(_loc3_ < 10)
         {
            _loc5_ += "0";
         }
         _loc5_ += _loc3_ + ":";
         if(_loc4_ < 10)
         {
            _loc5_ += "0";
         }
         return _loc5_ + _loc4_;
      }
   }
}

