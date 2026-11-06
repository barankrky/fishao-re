package com.ax3.fishao.tutorial
{
   import com.ax3.fishao.display._8a5b0c698d40931e860c0aeb;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.tutorial.helpers._63a1662bfab25759f09f5245;
   import com.ax3.fishao.tutorial.helpers._e444b603a0e799e84b427ae5;
   
   public class _0c6054b5aa20a9fd2b92f9c1
   {
      
      private var _5ac0aa4ff34764e6a4b7c1c6:_63a1662bfab25759f09f5245;
      
      private var _1803a7ff93304173ad33823d:_48295d9d6d9a3a424d2886ed;
      
      private var _45f85b5f05472a785ad67168:_e444b603a0e799e84b427ae5;
      
      public function _0c6054b5aa20a9fd2b92f9c1()
      {
         super();
         this.init();
      }
      
      public function get helperMask() : _63a1662bfab25759f09f5245
      {
         return this._5ac0aa4ff34764e6a4b7c1c6;
      }
      
      public function get helperArrow() : _48295d9d6d9a3a424d2886ed
      {
         return this._1803a7ff93304173ad33823d;
      }
      
      public function get helperPopup() : _e444b603a0e799e84b427ae5
      {
         return this._45f85b5f05472a785ad67168;
      }
      
      private function get gui() : _8a5b0c698d40931e860c0aeb
      {
         var _loc1_:_8a5b0c698d40931e860c0aeb = null;
         if(GameSwf.currentLocationDialog != null)
         {
            _loc1_ = GameSwf.currentLocationDialog.gui;
         }
         return _loc1_;
      }
      
      private function init() : void
      {
         this._5ac0aa4ff34764e6a4b7c1c6 = new _63a1662bfab25759f09f5245();
         this._1803a7ff93304173ad33823d = new _48295d9d6d9a3a424d2886ed();
         this._45f85b5f05472a785ad67168 = new _e444b603a0e799e84b427ae5();
      }
      
      public function update() : void
      {
         this._1803a7ff93304173ad33823d.updateArrow();
         this._5ac0aa4ff34764e6a4b7c1c6.updateMask();
      }
      
      public function _fc0d9245d4a11f93887bfd05() : void
      {
         var _loc1_:_8a5b0c698d40931e860c0aeb = this.gui;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_._12de47c9b64a3377efe8bb20();
         if(_loc1_.dailyQuestManWidget != null)
         {
            _loc1_.dailyQuestManWidget.enable();
         }
         if(_loc1_.missionsUncleSamWidget != null)
         {
            _loc1_.missionsUncleSamWidget.enable();
         }
         if(_loc1_.collectionsGirlWidget != null)
         {
            _loc1_.collectionsGirlWidget.enable();
         }
         _loc1_.controllerSettings.activateInTutorial = true;
         _loc1_.controllerBoosters.activateInTutorial = true;
         _loc1_.fishcoinsIndicator.addButton.enable();
         _loc1_.fishbucksIndicator.addButton.enable();
         _loc1_.energyIndicator.addButton.enable();
      }
      
      public function _dbb8408a6fc0feead9d91cb2() : void
      {
         var _loc1_:_8a5b0c698d40931e860c0aeb = this.gui;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_._b7909fd1221142499b331575();
         if(_loc1_.dailyQuestManWidget != null)
         {
            _loc1_.dailyQuestManWidget.disable();
         }
         if(_loc1_.missionsUncleSamWidget != null)
         {
            _loc1_.missionsUncleSamWidget.disable();
         }
         if(_loc1_.collectionsGirlWidget != null)
         {
            _loc1_.collectionsGirlWidget.disable();
         }
         _loc1_.controllerSettings.activateInTutorial = false;
         _loc1_.controllerBoosters.activateInTutorial = false;
         _loc1_.fishcoinsIndicator.addButton.disable();
         _loc1_.fishbucksIndicator.addButton.disable();
         _loc1_.energyIndicator.addButton.disable();
      }
   }
}

