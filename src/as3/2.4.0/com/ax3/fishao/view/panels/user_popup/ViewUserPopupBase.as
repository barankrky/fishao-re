package com.ax3.fishao.view.panels.user_popup
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class ViewUserPopupBase extends ViewBase
   {
      
      private var _buttonProfile:FrameButtonWrapper;
      
      private var _buttonPM:FrameButtonWrapper;
      
      private var _buttonClose:CloseMenuFishaoButtonWrapper;
      
      private var _labelLevel:TextField;
      
      private var _labelLogin:TextField;
      
      public function ViewUserPopupBase(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
         param2.mouseChildren = true;
      }
      
      private static function getTooltipConfig(param1:String) : Object
      {
         return {"text":I18n.get(param1)};
      }
      
      public function set isGuest(param1:Boolean) : void
      {
         this._buttonProfile.enabled = !param1;
         this._buttonPM.enabled = !param1;
         if(param1)
         {
            this._buttonProfile.tooltipConfig = getTooltipConfig("guest_profile_unavailable");
            this._buttonPM.tooltipConfig = getTooltipConfig("guest_pm_unavailable");
         }
         else
         {
            this._buttonProfile.tooltipConfig = null;
            this._buttonPM.tooltipConfig = null;
         }
      }
      
      public function get buttonClose() : CloseMenuFishaoButtonWrapper
      {
         return this._buttonClose;
      }
      
      public function set buttonPmVisible(param1:Boolean) : void
      {
         this._buttonPM.visible = param1;
         if(!param1)
         {
            this._buttonProfile.x = -this._buttonProfile.width * 0.5;
         }
      }
      
      public function get buttonProfile() : FrameButtonWrapper
      {
         return this._buttonProfile;
      }
      
      public function get buttonPM() : FrameButtonWrapper
      {
         return this._buttonPM;
      }
      
      public function set level(param1:int) : void
      {
         this._labelLevel.text = param1.toString();
      }
      
      public function set login(param1:String) : void
      {
         this._labelLogin.text = param1;
      }
      
      public function get viewEmblem() : ViewBase
      {
         return null;
      }
      
      private function init() : void
      {
         this.initButtonProfile();
         this.initButtonPM();
         this.initButtonClose();
         this.initLabels();
         this.stopClickPropagation();
      }
      
      protected function initButtonProfile() : void
      {
         this._buttonProfile = createButton("buttonProfile");
         this._buttonProfile.label = I18n.getUpper("button_view_profile");
      }
      
      protected function initButtonPM() : void
      {
         this._buttonPM = createButton("buttonPM");
      }
      
      protected function initButtonClose() : void
      {
         this._buttonClose = new CloseMenuFishaoButtonWrapper();
         this._buttonClose.process(Debug.assertProperty(this.source,"buttonClose"));
         this._buttonClose.handler = function(param1:Event):void
         {
            controller.onViewClicked(_buttonClose,param1);
         };
      }
      
      protected function initLabels() : void
      {
         this._labelLevel = Debug.assertProperty(this.source,"labelLevel");
         this._labelLogin = Debug.assertProperty(this.source,"labelLogin");
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
   }
}

