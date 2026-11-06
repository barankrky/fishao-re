package com.ax3.fishao.view.dialogs.events.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _381e768da9d4645a74dba82d extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _3f03064875eed5f4346a676f:DisplayObjectContainer;
      
      public function _381e768da9d4645a74dba82d(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._3f03064875eed5f4346a676f = param2;
         super(param1,this._3f03064875eed5f4346a676f);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:_73899a4de8f83c8d2c26f545 = new _73899a4de8f83c8d2c26f545(Debug.assertProperty(this._3f03064875eed5f4346a676f,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挶挛掺捵捛捶挢挶掿掫挣揞揻換掼挽捀挼","揱探掏捔捁挼挙挸捬换掾挊捴挰提挍"),TextField));
         _loc1_.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_NO_EVENTS);
      }
   }
}

