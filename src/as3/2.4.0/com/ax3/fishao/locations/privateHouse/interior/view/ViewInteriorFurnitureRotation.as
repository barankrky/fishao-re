package com.ax3.fishao.locations.privateHouse.interior.view
{
   import com.ax3.fishao.locations.privateHouse.interior.controller.ControllerInteriorItem;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemAssetType;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemFilterType;
   import com.ax3.fishao.utils.UtilsBitmap;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   
   public class ViewInteriorFurnitureRotation extends ViewBase
   {
      
      private var _side:String;
      
      private var _iso:ViewBase;
      
      private var _shadow:ViewBase;
      
      private var _obstacle:ViewBase;
      
      private var _isoTemporary:Sprite;
      
      private var _controllerInteriorItem:ControllerInteriorItem;
      
      public function ViewInteriorFurnitureRotation(param1:IController, param2:String)
      {
         this._side = param2;
         super(param1,new Sprite());
         this.init();
      }
      
      private static function glow() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:GlowFilter = new GlowFilter();
         _loc2_.strength = 3;
         _loc2_.alpha = 0.5;
         _loc2_.blurX = 20;
         _loc2_.blurY = 20;
         _loc2_.color = 16777011;
         _loc1_.push(_loc2_);
         return _loc1_;
      }
      
      private static function red() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         _loc2_ = _loc2_.concat([1,0,0,0,0]);
         _loc2_ = _loc2_.concat([0,0,0,0,0]);
         _loc2_ = _loc2_.concat([0,0,0,0,0]);
         _loc2_ = _loc2_.concat([0,0,0,1,0]);
         var _loc3_:ColorMatrixFilter = new ColorMatrixFilter(_loc2_);
         _loc1_.push(_loc3_);
         return _loc1_;
      }
      
      public function get iso() : ViewBase
      {
         return this._iso;
      }
      
      public function set handleClick(param1:Boolean) : void
      {
         (this._iso.source as Sprite).buttonMode = param1;
         this._iso.handleEvents(param1);
      }
      
      public function set handleMouseUp(param1:Boolean) : void
      {
         if(param1 == this._iso.source.hasEventListener(MouseEvent.MOUSE_UP))
         {
            return;
         }
         var _loc2_:Boolean = this._iso.source.hasEventListener(MouseEvent.CLICK);
         var _loc3_:Boolean = this._iso.source.hasEventListener(MouseEvent.MOUSE_MOVE);
         var _loc4_:Boolean = this._iso.source.hasEventListener(MouseEvent.MOUSE_DOWN);
         this._iso.handleEvents(_loc2_,_loc3_,param1,param1,_loc4_);
      }
      
      public function set handleMouseDown(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         _loc2_ = this._iso.source.hasEventListener(MouseEvent.CLICK);
         _loc3_ = this._iso.source.hasEventListener(MouseEvent.MOUSE_MOVE);
         _loc4_ = this._iso.source.hasEventListener(MouseEvent.MOUSE_UP);
         (this._iso.source as Sprite).buttonMode = param1;
         this._iso.handleEvents(_loc2_,_loc3_,_loc4_,_loc4_,param1);
      }
      
      public function set filter(param1:String) : void
      {
         switch(param1)
         {
            case EInteriorItemFilterType.EIIFT_GLOW:
               this._iso.source.filters = glow();
               break;
            case EInteriorItemFilterType.EIIFT_NONE:
               this._iso.source.filters = null;
               break;
            case EInteriorItemFilterType.EIIFT_RED:
               this._iso.source.filters = red();
         }
      }
      
      public function set isMouseEnabled(param1:Boolean) : void
      {
         (this._iso.source as Sprite).mouseChildren = param1;
         (this._iso.source as Sprite).mouseEnabled = param1;
      }
      
      public function get width() : Number
      {
         return this._iso.source.width;
      }
      
      public function get x() : Number
      {
         return this._iso.source.x;
      }
      
      public function get y() : Number
      {
         return this._iso.source.y;
      }
      
      public function set x(param1:Number) : void
      {
         this._iso.source.x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this._iso.source.y = param1;
      }
      
      public function set isOnDrag(param1:Boolean) : void
      {
         this._shadow.source.visible = !param1;
      }
      
      private function init() : void
      {
         this._controllerInteriorItem = controller as ControllerInteriorItem;
         this._iso = new ViewBase(controller,new Sprite());
         this._shadow = new ViewBase(controller,new Sprite());
         this._obstacle = new ViewBase(controller,new Sprite());
         this._isoTemporary = new Sprite();
      }
      
      public function load() : void
      {
         this._controllerInteriorItem.load(this._isoTemporary,this._side,EInteriorItemAssetType.EIIAT_ISO);
         this._controllerInteriorItem.load(this._shadow.source as DisplayObjectContainer,this._side,EInteriorItemAssetType.EIIAT_SHADOW);
         this._controllerInteriorItem.load(this._obstacle.source as DisplayObjectContainer,this._side,EInteriorItemAssetType.EIIAT_OBSTACLE);
      }
      
      public function addOnLayer(param1:DisplayObjectContainer) : void
      {
         param1.addChild(this._iso.source);
         param1.addChild(this._shadow.source);
         param1.addChild(this._obstacle.source);
         this._iso.hide();
         this._shadow.hide();
         this._obstacle.hide();
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         this._iso.show();
         this._shadow.show();
      }
      
      override public function hide(param1:Number = 0, param2:Function = null) : void
      {
         this._iso.hide();
         this._shadow.hide();
      }
      
      public function removeFromLayer(param1:DisplayObjectContainer) : void
      {
         if(this._iso.source.parent == param1)
         {
            param1.removeChild(this._iso.source);
         }
         if(this._shadow.source.parent == param1)
         {
            param1.removeChild(this._shadow.source);
         }
         if(this._obstacle.source.parent == param1)
         {
            param1.removeChild(this._obstacle.source);
         }
      }
      
      public function setPosition(param1:String, param2:Point, param3:int) : void
      {
         var _loc4_:DisplayObject = null;
         switch(param1)
         {
            case EInteriorItemAssetType.EIIAT_ISO:
               _loc4_ = this._iso.source;
               break;
            case EInteriorItemAssetType.EIIAT_OBSTACLE:
               _loc4_ = this._obstacle.source;
               break;
            case EInteriorItemAssetType.EIIAT_SHADOW:
               _loc4_ = this._shadow.source;
         }
         _loc4_.x = 50 * param2.x;
         _loc4_.y = 800 + 50 * param2.y + param3;
      }
      
      public function isHitTest(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Bitmap = (this._obstacle.source as DisplayObjectContainer).getChildAt(0) as Bitmap;
         param1 -= this._obstacle.source.x + _loc4_.x;
         param2 -= this._obstacle.source.y + _loc4_.y;
         return _loc4_.bitmapData != null && _loc4_.bitmapData.getPixel32(param1,param2) > 285212671;
      }
      
      public function replaceIsoBitmap() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:Sprite = null;
         _loc1_ = null;
         _loc2_ = null;
         _loc1_ = this._isoTemporary.getChildAt(0) as Bitmap;
         _loc2_ = UtilsBitmap.initSpriteWithOnlyFilledArea(_loc1_);
         _loc2_.x = _loc1_.x;
         _loc2_.y = _loc1_.y;
         _loc2_.cacheAsBitmap = true;
         (this._iso.source as DisplayObjectContainer).addChild(_loc2_);
      }
   }
}

