package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.utils.BitmapUtil;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ViewDoorPrivateHouse extends ViewSpecial
   {
      
      public static const VIEW_TYPE_GARDEN:String = "garden";
      
      public static const VIEW_TYPE_STAIRS_UP:String = "stairs_up";
      
      public static const VIEW_TYPE_STAIRS_DOWN:String = "stairs_down";
      
      public static const VIEW_SHADOW:String = "shadow";
      
      public static const VIEW_FRAME:String = "frame";
      
      private var _doorStatesName:Array;
      
      private var _viewType:String;
      
      private var _zOrderDoor:DisplayObject;
      
      private var _zOrderFrame:DisplayObject;
      
      private var _zOrderShadow:DisplayObject;
      
      private var _frameObstacle:BitmapData;
      
      private var _frameBounds:Rectangle;
      
      private var _frameOffset:Point;
      
      public function ViewDoorPrivateHouse(param1:DisplayObjectContainer)
      {
         super(param1);
         this.init();
      }
      
      public function get zOrderDoor() : DisplayObject
      {
         return this._zOrderDoor;
      }
      
      public function get zOrderFrame() : DisplayObject
      {
         return this._zOrderFrame;
      }
      
      public function get zOrderShadow() : DisplayObject
      {
         return this._zOrderShadow;
      }
      
      public function set viewType(param1:String) : void
      {
         this._viewType = param1;
         this.onViewTypeUpdate();
      }
      
      private function getIndexOfViewByType(param1:String) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this._doorStatesName.length)
         {
            if(this._doorStatesName[_loc3_] == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         return _loc3_;
      }
      
      private function onViewTypeUpdate() : void
      {
         hide();
         this._zOrderDoor = _objectsWithFixedVisibility[this.getIndexOfViewByType(this._viewType)] as DisplayObject;
         this._zOrderDoor.visible = true;
         this._zOrderShadow = _objectsWithFixedVisibility[this.getIndexOfViewByType(VIEW_SHADOW)] as DisplayObject;
         this._zOrderShadow.visible = this._viewType != VIEW_TYPE_GARDEN;
         this._zOrderFrame = _objectsWithFixedVisibility[this.getIndexOfViewByType(VIEW_FRAME)] as DisplayObject;
         this._zOrderFrame.visible = true;
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         proceedWithObstacle();
         this.proceedWithObstacleFrame();
         this._doorStatesName = [];
         var _loc4_:int = 0;
         while(_loc4_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc4_) as DisplayObjectContainer;
            if(_loc1_ != null && _loc1_.name.indexOf(EDisplayObjectType.EDOT_ISO_VISIBLE) > -1)
            {
               _loc2_ = 0;
               while(_loc2_ < _loc1_.numChildren)
               {
                  _loc3_ = _loc1_.getChildAt(_loc2_) as DisplayObject;
                  _objectsWithFixedVisibility.push(_loc3_);
                  _loc2_++;
               }
               this._doorStatesName.push((_loc1_ as MovieClip).currentFrameLabel);
            }
            _loc4_++;
         }
         hide();
      }
      
      private function proceedWithObstacleFrame() : void
      {
         var _loc1_:DisplayObject = Debug.assertProperty(_source,EDisplayObjectType.EDOT_SYSTEM_OBSTACLE_FRAME);
         this._frameObstacle = BitmapUtil.cloneWithBounds(_loc1_);
         this._frameBounds = _loc1_.getBounds(_loc1_);
         this._frameOffset = new Point(_loc1_.x,_loc1_.y);
         _loc1_.visible = false;
      }
      
      override public function hitTest(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Boolean = super.hitTest(param1,param2,param3);
         param1 = param1 - _source.x - this._frameOffset.x - this._frameBounds.x;
         param2 = param2 - _source.y - this._frameOffset.y - this._frameBounds.y;
         var _loc5_:Boolean = _isEnabled == !param3 && this._frameObstacle != null && param1 > 0 && param2 > 0 && param1 < this._frameObstacle.width && param2 < this._frameObstacle.height && this._frameObstacle.getPixel32(param1,param2) > 16777215;
         return _loc4_ || _loc5_;
      }
   }
}

