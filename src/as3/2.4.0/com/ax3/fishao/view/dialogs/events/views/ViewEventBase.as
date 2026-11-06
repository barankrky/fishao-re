package com.ax3.fishao.view.dialogs.events.views
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.events.model.EEventType;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class ViewEventBase extends ViewBase
   {
      
      protected var _source:DisplayObjectContainer;
      
      protected var _viewIcon:MovieClip;
      
      protected var _fishBitmap:ScaledBitmap;
      
      protected var _fishImageBaseUrl:String;
      
      public function ViewEventBase(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      protected static function getIconNumber(param1:String) : uint
      {
         var _loc2_:uint = 0;
         switch(param1)
         {
            case EEventType.EET_CATCH_BIGGEST_FISH:
            case EEventType.EET_CATCH_MOST_FISH:
               _loc2_ = 3;
               break;
            case EEventType.EET_CATCH_MOST_FISH_SHINIES:
               _loc2_ = 5;
               break;
            case EEventType.EET_CATCH_MOST_FISH_WITH_STAR:
               _loc2_ = 4;
               break;
            case EEventType.EET_CATCH_MOST_FISH_WITH_TYPE:
            case EEventType.EET_CATCH_BIGGEST_FISH_WITH_TYPE:
               break;
            case EEventType.EET_WIN_MOST_TOURNAMENTS:
               _loc2_ = 2;
               break;
            case EEventType.EET_COLLECT_MOST_SHELLS:
               _loc2_ = 6;
               break;
            case EEventType.EET_USE_MOST_GADGETS:
               _loc2_ = 7;
               break;
            case EEventType.EET_SPEND_MOST_FISHCOINS:
               _loc2_ = 8;
               break;
            case EEventType.EET_SPEND_MOST_FISHBUCKS:
               _loc2_ = 1;
               break;
            case EEventType.EET_GAIN_MOST_EXP:
               _loc2_ = 9;
               break;
            case EEventType.EET_COLLECT_MOST_FRUITS:
               _loc2_ = 10;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
      
      public function set eventType(param1:String) : void
      {
         if(param1 == EEventType.EET_CATCH_MOST_FISH_WITH_TYPE || param1 == EEventType.EET_CATCH_BIGGEST_FISH_WITH_TYPE)
         {
            this._viewIcon.visible = false;
            this._fishBitmap.visible = true;
         }
         else
         {
            this._viewIcon.gotoAndStop(getIconNumber(param1));
            this._viewIcon.visible = true;
            this._fishBitmap.visible = false;
         }
      }
      
      public function set fishID(param1:int) : void
      {
         var _loc2_:String = this._fishImageBaseUrl + param1;
         app.resourceManager.replaceBitmapDataFromURL(this._fishBitmap,FishaoBitmapLoader.convertImageNameURL(_loc2_));
      }
      
      private function init() : void
      {
         this._viewIcon = Debug.assertProperty(this._source,"viewIcon",MovieClip);
         this._viewIcon.gotoAndStop(1);
         this._fishBitmap = new ScaledBitmap();
         this._fishBitmap.visible = false;
         this._fishImageBaseUrl = "fishes/fish_225px_";
         this._source.addChild(this._fishBitmap);
         this._source.mouseEnabled = false;
         this._source.mouseChildren = false;
      }
   }
}

