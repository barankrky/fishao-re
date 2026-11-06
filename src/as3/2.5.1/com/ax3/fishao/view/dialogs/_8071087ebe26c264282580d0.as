package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.dialog._f98b8c596ff826850f762136;
   import com.greensock.TweenMax;
   import com.inkora.tween.TweenCube;
   
   public class _8071087ebe26c264282580d0 extends _f98b8c596ff826850f762136
   {
      
      protected var _closeTween:TweenMax = null;
      
      protected var _callback:Function = null;
      
      public function _8071087ebe26c264282580d0(param1:_883499bee549a0fce1047d0f)
      {
         super(param1);
      }
      
      override protected function get dialogAssetURL() : String
      {
         return super.dialogAssetURL;
      }
      
      public function get closeTween() : TweenMax
      {
         return this._closeTween;
      }
      
      public function _9715613ad59405c1fc90b0aa(param1:Function) : void
      {
         this._callback = param1;
      }
      
      override public function show() : void
      {
         super.show();
         GameSwf.instance._b7591e9cbf510f71aca31a6b(this);
      }
      
      override public function close() : void
      {
         GameSwf.instance._2e54f847e884e547d7dca443(this);
         TweenCube.destroyTweensOf(this,false);
         super.close();
         if(this._callback != null)
         {
            this._callback.apply();
            this._callback = null;
         }
         if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.gui != null && stage != null)
         {
            if(GameSwf.currentLocationDialog.gui.mainMenu.chatPanel.isShowed())
            {
               stage.focus = GameSwf.currentLocationDialog.gui.mainMenu.chatPanel.textField;
            }
         }
      }
      
      override public function onSetFrontPosition() : void
      {
         _0737efdbd5337ba3fbc64b2e.LOADING_SCREEN._2b080f46e549b4b5a001764c(_loadingIndicator);
      }
      
      override public function onLostFrontPosition() : void
      {
         _0737efdbd5337ba3fbc64b2e.LOADING_SCREEN._73bc65955b0f014b23436384(_loadingIndicator);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
      }
      
      override public function get width() : Number
      {
         return bg != null ? bg.width : super.width;
      }
      
      override public function get height() : Number
      {
         return bg != null ? bg.height : super.height;
      }
   }
}

