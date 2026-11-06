package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.buttons.FrameBaseButton;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class FrameButtonWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      protected var _button:FrameBaseButton;
      
      protected var _buttonCls:Class = FrameBaseButton;
      
      public function FrameButtonWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         var _loc2_:StandardBitmapButtonConfiguration = new StandardBitmapButtonConfiguration();
         _loc2_.asset = _child;
         if(_child is DisplayObjectContainer && Boolean(DisplayObjectContainer(_child).getChildByName("label")))
         {
            _loc2_.labelField = TextField(DisplayObjectContainer(_child).getChildByName("label"));
         }
         this._button = new this._buttonCls(_loc2_,null);
         addChild(this._button);
      }
      
      public function set handler(param1:Function) : void
      {
         this._button.handler = param1;
      }
      
      public function disable() : void
      {
         this._button.disable();
      }
      
      public function enable() : void
      {
         this._button.enable();
      }
      
      public function get enabled() : Boolean
      {
         return this._button.enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this._button.enabled = param1;
      }
      
      public function remove() : void
      {
         removeChild(this._button);
      }
      
      public function set label(param1:String) : void
      {
         this._button.label = param1;
      }
      
      public function set label2(param1:String) : void
      {
         if(DisplayObjectContainer(_child).getChildByName("label2") != null)
         {
            TextField(DisplayObjectContainer(_child).getChildByName("label2")).text = param1;
         }
      }
      
      public function click() : void
      {
         this._button.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
      
      public function set tooltipConfig(param1:Object) : void
      {
         this._button.tooltipConfig = param1;
      }
      
      public function get button() : FrameBaseButton
      {
         return this._button;
      }
      
      public function hide() : void
      {
         this._button.visible = false;
      }
      
      public function show() : void
      {
         this._button.visible = true;
      }
   }
}

