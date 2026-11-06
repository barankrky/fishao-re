package com.ax3.fishao.utils
{
   import com.junkbyte.console.Cc;
   import flash.system.Capabilities;
   
   public class UtilsApp
   {
      
      public function UtilsApp()
      {
         super();
      }
      
      public static function getFlashPlayerVersion() : Number
      {
         var result:Number = NaN;
         var worlds:Array = null;
         var versionParts:Array = null;
         var versionStr:String = null;
         var str:String = Capabilities.version;
         try
         {
            worlds = str.split(" ");
            versionParts = worlds[worlds.length - 1].split(",");
            versionStr = versionParts[0] + "." + versionParts[1];
            result = parseFloat(versionStr);
         }
         catch(err:Error)
         {
            Cc.error(err);
            Cc.error(err.getStackTrace());
            GameSwf.sendReportToServer();
            result = 0;
         }
         return result;
      }
   }
}

