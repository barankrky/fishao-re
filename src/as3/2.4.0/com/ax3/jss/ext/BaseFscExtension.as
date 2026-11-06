package com.ax3.jss.ext
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   
   public class BaseFscExtension implements IFscExtension
   {
      
      protected var _dispatcher:IEventDispatcher;
      
      protected var _connection:FscConnection;
      
      protected var _fscModel:IFscModel;
      
      public function BaseFscExtension()
      {
         super();
      }
      
      public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         this._dispatcher = param1;
         this._connection = param2;
         this._fscModel = param3;
      }
   }
}

