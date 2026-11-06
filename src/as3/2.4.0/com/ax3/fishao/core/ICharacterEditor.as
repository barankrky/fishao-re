package com.ax3.fishao.core
{
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.fishao.model.character.CharViewConfig;
   import flash.display.BitmapData;
   
   public interface ICharacterEditor extends IGameModule, ICEditor, IBaseDialog
   {
      
      function updateCharacter(param1:CharViewConfig) : void;
      
      function getVersion() : int;
      
      function setShowExecutor(param1:Function) : void;
      
      function getCharacterBitmapDataByViewConfig(param1:CharViewConfig) : BitmapData;
      
      function setLockedList(param1:Array) : void;
      
      function setExtraList(param1:Array) : void;
      
      function setActiveTab(param1:int) : void;
   }
}

