package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.core.DisposableObject;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_input.ViewInput;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ViewBase extends DisposableObject implements IView
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _controller:IController;
      
      private var _stage:Stage;
      
      private var _tooltipTarget:ToolTipTargetMovieClip;
      
      public function ViewBase(param1:IController, param2:DisplayObjectContainer)
      {
         super();
         this._source = Debug.assertNotEqual(param2,null);
         this._controller = Debug.assertNotEqual(param1,null);
         this._stage = Debug.assertNotEqual(GameSwf.stage,null);
      }
      
      public function set tooltipText(param1:String) : void
      {
         this._tooltipTarget.tooltipConfig = {"text":param1};
      }
      
      public function get source() : DisplayObject
      {
         return this._source;
      }
      
      protected function get controller() : IController
      {
         return this._controller;
      }
      
      protected function onMouseClick(param1:MouseEvent) : void
      {
         this._controller.onViewClicked(this,param1);
      }
      
      private function onMouseClickEvent(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         this._controller.onViewMouseMove(this,param1);
      }
      
      protected function onMouseUpOver(param1:MouseEvent) : void
      {
         this._controller.onViewMouseUp(this,param1);
      }
      
      protected function onMouseUpOut(param1:Event) : void
      {
         this._controller.onViewMouseUpOut(this,param1 is MouseEvent ? MouseEvent(param1) : null);
      }
      
      protected function onMouseOver(param1:MouseEvent) : void
      {
         this._controller.onViewMouseOver(this,param1);
      }
      
      protected function onMouseOut(param1:MouseEvent) : void
      {
         this._controller.onViewMouseOut(this,param1);
      }
      
      protected function onMouseDown(param1:MouseEvent) : void
      {
         this._controller.onViewMouseDown(this,param1);
      }
      
      protected function onMouseWheel(param1:MouseEvent) : void
      {
         this._controller.onViewMouseWheel(this,param1);
      }
      
      public function stopClickPropagation() : void
      {
         this._source.addEventListener(MouseEvent.CLICK,this.onMouseClickEvent);
      }
      
      public function handleEvents(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false) : void
      {
         this._source.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         this._source.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this._source.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpOver);
         this._stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpOut);
         this._stage.removeEventListener(Event.MOUSE_LEAVE,this.onMouseUpOut);
         this._source.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this._source.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this._source.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this._source.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         if(param1)
         {
            this._source.addEventListener(MouseEvent.CLICK,this.onMouseClick);
            this._source["buttonMode"] = true;
         }
         if(param2)
         {
            this._source.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         }
         if(param3)
         {
            this._source.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpOver);
         }
         if(param4)
         {
            this._stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpOut);
            this._stage.addEventListener(Event.MOUSE_LEAVE,this.onMouseUpOut);
         }
         if(param5)
         {
            this._source.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         }
         if(param6)
         {
            this._source.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         }
         if(param7)
         {
            this._source.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
         if(param8)
         {
            this._source.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         }
      }
      
      public function show(param1:Number = 0, param2:Function = null) : void
      {
         this._source.visible = true;
      }
      
      public function hide(param1:Number = 0, param2:Function = null) : void
      {
         this._source.visible = false;
      }
      
      public function placeViews(param1:Boolean) : void
      {
      }
      
      public function initTooltip() : void
      {
         if(this._tooltipTarget != null)
         {
            return;
         }
         this._source.mouseChildren = true;
         this._tooltipTarget = new ToolTipTargetMovieClip();
         this._tooltipTarget.x = 0;
         this._tooltipTarget.y = 0;
         this._tooltipTarget.graphics.beginFill(9461904,0);
         this._tooltipTarget.graphics.drawRect(0,0,this._source.width,this._source.height);
         this._tooltipTarget.graphics.endFill();
         this._source.addChild(this._tooltipTarget);
      }
      
      protected function createAutofitLabel(param1:String, param2:String, param3:DisplayObject = null) : TextFieldAutofitWrapper
      {
         var _loc4_:TextFieldAutofitWrapper = null;
         if(param3 == null)
         {
            param3 = this.source;
         }
         var _loc5_:TextField = Debug.assertProperty(param3,param1);
         _loc4_ = new TextFieldAutofitWrapper(_loc5_);
         _loc4_.text = UtilsString.isNullOrEmpty(param2) ? "" : I18n.get(param2);
         return _loc4_;
      }
      
      protected function createButton(param1:String, param2:DisplayObject = null, param3:Function = null) : FrameButtonWrapper
      {
         var source:DisplayObject = null;
         var result:FrameButtonWrapper = null;
         var buttonName:String = param1;
         var parent:DisplayObject = param2;
         var callback:Function = param3;
         result = null;
         result = new FrameButtonWrapper();
         if(parent == null)
         {
            parent = this.source;
         }
         if(callback == null)
         {
            callback = function(param1:Event):void
            {
               controller.onViewClicked(result,param1);
            };
         }
         source = Debug.assertProperty(parent,buttonName);
         result.process(source);
         result.handler = callback;
         return result;
      }
      
      protected function createInput(param1:String) : ViewInput
      {
         var _loc2_:ViewInput = new ViewInput(this.controller,Debug.assertProperty(this.source,param1));
         _loc2_.label.text = "";
         return _loc2_;
      }
      
      override public function cleanup() : void
      {
         this._source.removeEventListener(MouseEvent.CLICK,this.onMouseClickEvent);
         this.handleEvents();
         TweenLite.killTweensOf(this.source);
         super.cleanup();
      }
   }
}

