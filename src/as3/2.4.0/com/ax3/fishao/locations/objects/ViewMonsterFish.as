package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.greensock.TweenLite;
   import flash.display.DisplayObjectContainer;
   
   public class ViewMonsterFish extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _sizeScale:Number;
      
      public function ViewMonsterFish(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this._source = param2;
         this.init();
      }
      
      private function init() : void
      {
         this._sizeScale = 1;
      }
      
      public function updateSize(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         this._sizeScale = param1;
         _loc3_ = this._sizeScale == 0 ? 1 / 25 / 3 * 2 : this._sizeScale;
         if(param2)
         {
            this.updateSizeAnimated(_loc3_);
         }
         else
         {
            this._source.scaleX = _loc3_;
            this._source.scaleY = _loc3_;
         }
      }
      
      private function updateSizeAnimated(param1:Number) : void
      {
         TweenLite.killTweensOf(this._source);
         var _loc2_:Object = {
            "scaleX":param1,
            "scaleY":param1
         };
         TweenLite.to(this._source,1,_loc2_);
      }
   }
}

