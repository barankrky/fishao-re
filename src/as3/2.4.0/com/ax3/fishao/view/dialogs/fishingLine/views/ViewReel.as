package com.ax3.fishao.view.dialogs.fishingLine.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.fishingLine.model.EFishingLineColor;
   import flash.display.MovieClip;
   
   public class ViewReel extends ViewBase
   {
      
      private var _source:MovieClip;
      
      public function ViewReel(param1:IController, param2:MovieClip)
      {
         this._source = param2;
         super(param1,this._source);
      }
      
      public function set color(param1:String) : void
      {
         var _loc2_:uint = 0;
         switch(app.user.fishingLineColor)
         {
            case EFishingLineColor.EFLC_WHITE:
               _loc2_ = 1;
               break;
            case EFishingLineColor.EFLC_BLUE_LIGHT:
               _loc2_ = 2;
               break;
            case EFishingLineColor.EFLC_GREEN_LIGHT:
               _loc2_ = 3;
               break;
            case EFishingLineColor.EFLC_SILVER:
               _loc2_ = 4;
               break;
            case EFishingLineColor.EFLC_GOLD:
               _loc2_ = 5;
               break;
            default:
               Debug.assert(false);
         }
         this._source.gotoAndStop(_loc2_);
      }
   }
}

