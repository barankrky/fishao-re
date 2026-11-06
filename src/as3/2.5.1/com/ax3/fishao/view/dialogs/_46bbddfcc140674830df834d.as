package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.fishao.view.wrappers.impl._0724ad266e88779612fd9d57;
   import com.ax3.fishao.view.wrappers.impl._6b91a781d828662e84e05553;
   import com.ax3.fishao.view.wrappers.impl.profile.fishesPanel._5a30c6d8029ddb3d32e05845;
   import com.ax3.fishao.view.wrappers.impl.profile.inventoryPanel._408ea7c7c6f2cc2c1d1baf8d;
   import com.ax3.fishao.view.wrappers.impl.profile.prizesPanel._012993bc4b52daf32f893c45;
   import com.ax3.fishao.view.wrappers.impl.profile.reportPanel._c479d968efc2465c54c7b260;
   import com.ax3.fishao.view.wrappers.impl.profile.userInfoPanel._0fbfa5db97af2c1935b22481;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class _46bbddfcc140674830df834d extends _8071087ebe26c264282580d0
   {
      
      public var title:_6b91a781d828662e84e05553;
      
      public var closeBtn:CloseMenuFishaoButtonWrapper;
      
      public var tabUpLayer:Sprite;
      
      public var userInfoTab:_0724ad266e88779612fd9d57;
      
      public var fishesTab:_0724ad266e88779612fd9d57;
      
      public var prizesTab:_0724ad266e88779612fd9d57;
      
      public var inventoryTab:_0724ad266e88779612fd9d57;
      
      public var referralsTab:DisplayObject;
      
      public var reportTab:_0724ad266e88779612fd9d57;
      
      public var userInfoPanel:_0fbfa5db97af2c1935b22481;
      
      public var fishesPanel:_5a30c6d8029ddb3d32e05845;
      
      public var prizesPanel:_012993bc4b52daf32f893c45;
      
      public var inventoryPanel:_408ea7c7c6f2cc2c1d1baf8d;
      
      public var referralsPanel:DisplayObject;
      
      public var reportPanel:_c479d968efc2465c54c7b260;
      
      public var tabDownLayer:Sprite;
      
      protected var _isLoaded:Boolean = false;
      
      public function _46bbddfcc140674830df834d()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挥捷捩挲推捖捉推探掣掐挽掬掸挔挈捪挒掱捴揁掙掉掲揈捠揇捁揫掴","掊揪捃掽掷掉捝掼挡揜掍掣捂掝捰挱");
         super(_loc1_);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         tabChildren = false;
         super._935ac2966ddad68dfc449202();
      }
      
      override protected function _d998e9465b31be9894488c29(param1:DisplayObjectContainer) : void
      {
         this._isLoaded = true;
         super._d998e9465b31be9894488c29(param1);
      }
   }
}

