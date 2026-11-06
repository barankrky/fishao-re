package com.ax3.fishao.utils
{
   import com.ax3.display.autoscalable.CenteredBitmap;
   import com.ax3.display.autoscalable.FilledBitmap;
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.vars.app;
   import com.ax3.net.DelayLoadBitmap;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   
   public class FishaoBitmapLoader extends DelayLoadBitmap
   {
      
      private static const SERVER_BITMAP_URL:String = Config.ASSET_SERVER + "data/image/";
      
      public function FishaoBitmapLoader()
      {
         super();
      }
      
      public static function loadImageAndReplaceStub(param1:String, param2:DisplayObject) : ScaledBitmap
      {
         var _loc3_:ScaledBitmap = null;
         _loc3_ = null;
         _loc3_ = new ScaledBitmap(null);
         param2.parent.addChild(_loc3_);
         _loc3_.x = param2.x;
         _loc3_.y = param2.y;
         _loc3_.width = param2.width;
         _loc3_.height = param2.height;
         _loc3_.filters = param2.filters;
         app.resourceManager.replaceBitmapDataFromURL(_loc3_,param1);
         return _loc3_;
      }
      
      public static function convertImageNameURL(param1:String) : String
      {
         if(param1.lastIndexOf(".jpg") >= 0 || param1.lastIndexOf(".png") >= 0)
         {
            return SERVER_BITMAP_URL + param1;
         }
         return SERVER_BITMAP_URL + param1 + ".png";
      }
      
      public static function getResourceFilenameByKind(param1:String, param2:int) : String
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:ResourceType = ResourceType.findByName(param1);
         if(_loc5_ != null)
         {
            _loc3_ = _loc5_.mediumImageFilenameTemplate;
            if(_loc3_ != null)
            {
               _loc3_ = _loc3_.split("#id#").join(param2);
               _loc4_ = _loc3_;
            }
         }
         return _loc4_;
      }
      
      public static function getResourceIconFilenameByKind(param1:String, param2:int) : String
      {
         var _loc3_:String = null;
         var _loc4_:ResourceType = ResourceType.findByName(param1);
         if(_loc4_ != null)
         {
            _loc3_ = _loc4_.iconFilenameTemplate;
            if(_loc3_ != null)
            {
               return _loc3_.split("#id#").join(param2);
            }
         }
         return null;
      }
      
      public static function getImageLanguageFlagURL(param1:String) : String
      {
         if(param1 == null)
         {
            param1 = "en";
         }
         return Config.SERVER + "data/image/flag/flag_" + param1.toLowerCase() + ".png";
      }
      
      public static function getImageFlagURL(param1:String) : String
      {
         return Config.SERVER + "img/flags/" + param1.toUpperCase() + ".png";
      }
      
      public static function getImageLocationURL(param1:int) : String
      {
         return "locations/location_" + param1.toString() + ".png";
      }
      
      public static function getImageClotheURL(param1:String) : String
      {
         return "clothes/" + param1 + ".png";
      }
      
      public static function getImageLevelPermissionsURL(param1:String) : String
      {
         return "level_permissions/" + param1 + ".png";
      }
      
      public static function getImageDailyQuestURL(param1:int) : String
      {
         return "daily_quests/daily_quest_" + param1 + ".png";
      }
      
      public function getServerBitmap(param1:String) : Bitmap
      {
         return getBitmapFromURL(convertImageNameURL(param1));
      }
      
      public function getServerFilledBitmap(param1:String) : FilledBitmap
      {
         return getFilledBitmapFromURL(convertImageNameURL(param1));
      }
      
      public function getServerScaledBitmap(param1:String) : ScaledBitmap
      {
         return getScaledBitmapFromURL(convertImageNameURL(param1));
      }
      
      public function getServerCenteredBitmap(param1:String) : CenteredBitmap
      {
         return getCenteredBitmapFromURL(convertImageNameURL(param1));
      }
      
      public function replaceServerBitmapData(param1:Bitmap, param2:String) : Bitmap
      {
         return replaceBitmapDataFromURL(param1,param2);
      }
      
      public function getServerBitmapData(param1:String) : BitmapData
      {
         return getBitmapDataFromURL(convertImageNameURL(param1));
      }
      
      override public function executeOnBitmapLoad(param1:Function, param2:String, param3:*) : void
      {
         var _loc4_:String = convertImageNameURL(param2);
         super.executeOnBitmapLoad(param1,_loc4_,param3);
      }
      
      public function isServerBitmapLoaded(param1:String) : Boolean
      {
         return isBitmapURLLoaded(convertImageNameURL(param1));
      }
   }
}

