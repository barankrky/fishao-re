package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
   import com.ax3.utils.ArrayUtils;
   import flash.events.IEventDispatcher;
   import protocol.cr.FishdexNoteChangedReq;
   import protocol.cr.GetCharViewsReq;
   
   public class CharFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function CharFscExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function loadCharViews(param1:Vector.<String>) : void
      {
         var _loc2_:Array = ArrayUtils.vectorToArray(param1);
         var _loc3_:GetCharViewsReq = new GetCharViewsReq(_loc2_);
         _connection.send(_loc3_,null);
      }
      
      public function updateNotepadData(param1:int, param2:String) : void
      {
         var _loc3_:FishdexNoteChangedReq = new FishdexNoteChangedReq(param1,param2);
         _connection.send(_loc3_,null);
      }
   }
}

