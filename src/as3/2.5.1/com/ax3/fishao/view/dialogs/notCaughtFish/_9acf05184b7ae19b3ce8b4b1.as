package com.ax3.fishao.view.dialogs.notCaughtFish
{
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fishingLine._2308dd1c4f5a21679f69cea3;
   import com.ax3.fishao.view.dialogs.simple._ff2218d81320e3d6de3276ee;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   
   public class _9acf05184b7ae19b3ce8b4b1 extends _ff2218d81320e3d6de3276ee
   {
      
      public function _9acf05184b7ae19b3ce8b4b1()
      {
         super();
         this.init();
      }
      
      private function _ad1dfd09b147b652e4571bf0() : void
      {
         var _loc1_:_2308dd1c4f5a21679f69cea3 = app.dialogFactory._8f0a01c04a2d76e011c3f408();
         _loc1_.show();
      }
      
      private function init() : void
      {
         this.title = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_IMPROVE_LINE_TITLE);
         this.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_IMPROVE_LINE_DESCRIPTION);
         this.buttonAction.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_85b2141a2303f6545d411d7a.EST_DIALOG_IMPROVE_LINE_BUTTON_ACTION);
         this.callback = this._ad1dfd09b147b652e4571bf0;
      }
   }
}

