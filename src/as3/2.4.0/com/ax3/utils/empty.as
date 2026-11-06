package com.ax3.utils
{
   public function empty(param1:Object) : Boolean
   {
      if(param1 == null)
      {
         return true;
      }
      if(param1 is String)
      {
         return param1 == null || param1 == "" || param1 == "0";
      }
      if(param1 is Number)
      {
         return isNaN(Number(param1)) || param1 == 0;
      }
      if(param1 is int)
      {
         return isNaN(int(param1)) || param1 == 0;
      }
      if(param1 is Array)
      {
         return param1 == null || (param1 as Array).length == 0;
      }
      if(param1 is Boolean)
      {
         return param1 == false;
      }
      if(param1 is Function)
      {
         return param1 == null;
      }
      if(param1 is Object)
      {
         return param1 == null;
      }
      return true;
   }
}

