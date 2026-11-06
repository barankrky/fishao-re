package com.ax3.fishao.core
{
   import com.ax3.fishao.model.character.CharViewConfig;
   
   public interface ICEditor
   {
      
      function setDefault(param1:CharViewConfig, param2:Function, param3:Function, param4:Function, param5:Object, param6:Boolean, param7:Boolean, param8:Boolean, param9:Boolean) : void;
      
      function getCharacter() : String;
   }
}

