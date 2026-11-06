package com.ax3.fishao.view.dialogs.fishingLine.controllers
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewButtonColor;
   import com.ax3.fishao.view.dialogs.fishingLine.model.EFishingLineColor;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.events.Event;
   
   public class ControllerButtonColor extends Controller
   {
      
      private var _view:ViewButtonColor = new ViewButtonColor(this);
      
      private var _color:uint;
      
      private var _colorType:String;
      
      public function ControllerButtonColor(param1:String)
      {
         super(this._view);
         this._colorType = param1;
         this.init();
      }
      
      public function set enableSelection(param1:Boolean) : void
      {
         this._view.enableSelection = param1;
         if(param1)
         {
            this.update(EControllerUpdate.ECU_FISHING_LINE_COLOR);
         }
         else
         {
            this._view.isChecked = false;
         }
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var target:Object = param1;
         var e:Event = param2;
         var result:Boolean = super.onViewClicked(target,e);
         if(!this._view.isChecked)
         {
            this._view.isChecked = true;
            app.user.fishingLineColor = this._colorType;
            FishaoFscModelManager.fscModel.extensionFishingLine.updateFishingLineColor(function(param1:ServerResp):void
            {
            },app.user.fishingLineColor);
         }
         return result;
      }
      
      private function init() : void
      {
         this._color = EFishingLineColor.getColor(this._colorType);
         this._view.color = this._color;
         this._view.autocheck = false;
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_FISHING_LINE_COLOR:
               this._view.isChecked = app.user.fishingLineColor == this._colorType;
               break;
            default:
               Debug.assert(false);
         }
      }
   }
}

