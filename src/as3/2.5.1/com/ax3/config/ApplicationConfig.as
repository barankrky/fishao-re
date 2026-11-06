package com.ax3.config
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
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
               throw new AppError(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剅劥刺勜刚刄劧刖創勄刔初勖剖勩刟労別劍勂制勬劓勻副刊刡力勨勞勅励力勃刎初勄効剓判刨劻剃剋劍勒勺勢劶刟利勑","劝剳勇剤劆剼判劅刾剩刲劊剔勥勳剪") + _loc1_);
            }
         }
      }
      
      public function getDialogURL(param1:String) : String
      {
         return this.swfDialogURL + param1;
      }
   }
}

