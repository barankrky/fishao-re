package com.ax3.utils
{
   import flash.display.BitmapData;
   
   public function isBitmapDataValid(param1:BitmapData) : Boolean
   {
      var bitmapData:BitmapData = param1;
      var isValid:Boolean = true;
      try
      {
         bitmapData.getPixel(1,1);
      }
      catch(error:Error)
      {
         if(error.errorID == 2015)
         {
            isValid = false;
         }
      }
      return isValid;
   }
}

