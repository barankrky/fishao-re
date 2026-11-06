package com.ax3.fishao.view.dialogs.base.views.implementations.countdown
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewContainerItems;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewProgress;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ViewCountdown extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _labelDescription:TextField;
      
      private var _labelTime:TextField;
      
      private var _viewProgress:ViewProgress;
      
      private var _viewIcon:MovieClip;
      
      private var _buttonMinimize:FishaoButtonWrapper;
      
      private var _buttonMaximize:FishaoButtonWrapper;
      
      private var _viewMaximized:DisplayObjectContainer;
      
      private var _viewMinimized:DisplayObjectContainer;
      
      private var _viewContainerItems:ViewContainerItems;
      
      public function ViewCountdown(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._viewContainerItems.items = param1;
      }
      
      public function get viewMaximized() : DisplayObjectContainer
      {
         return this._viewMaximized;
      }
      
      public function get viewMinimized() : DisplayObjectContainer
      {
         return this._viewMinimized;
      }
      
      public function get buttonMinimize() : FishaoButtonWrapper
      {
         return this._buttonMinimize;
      }
      
      public function get buttonMaximize() : FishaoButtonWrapper
      {
         return this._buttonMaximize;
      }
      
      public function set description(param1:String) : void
      {
         this._labelDescription.text = param1;
      }
      
      public function set iconType(param1:String) : void
      {
         this._viewIcon.gotoAndStop(param1);
      }
      
      public function get labelDescription() : TextField
      {
         return this._labelDescription;
      }
      
      public function get labelTime() : TextField
      {
         return this._labelTime;
      }
      
      public function get viewProgress() : ViewProgress
      {
         return this._viewProgress;
      }
      
      private function init() : void
      {
         var viewProgress:DisplayObjectContainer = null;
         this._labelDescription = Debug.assertProperty(this._source,"labelDescription",TextField);
         this._labelTime = Debug.assertProperty(this._source,"labelTime",TextField);
         this._viewIcon = Debug.assertProperty(this._source,"viewIcon",MovieClip);
         viewProgress = Debug.assertProperty(this._source,"viewProgress");
         this._viewProgress = new ViewProgress(controller,viewProgress);
         this._buttonMinimize = new FishaoButtonWrapper();
         this._buttonMinimize.process(Debug.assertProperty(this._source,"buttonMinimize"));
         this._buttonMinimize.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonMinimize,param1);
         };
         this._buttonMaximize = new FishaoButtonWrapper();
         this._buttonMaximize.process(Debug.assertProperty(this._source,"buttonMaximize"));
         this._buttonMaximize.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonMaximize,param1);
         };
         this._viewMaximized = Debug.assertProperty(this._source,"viewMaximized");
         this._viewMinimized = Debug.assertProperty(this._source,"viewMinimized");
         this._viewContainerItems = new ViewContainerItems(controller);
         this._viewContainerItems.gap = new Point(0,2);
         this._viewContainerItems.size = new Point(1,5);
         this._viewContainerItems.offset = new Point(18,72);
         this._viewMaximized.addChild(this._viewContainerItems.source);
         handleEvents(false,false,true,false,true);
      }
   }
}

