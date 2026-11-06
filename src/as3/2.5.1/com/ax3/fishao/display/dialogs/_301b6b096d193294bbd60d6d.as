package com.ax3.fishao.display.dialogs
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import assets.common.ReloadDialogAsset;
   import com.ax3.display.dialog._1078dc5631cc5976a13385a5;
   import com.ax3.display.wrappers.impl._1408d94400cd9851158c4009;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.desktop.NativeApplication;
   import flash.events.MouseEvent;
   
   public class _301b6b096d193294bbd60d6d extends _1078dc5631cc5976a13385a5
   {
      
      public var reloadButton:FrameButtonWrapper;
      
      public var message:_1408d94400cd9851158c4009;
      
      private var _asset:ReloadDialogAsset = new ReloadDialogAsset();
      
      public function _301b6b096d193294bbd60d6d(param1:String = "reload_dialog_message")
      {
         super();
         addChild(this._asset);
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this.reloadButton.handler = this._041aee8fc8e6d7ee446ac0d3;
         this.reloadButton.label = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剦刞剣剢剰剕勃剮势効剦剢刋動勪刭剢刉劼勚","劖刅勧刄剌劯刄劵劏勍助剞別刼剺劤"));
         this.message.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(param1);
         _canClosedByEsc = false;
      }
      
      private function _041aee8fc8e6d7ee446ac0d3(param1:MouseEvent) : void
      {
         app.user.inLogountProcess = true;
         _dfa25706e58a240c1e33e5c6.fscModel.disconnect();
         NativeApplication.nativeApplication.exit();
      }
      
      override public function _ec9e8fded1f21e9a06d314c7() : void
      {
         app.dialogManager.showPopup(this);
      }
   }
}

