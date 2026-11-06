package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.utils.BitmapUtil;
   import com.greensock.TweenLite;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ViewSpecial
   {
      
      protected var _source:DisplayObjectContainer;
      
      protected var _obstacleMap:BitmapData;
      
      protected var _obstacleMapBounds:Rectangle;
      
      protected var _obstacleMapOffset:Point;
      
      protected var _isEnabled:Boolean;
      
      protected var _objectsWithFixedVisibility:Array;
      
      protected var _objectsWithInvertedVisibility:Array;
      
      public function ViewSpecial(param1:DisplayObjectContainer)
      {
         super();
         this._source = param1;
         this.init();
      }
      
      public function get source() : DisplayObjectContainer
      {
         return this._source;
      }
      
      public function get isEnabled() : Boolean
      {
         return this._isEnabled;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         if(this._isEnabled == param1)
         {
            return;
         }
         this._isEnabled = param1;
         this.itemsVisibility = param1;
      }
      
      public function set itemsVisibility(param1:Boolean) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         for each(_loc2_ in this._objectsWithFixedVisibility)
         {
            _loc2_.visible = param1;
         }
         for each(_loc3_ in this._objectsWithInvertedVisibility)
         {
            _loc3_.visible = !param1;
         }
      }
      
      protected function set itemsVisibilityAnimated(param1:Boolean) : void
      {
         var _loc2_:DisplayObject = null;
         _loc2_ = null;
         var _loc3_:Object = {
            "alpha":(param1 ? 1 : 0),
            "onComplete":this.onAnimationComplete
         };
         for each(_loc2_ in this._objectsWithFixedVisibility)
         {
            _loc2_.visible = true;
            _loc2_.alpha = param1 ? 0 : 1;
            TweenLite.to(_loc2_,2,_loc3_);
         }
      }
      
      private function onAnimationComplete() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this._objectsWithFixedVisibility)
         {
            _loc1_.alpha = 1;
            _loc1_.visible = this._isEnabled;
         }
      }
      
      private function init() : void
      {
         this._objectsWithFixedVisibility = [];
         this._objectsWithInvertedVisibility = [];
      }
      
      public function hide() : void
      {
         this.itemsVisibility = false;
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
      
      public function cleanup() : void
      {
         this._objectsWithFixedVisibility = null;
         this._objectsWithInvertedVisibility = null;
         this._obstacleMap.dispose();
      }
   }
}

