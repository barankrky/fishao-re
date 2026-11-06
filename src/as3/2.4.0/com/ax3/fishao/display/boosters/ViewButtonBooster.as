package com.ax3.fishao.display.boosters
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewButton;
   import com.ax3.utils.TimeConverter;
   import flash.display.MovieClip;
   
   public class ViewButtonBooster extends ViewButton
   {
      
      private var _source:gButtonBooster = new gButtonBooster();
      
      private var _viewIcon:MovieClip;
      
      private var _state:String;
      
      public function ViewButtonBooster(param1:IController, param2:int)
      {
         super(param1,this._source);
         this.init(param2);
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         if(this._state == param1)
         {
            return;
         }
         this._state = param1;
         this._viewIcon.gotoAndStop(param1);
         this._source.viewTimer.visible = this._state != EBoosterButtonState.EBBS_DISABLE;
      }
      
      public function set timeLeft(param1:uint) : void
      {
         if(this._state == EBoosterButtonState.EBBS_DISABLE)
         {
            return;
         }
         this._source.viewTimer.label.text = TimeConverter.convertToMMSS(param1);
      }
      
      private function init(param1:int) : void
      {
         initTooltip();
         this.tooltipText = I18n.get("boosters_widget_tooltip_" + param1.toString());
         this.hideAllIcons();
         switch(param1)
         {
            case ResourceType.LUCK_POTION.id:
               this._viewIcon = this._source.viewBoosterLuckPotion;
               break;
            case ResourceType.FISH_RADAR.id:
               this._viewIcon = this._source.viewBoosterRadar;
               break;
            case ResourceType.MAGIC_WATCH.id:
               this._viewIcon = this._source.viewBoosterMagicWatch;
               break;
            case ResourceType.EXP_BOOSTER.id:
               this._viewIcon = this._source.viewBoosterExp;
               break;
            case ResourceType.SHINY_POTION.id:
               this._viewIcon = this._source.viewBoosterShiny;
               break;
            case ResourceType.POWER_BOOSTER.id:
               this._viewIcon = this._source.viewBoosterPower;
               break;
            default:
               Debug.assert(false);
         }
         this._viewIcon.visible = true;
         this.state = EBoosterButtonState.EBBS_DISABLE;
      }
      
      private function hideAllIcons() : void
      {
         this._source.viewBoosterExp.visible = false;
         this._source.viewBoosterLuckPotion.visible = false;
         this._source.viewBoosterMagicWatch.visible = false;
         this._source.viewBoosterRadar.visible = false;
         this._source.viewBoosterShiny.visible = false;
         this._source.viewBoosterPower.visible = false;
      }
      
      override protected function tryPlaySound() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_051_UI_Open_menu);
      }
   }
}

