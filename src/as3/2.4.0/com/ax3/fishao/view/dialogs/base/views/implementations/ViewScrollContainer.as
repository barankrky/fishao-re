package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.EScrollDirectionType;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ViewScrollContainer extends ViewBase
   {
      
      private static const INSTANCE_NAME_SCROLL:String = "viewScroll";
      
      private static const INSTANCE_NAME_CONTAINER_MASK:String = "containerMask";
      
      private var _source:DisplayObjectContainer;
      
      private var _containerMask:DisplayObjectContainer;
      
      private var _maskSize:Point;
      
      private var _mouseHandleArea:Sprite;
      
      private var _viewContainerItems:ViewContainerItems;
      
      private var _viewScroll:ViewScroll;
      
      private var _scrollDirectionType:String;
      
      private var _position:Number;
      
      public function ViewScrollContainer(param1:IController, param2:DisplayObjectContainer, param3:String)
      {
         this._scrollDirectionType = param3;
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._viewContainerItems.items = param1;
         var _loc2_:Number = 0;
         switch(this._scrollDirectionType)
         {
            case EScrollDirectionType.ESDT_HORIZONTAL:
               _loc2_ = this._maskSize.x / this._viewContainerItems.source.width;
               break;
            case EScrollDirectionType.ESDT_VERTICAL:
               _loc2_ = this._maskSize.y / this._viewContainerItems.source.height;
               break;
            default:
               Debug.assert(false,"Unsupported EScrollDirectionType on set Items method of ViewScrollContainer: " + this._scrollDirectionType);
         }
         this._viewScroll.bodySizeRelated = _loc2_;
      }
      
      public function get itemsCount() : int
      {
         return this._viewContainerItems.itemsCount;
      }
      
      public function set position(param1:Number) : void
      {
         this._position = param1;
         this._viewScroll.position = param1;
         this.updateItemsPosition();
      }
      
      public function get position() : Number
      {
         return this._position;
      }
      
      public function get viewScroll() : ViewScroll
      {
         return this._viewScroll;
      }
      
      public function get viewContainerItems() : ViewContainerItems
      {
         return this._viewContainerItems;
      }
      
      private function init() : void
      {
         this._viewContainerItems = new ViewContainerItems(controller);
         this._viewContainerItems.size = new Point(1,int.MAX_VALUE);
         this._viewContainerItems.offset = new Point(0,3.5);
         this._viewContainerItems.gap = new Point(0,3.5);
         this._containerMask = Debug.assertProperty(this._source,INSTANCE_NAME_CONTAINER_MASK);
         this._maskSize = new Point(this._containerMask.width,this._containerMask.height);
         this._containerMask.scrollRect = new Rectangle(0,0,this._maskSize.x,this._maskSize.y);
         this._containerMask.removeChildren();
         this._mouseHandleArea = new Sprite();
         this._mouseHandleArea.graphics.beginFill(0,0);
         this._mouseHandleArea.graphics.drawRect(0,0,this._maskSize.x,this._maskSize.y);
         this._mouseHandleArea.graphics.endFill();
         this._mouseHandleArea.cacheAsBitmap = true;
         this._source.addChildAt(this._mouseHandleArea,this._source.getChildIndex(this._containerMask));
         this._containerMask.addChild(this._viewContainerItems.source);
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(this._source,INSTANCE_NAME_SCROLL);
         this._viewScroll = new ViewScroll(controller,_loc1_,this._scrollDirectionType);
         this._viewScroll.offset = new Point(3,4);
         this.updateItemsPosition();
      }
      
      private function updateItemsPosition() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         switch(this._scrollDirectionType)
         {
            case EScrollDirectionType.ESDT_HORIZONTAL:
               _loc1_ = (this._viewContainerItems.width - this._maskSize.x) * this._viewScroll.position;
               break;
            case EScrollDirectionType.ESDT_VERTICAL:
               _loc2_ = (this._viewContainerItems.height - this._maskSize.y) * this._viewScroll.position;
               break;
            default:
               Debug.assert(false,"Unsupported EScrollDirectionType on updateBodySize method of ViewScrollContainer: " + this._scrollDirectionType);
         }
         this._containerMask.scrollRect = new Rectangle(_loc1_,_loc2_,this._maskSize.x,this._maskSize.y);
      }
      
      public function showItemByIndex(param1:int) : void
      {
         var _loc2_:Point = this._viewContainerItems.getItemByIndexPosition(param1);
         switch(this._scrollDirectionType)
         {
            case EScrollDirectionType.ESDT_HORIZONTAL:
               this.position = (_loc2_.x - this._viewContainerItems.offset.x) / (this._viewContainerItems.source.width - this._maskSize.x + this._viewContainerItems.offset.x + this._viewContainerItems.additionalSize.x);
               break;
            case EScrollDirectionType.ESDT_VERTICAL:
               this.position = (_loc2_.y - this._viewContainerItems.offset.y) / (this._viewContainerItems.source.height - this._maskSize.y + this._viewContainerItems.offset.y + this._viewContainerItems.additionalSize.y);
               break;
            default:
               Debug.assert(false,"Unsupported EScrollDirectionType on set Items method of ViewScrollContainer: " + this._scrollDirectionType);
         }
      }
      
      override public function cleanup() : void
      {
         this._viewContainerItems.cleanup();
         this._viewScroll.cleanup();
         this._maskSize = null;
         super.cleanup();
      }
   }
}

