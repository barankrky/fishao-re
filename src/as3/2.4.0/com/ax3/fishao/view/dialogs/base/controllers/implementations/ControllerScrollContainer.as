package com.ax3.fishao.view.dialogs.base.controllers.implementations
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewScrollContainer;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.EScrollDirectionType;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class ControllerScrollContainer extends Controller
   {
      
      private static const SCROLL_DISTANCE:Number = 30;
      
      private static const MOUSE_WHEEL_COEFF:Number = 1 / 3;
      
      private var _view:ViewScrollContainer;
      
      private var _scrollDirectionType:String;
      
      private var _scrollingEnable:Boolean;
      
      private var _lastMousePosition:Point;
      
      public function ControllerScrollContainer(param1:DisplayObjectContainer, param2:String)
      {
         this._scrollDirectionType = param2;
         this._view = new ViewScrollContainer(this,param1,param2);
         super(this._view);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._view.items = param1;
      }
      
      override public function onViewMouseDown(param1:IView, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super.onViewMouseDown(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.viewScroll:
                  this._scrollingEnable = true;
                  this._view.position = this._view.viewScroll.position;
                  this._lastMousePosition.x = param2.stageX;
                  this._lastMousePosition.y = param2.stageY;
                  this.addStageListeners();
                  break;
               default:
                  Debug.assert(false,"Couldn\'t handle onViewMouseDown event on target: " + param1);
            }
         }
         return _loc3_;
      }
      
      override public function onViewMouseWheel(param1:IView, param2:MouseEvent) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Point = null;
         var _loc6_:Boolean = super.onViewMouseWheel(param1,param2);
         if(!_loc6_)
         {
            this._lastMousePosition.x = param2.stageX;
            this._lastMousePosition.y = param2.stageY;
            _loc3_ = 0;
            _loc4_ = 0;
            this._view.position = this._view.viewScroll.position;
            switch(this._scrollDirectionType)
            {
               case EScrollDirectionType.ESDT_HORIZONTAL:
                  _loc3_ = param2.delta * SCROLL_DISTANCE * MOUSE_WHEEL_COEFF * (this._view.viewScroll.source.width / this._view.viewContainerItems.width);
                  break;
               case EScrollDirectionType.ESDT_VERTICAL:
                  _loc4_ = param2.delta * SCROLL_DISTANCE * MOUSE_WHEEL_COEFF * (this._view.viewScroll.source.height / this._view.viewContainerItems.height);
                  break;
               default:
                  Debug.assert(false,"Unsupported EScrollDirectionType on set Items method of ViewScrollContainer: " + this._scrollDirectionType);
            }
            _loc5_ = new Point(this._lastMousePosition.x - _loc3_,this._lastMousePosition.y - _loc4_);
            this.scrollTo(_loc5_);
         }
         return _loc6_;
      }
      
      private function onStageMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         if(this._scrollingEnable)
         {
            _loc2_ = new Point(param1.stageX,param1.stageY);
            this.scrollTo(_loc2_);
         }
      }
      
      private function onStageMouseUp(param1:MouseEvent) : void
      {
         this._scrollingEnable = false;
         this.removeStageListeners();
      }
      
      private function init() : void
      {
         this._scrollingEnable = false;
         this._lastMousePosition = new Point();
         this._view.handleEvents(false,false,false,false,false,false,false,true);
         this._view.position = 0;
         this.addStageListeners();
      }
      
      private function addStageListeners() : void
      {
         Debug.assertNotEqual(this._view.source.stage,null,"Impossible to add stage listeners using object that is not on stage. addStageListeners method, ControllerScrollContainer class");
         this._view.source.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onStageMouseMove);
         this._view.source.stage.addEventListener(MouseEvent.MOUSE_UP,this.onStageMouseUp);
      }
      
      private function removeStageListeners() : void
      {
         this._view.source.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onStageMouseMove);
         this._view.source.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onStageMouseUp);
      }
      
      private function scrollTo(param1:Point) : void
      {
         if(this._view.viewScroll.moveSpace == 0)
         {
            return;
         }
         switch(this._scrollDirectionType)
         {
            case EScrollDirectionType.ESDT_HORIZONTAL:
               this._view.position += (param1.x - this._lastMousePosition.x) / this._view.viewScroll.moveSpace;
               break;
            case EScrollDirectionType.ESDT_VERTICAL:
               this._view.position += (param1.y - this._lastMousePosition.y) / this._view.viewScroll.moveSpace;
               break;
            default:
               Debug.assert(false,"Unsupported EScrollDirectionType on set Items method of ViewScrollContainer: " + this._scrollDirectionType);
         }
         this._lastMousePosition.x = param1.x;
         this._lastMousePosition.y = param1.y;
      }
      
      public function scrollToItemIndex(param1:int) : void
      {
         if(param1 >= this._view.itemsCount)
         {
            return;
         }
         this._view.showItemByIndex(param1);
      }
      
      override public function cleanup() : void
      {
         this.removeStageListeners();
         super.cleanup();
      }
   }
}

