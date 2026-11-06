package com.ax3.fishao.view.dialogs.notCaughtFish
{
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fishingLine._2308dd1c4f5a21679f69cea3;
   import com.ax3.fishao.view.dialogs.simple._4277f040b60ee9d5b8ce0a48;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   
   public class _94e4ddb255ac2d62a5aa926d extends _4277f040b60ee9d5b8ce0a48
   {
      
      public function _94e4ddb255ac2d62a5aa926d()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.title = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_IMPROVE_ROD_AND_LINE_TITLE);
         this.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_IMPROVE_ROD_AND_LINE_DESCRIPTION);
         this.buttonActionLeft.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_IMPROVE_ROD_AND_LINE_BUTTON_ACTION_LEFT);
         this.buttonActionRight.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_IMPROVE_ROD_AND_LINE_BUTTON_ACTION_RIGHT);
         this.callbackButtonLeft = function():void
         {
            GameSwf.instance._904abe67d8849826ace64512();
         };
         this.callbackButtonRight = function():void
         {
            var _loc1_:_2308dd1c4f5a21679f69cea3 = app.dialogFactory._8f0a01c04a2d76e011c3f408();
            _loc1_.show();
         };
      }
   }
}

