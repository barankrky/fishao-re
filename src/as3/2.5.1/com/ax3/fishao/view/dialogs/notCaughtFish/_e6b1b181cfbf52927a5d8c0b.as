package com.ax3.fishao.view.dialogs.notCaughtFish
{
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._a2b4c9c0c53649d11f95d839;
   import com.ax3.fishao.view.dialogs.simple._4277f040b60ee9d5b8ce0a48;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   
   public class _e6b1b181cfbf52927a5d8c0b extends _4277f040b60ee9d5b8ce0a48
   {
      
      public function _e6b1b181cfbf52927a5d8c0b()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.title = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_IMPROVE_ROD_TITLE);
         this.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_IMPROVE_ROD_DESCRIPTION);
         this.buttonActionLeft.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_IMPROVE_ROD_BUTTON_ACTION_LEFT);
         this.buttonActionRight.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_IMPROVE_ROD_BUTTON_ACTION_RIGHT);
         this.callbackButtonLeft = function():void
         {
            GameSwf.instance._904abe67d8849826ace64512();
         };
         this.callbackButtonRight = function():void
         {
            var _loc1_:_a2b4c9c0c53649d11f95d839 = app.dialogFactory._de6d909c2aa1aa689a00238c();
            _loc1_.show();
         };
      }
   }
}

