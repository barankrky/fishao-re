package com.ax3.fishao.display.panels
{
   import assets.common.MissionsWidget;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.missions.MissionsSwfDialog;
   import com.ax3.utils.ColorMatrix;
   import com.greensock.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class MissionsUncleSamWidget extends MissionsWidget
   {
      
      private static var disableColorMatrix:ColorMatrix = new ColorMatrix([0.29140390000000005,0.643644,0.0649521,0,0.25,0.19140390000000002,0.743644,0.0649521,0,0.25,0.19140390000000002,0.643644,0.1649521,0,0.25,0,0,0,1,0]);
      
      private static var DISABLE_FILTERS:Array = [disableColorMatrix.filter];
      
      private var _tooltipViewX:int;
      
      public var onClick:Function;
      
      public function MissionsUncleSamWidget()
      {
         super();
         name = "MissionsWidget";
         addEventListener(MouseEvent.CLICK,this.onMouseClick);
         mouseChildren = false;
         buttonMode = true;
         TextField(tooltip.getChildByName("label")).text = I18n.getUpper("missions_label");
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         this._tooltipViewX = tooltip.x;
         tooltip.x -= tooltip.width;
         notifierAnimation.notifier.label.text = I18n.get("missions_widget_notification_open");
         notifierAnimation.notifier.label.autoSize = TextFieldAutoSize.LEFT;
         notifierAnimation.notifier.background.width = 36 + notifierAnimation.notifier.label.width;
         this.displayBlinkNotifier();
      }
      
      public function displayBlinkNotifier() : void
      {
         notifierAnimation.visible = !app.user.hasSeenNewMissions;
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_041_UI_Hover_button);
         addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         TweenCube.destroyTweensOf(tooltip);
         TweenCube.to(tooltip,0.5,{"x":this._tooltipViewX},{"ease":Cubic.easeOut});
         TweenCube.to(notifierAnimation,0.5,{"alpha":0},{"ease":Cubic.easeOut});
      }
      
      private function onMouseOut(param1:Event) : void
      {
         removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         TweenCube.destroyTweensOf(tooltip);
         TweenCube.to(tooltip,0.5,{"x":this._tooltipViewX - tooltip.width},{"ease":Cubic.easeOut});
         if(!app.user.hasSeenNewMissions)
         {
            TweenCube.to(notifierAnimation,0.5,{"alpha":1},{"ease":Cubic.easeOut});
         }
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         var _loc2_:MissionsSwfDialog = null;
         if(!GameSwf.inspectGuestLockedAction())
         {
            FishaoSoundManager.play(FishaoSoundManager.SFX_042_UI_Click_button);
            _loc2_ = app.dialogFactory.getMissionsSwfDialog();
            _loc2_.show();
            app.user.hasSeenNewMissions = true;
         }
      }
      
      public function destroy() : void
      {
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      public function deactivate() : void
      {
         if(hasEventListener(MouseEvent.CLICK))
         {
            removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         }
      }
      
      public function disable() : void
      {
         removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         this.filters = DISABLE_FILTERS;
      }
      
      public function enable() : void
      {
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         addEventListener(MouseEvent.CLICK,this.onMouseClick);
         this.filters = [];
         this.displayBlinkNotifier();
      }
      
      override public function get height() : Number
      {
         return 75;
      }
      
      public function set notifierEnabled(param1:Boolean) : void
      {
         notifierAnimation.visible = param1;
         notifierAnimation.notifier.label.text = I18n.get("missions_widget_new_notification");
         notifierAnimation.notifier.label.autoSize = TextFieldAutoSize.LEFT;
         notifierAnimation.notifier.background.width = 36 + notifierAnimation.notifier.label.width;
         if(!app.user.hasSeenNewMissions)
         {
            TweenCube.to(notifierAnimation,0.5,{"alpha":1},{"ease":Cubic.easeOut});
         }
      }
   }
}

