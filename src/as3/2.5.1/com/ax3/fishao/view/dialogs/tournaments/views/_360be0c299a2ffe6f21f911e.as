package com.ax3.fishao.view.dialogs.tournaments.views
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._cf95b72aafa93dfd44e980e7;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._91443e554fdccabd3846f5da;
   import flash.display.DisplayObjectContainer;
   
   public class _360be0c299a2ffe6f21f911e extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _15b942dd7f25fb2947074d9e:DisplayObjectContainer;
      
      private var _524f9d901d652473114212d2:_cf95b72aafa93dfd44e980e7;
      
      public function _360be0c299a2ffe6f21f911e(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._15b942dd7f25fb2947074d9e = param2;
         super(param1,this._15b942dd7f25fb2947074d9e);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._524f9d901d652473114212d2.items = param1;
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(this._15b942dd7f25fb2947074d9e,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剑劙勯剒切刚動剘勃刕劦剒劤労劽划刬剆勩刡劦剏刺勆刉剽剑刓劓勅勇剢剄劋劝剉别劣剦剫刮剹劇勶剅勓","劁勣勌劎劖勭勆勢劉刧动刌剗务剗劇"));
         this._524f9d901d652473114212d2 = new _cf95b72aafa93dfd44e980e7(_loc1_,_91443e554fdccabd3846f5da.ESDT_VERTICAL);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._524f9d901d652473114212d2._90eac9ca552fe54c2ca0299f();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

