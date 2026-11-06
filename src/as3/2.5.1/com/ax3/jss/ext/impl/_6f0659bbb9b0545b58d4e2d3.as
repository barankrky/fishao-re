package com.ax3.jss.ext.impl
{
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import com.ax3.utils._8dbac3cb2bae16fc4e0e0f27;
   import flash.events.IEventDispatcher;
   import protocol.cr.FishdexNoteChangedReq;
   import protocol.cr.GetCharViewsReq;
   
   public class _6f0659bbb9b0545b58d4e2d3 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _6f0659bbb9b0545b58d4e2d3()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function _e217a6b8420965af3346bfa2(param1:Vector.<String>) : void
      {
         var _loc2_:Array = _8dbac3cb2bae16fc4e0e0f27._8ded50bff02ca5190c64a44c(param1);
         var _loc3_:GetCharViewsReq = new GetCharViewsReq(_loc2_);
         _connection.send(_loc3_,null);
      }
      
      public function _83f8817b874e3d4918d3a1a2(param1:int, param2:String) : void
      {
         var _loc3_:FishdexNoteChangedReq = new FishdexNoteChangedReq(param1,param2);
         _connection.send(_loc3_,null);
      }
   }
}

