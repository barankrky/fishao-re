package com.ax3.config
{
   import com.ax3.display.wrappers.AssetWrappersProcessor;
   import com.ax3.errors.AppError;
   import flash.utils.describeType;
   
   public class ApplicationConfig
   {
      
      public var swfDialogURL:String = null;
      
      public var resourceManagerClass:Class = null;
      
      public var dialogManagerClass:Class = null;
      
      public var assetWrappersProcessor:AssetWrappersProcessor = null;
      
      public function ApplicationConfig()
      {
         super();
      }
      
      public function invalidate() : void
      {
         var _loc1_:String = null;
         var _loc2_:XML = describeType(this);
         for each(_loc1_ in _loc2_.variable.@name)
         {
            if(this[_loc1_] == null)
            {
               throw new AppError("Config field is null: " + _loc1_);
            }
         }
      }
      
      public function getDialogURL(param1:String) : String
      {
         return this.swfDialogURL + param1;
      }
   }
}

