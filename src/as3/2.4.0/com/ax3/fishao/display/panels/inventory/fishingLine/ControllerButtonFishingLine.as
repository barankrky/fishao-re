package com.ax3.fishao.display.panels.inventory.fishingLine
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.fishingLine.DialogFishingLine;
   import flash.events.Event;
   import protocol.api.fishingLine.data.FishingLineLevelInfo;
   
   public class ControllerButtonFishingLine extends Controller
   {
      
      private var _view:ViewButtonFishingLine = new ViewButtonFishingLine(this);
      
      private var _isLocked:Boolean;
      
      public function ControllerButtonFishingLine()
      {
         super(this._view);
         this.init();
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         if(this._isLocked == param1)
         {
            return;
         }
         this._isLocked = param1;
         this._view.isEnabled = !this._isLocked;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:DialogFishingLine = null;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc4_)
         {
            if(!GameSwf.inspectGuestLockedAction())
            {
               FishaoSoundManager.play(FishaoSoundManager.SFX_051_UI_Open_menu);
               _loc3_ = app.dialogFactory.getFishingLineDialog();
               _loc3_.show();
            }
            _loc4_ = true;
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         if(GameSwf.instance.managerFishingLine.isDataLoaded)
         {
            this.update(EControllerUpdate.ECU_FISHING_LINE_COLOR);
            this.update(EControllerUpdate.ECU_FISHING_LINE_LEVEL);
         }
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:FishingLineLevelInfo = null;
         switch(param1)
         {
            case EControllerUpdate.ECU_FISHING_LINE_COLOR:
               this._view.color = app.user.fishingLineColor;
               break;
            case EControllerUpdate.ECU_FISHING_LINE_LEVEL:
               _loc2_ = app.user.fishingLine;
               this._view.updateTooltip(_loc2_.number,_loc2_.lineLength);
               break;
            default:
               Debug.assert(false);
         }
      }
   }
}

