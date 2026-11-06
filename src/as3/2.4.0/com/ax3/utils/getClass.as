package com.ax3.utils
{
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   public function getClass(param1:Object) : Class
   {
      return Class(getDefinitionByName(getQualifiedClassName(param1)));
   }
}

