package com.ax3.fishao.view.dialogs.holidays.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.utils.BitmapUtil;
   import com.greensock.TweenLite;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ViewHolidayItem extends ViewBase
   {
      
      protected var _source:DisplayObjectContainer;
      
      protected var _obstacleMap:BitmapData;
      
      protected var _obstacleMapBounds:Rectangle;
      
      protected var _obstacleMapOffset:Point;
      
      private var _isEnabled:Boolean;
      
      protected var _objectsWithFixedVisibility:Array;
      
      protected var _objectsWithInvertedVisibility:Array;
      
      public function ViewHolidayItem(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function get isEnabled() : Boolean
      {
         return this._isEnabled;
      }
      
      private function onAnimationComplete() : void
      {
         var _loc1_:DisplayObject = null;
         _loc1_ = null;
         for each(_loc1_ in this._objectsWithFixedVisibility)
         {
            _loc1_.alpha = 1;
            _loc1_.visible = this._isEnabled;
         }
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         this._objectsWithFixedVisibility = [];
         this._objectsWithInvertedVisibility = [];
         this.proceedWithObstacle();
         var _loc4_:int = 0;
         while(_loc4_ < this._source.numChildren)
         {
            _loc1_ = this._source.getChildAt(_loc4_) as DisplayObjectContainer;
            if(_loc1_ != null && _loc1_.name.indexOf(EDisplayObjectType.EDOT_ISO_VISIBLE) > -1)
            {
               _loc2_ = 0;
               while(_loc2_ < _loc1_.numChildren)
               {
                  _loc3_ = _loc1_.getChildAt(_loc2_) as DisplayObject;
                  this._objectsWithFixedVisibility.push(_loc3_);
                  _loc2_++;
               }
            }
            _loc4_++;
         }
         this.hide();
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         var _loc3_:Object = null;
         var _loc4_:DisplayObject = null;
         this.tryCleanupTweens();
         this._isEnabled = true;
         _loc3_ = {
            "alpha":1,
            "onComplete":this.onAnimationComplete
         };
         for each(_loc4_ in this._objectsWithFixedVisibility)
         {
            _loc4_.visible = true;
            _loc4_.alpha = 0;
            TweenLite.to(_loc4_,param1,_loc3_);
         }
      }
      
      override public function hide(param1:Number = 0, param2:Function = null) : void
      {
         var _loc3_:Object = null;
         var _loc4_:DisplayObject = null;
         this.tryCleanupTweens();
         this._isEnabled = false;
         _loc3_ = {
            "alpha":0,
            "onComplete":this.onAnimationComplete
         };
         for each(_loc4_ in this._objectsWithFixedVisibility)
         {
            _loc4_.visible = true;
            _loc4_.alpha = 1;
            TweenLite.to(_loc4_,param1,_loc3_);
         }
      }
      
      protected function proceedWithObstacle() : void
      {
         var _loc1_:DisplayObject = Debug.assertProperty(this._source,EDisplayObjectType.EDOT_SYSTEM_OBSTACLE_SITUATIONAL);
         this._obstacleMap = BitmapUtil.cloneWithBounds(_loc1_);
         this._obstacleMapBounds = _loc1_.getBounds(_loc1_);
         this._obstacleMapOffset = new Point(_loc1_.x,_loc1_.y);
         _loc1_.visible = false;
      }
      
      public function hitTest(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Boolean = false;
         param1 = param1 - this._source.x - this._obstacleMapOffset.x - this._obstacleMapBounds.x;
         param2 = param2 - this._source.y - this._obstacleMapOffset.y - this._obstacleMapBounds.y;
         return this._isEnabled == param3 && this._obstacleMap != null && param1 > 0 && param2 > 0 && param1 < this._obstacleMap.width && param2 < this._obstacleMap.height && this._obstacleMap.getPixel32(param1,param2) > 16777215;
      }
      
      private function tryCleanupTweens() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this._objectsWithFixedVisibility)
         {
            TweenLite.killTweensOf(_loc1_);
         }
      }
      
      override public function cleanup() : void
      {
         this.tryCleanupTweens();
         this._objectsWithFixedVisibility = null;
         this._objectsWithInvertedVisibility = null;
         this._obstacleMap.dispose();
         super.cleanup();
      }
   }
}

