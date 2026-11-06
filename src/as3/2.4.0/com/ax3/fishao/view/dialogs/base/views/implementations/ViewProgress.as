package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class ViewProgress extends ViewBase
   {
      
      protected static const INSTANCE_NAME_INDICATOR:String = "indicator";
      
      private var _source:DisplayObjectContainer;
      
      private var _viewIndicator:DisplayObject;
      
      private var _indicationOriginalWidth:Number;
      
      public function ViewProgress(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set percent(param1:Number) : void
      {
         param1 = limit(param1,0,100);
         this._viewIndicator.width = this._indicationOriginalWidth * param1 / 100;
      }
      
      private function init() : void
      {
         this._viewIndicator = Debug.assertProperty(this._source,INSTANCE_NAME_INDICATOR);
         this._indicationOriginalWidth = this._viewIndicator.width;
      }
   }
}

