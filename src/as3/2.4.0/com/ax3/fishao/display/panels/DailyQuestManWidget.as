package com.ax3.fishao.display.panels
{
   import assets.common.DailyQuestWidget;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.display.dialogs.LoadingScreen;
   import com.ax3.fishao.model.DailyQuestModel;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.DailyQuestSwfDialog;
   import com.ax3.fishao.view.tooltips.UpdatedTooltipType;
   import com.ax3.net.LoadingIndicator;
   import com.ax3.utils.ColorMatrix;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class DailyQuestManWidget extends DailyQuestWidget implements IToolTipTarget
   {
      
      public static const DAILY_QUEST_DATA_INIT:String = "dailyQuestDataInit";
      
      private static var disableColorMatrix:ColorMatrix = new ColorMatrix([0.29140390000000005,0.643644,0.0649521,0,0.25,0.19140390000000002,0.743644,0.0649521,0,0.25,0.19140390000000002,0.643644,0.1649521,0,0.25,0,0,0,1,0]);
      
      private static var DISABLE_FILTERS:Array = [disableColorMatrix.filter];
      
      public static var dailyQuestsModel:DailyQuestModel = new DailyQuestModel();
      
      private var _enabled:Boolean = true;
      
      private var _tooltipViewX:int;
      
      public var onClick:Function;
      
      private var _indicator:LoadingIndicator;
      
      private var _isDisabled:Boolean = false;
      
      public var tooltipConfig:Object;
      
      private var _dailyQuestSwfDialog:DailyQuestSwfDialog;
      
      public function DailyQuestManWidget()
      {
         super();
         name = "DailyQuestWidget";
         addEventListener(MouseEvent.CLICK,this.onMouseClick);
         mouseChildren = false;
         buttonMode = true;
         var _loc1_:TextField = TextField(tooltip.getChildByName("label"));
         var _loc2_:Number = _loc1_.width;
         _loc1_.autoSize = TextFieldAutoSize.LEFT;
         _loc1_.text = I18n.getUpper("dailyQuestWidgetLabel");
         if(_loc1_.width > _loc2_)
         {
            DisplayObject(tooltip.getChildByName("bg")).width = DisplayObject(tooltip.getChildByName("bg")).width + (_loc1_.width - _loc2_);
         }
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         this._tooltipViewX = tooltip.x;
         tooltip.x -= tooltip.width;
         dailyQuestsModel.addEventListener(DailyQuestModel.CHANGE_DAILY_QUEST_DATA,this.onDailyQuestDataInit);
         if(dailyQuestsModel.prizeIsCollect)
         {
            this.disable();
         }
         else
         {
            this.enable();
         }
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_041_UI_Hover_button);
         addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         TweenCube.destroyTweensOf(tooltip);
         TweenCube.to(tooltip,0.5,{"x":this._tooltipViewX},{"ease":Cubic.easeOut});
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         TweenCube.destroyTweensOf(tooltip);
         TweenCube.to(tooltip,0.5,{"x":this._tooltipViewX - tooltip.width},{"ease":Cubic.easeOut});
      }
      
      public function onMouseClick(param1:MouseEvent = null) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_042_UI_Click_button);
         dailyQuestsModel.addEventListener(DailyQuestModel.CHANGE_DAILY_QUEST_DATA,this.onDailyQuestDataChange);
         dailyQuestsModel.requestData();
         this._indicator = new LoadingIndicator(LoadingScreen.TYPE_BUBBLES);
         Preloader.addIndicator(this._indicator);
      }
      
      private function onDailyQuestDataChange(param1:Event) : void
      {
         Preloader.removeIndicator(this._indicator);
         this._indicator = null;
         this._dailyQuestSwfDialog = app.dialogFactory.getDailyQuestSwfDialog();
         this._dailyQuestSwfDialog.setData(dailyQuestsModel.dailyQuestData);
         if(app.user.isTalkingWithNPC.value == false)
         {
            this._dailyQuestSwfDialog.show();
         }
         else
         {
            app.user.onIsTalkingWithNPCChange(this.showDailyQuestDialogAfterDelay);
         }
      }
      
      private function onDailyQuestDataInit(param1:Event) : void
      {
         dailyQuestsModel.removeEventListener(DailyQuestModel.CHANGE_DAILY_QUEST_DATA,this.onDailyQuestDataInit);
         if(dailyQuestsModel.dailyQuestData[DailyQuestModel.PRIZE_IS_COLLECT])
         {
            this.disable();
         }
         else
         {
            this.enable();
         }
         dispatchEvent(new Event(DAILY_QUEST_DATA_INIT));
      }
      
      private function showDailyQuestDialogAfterDelay(param1:Event) : void
      {
         if(app.user.isTalkingWithNPC.value == false)
         {
            app.user.removeOnIsTalkingWithNPCChange(this.showDailyQuestDialogAfterDelay);
            this._dailyQuestSwfDialog.show();
         }
      }
      
      public function destroy() : void
      {
         this.deactivate();
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      override public function get height() : Number
      {
         return 75;
      }
      
      public function isEnabled() : Boolean
      {
         return this._enabled;
      }
      
      public function disable() : void
      {
         this._enabled = false;
         removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         this.filters = DISABLE_FILTERS;
      }
      
      public function enable() : void
      {
         this._enabled = true;
         this.tooltipConfig = null;
         this.filters = [];
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         addEventListener(MouseEvent.CLICK,this.onMouseClick);
      }
      
      public function getTooltipType() : TooltipType
      {
         if(DailyQuestManWidget.dailyQuestsModel.isCompleted())
         {
            return UpdatedTooltipType.TEXT_TOOLTIP;
         }
         return null;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         var _loc1_:int = DailyQuestManWidget.dailyQuestsModel.getRealLeftSec();
         this.tooltipConfig = {"text":I18n.get("dailyQuestWidgetLockTooltip").replace("#TIME#",I18n.formatTimestampToClockView(_loc1_))};
         return this.tooltipConfig;
      }
      
      public function deactivate() : void
      {
         if(dailyQuestsModel != null)
         {
            dailyQuestsModel.removeEventListener(DailyQuestModel.CHANGE_DAILY_QUEST_DATA,this.onDailyQuestDataChange);
         }
         if(hasEventListener(MouseEvent.CLICK))
         {
            removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         }
      }
   }
}

