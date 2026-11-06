package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.utils.ColorMatrix;
   import com.inkora.easing.Elastic;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class ChatButtonWrapper
   {
      
      private static var disableColorMatrix:ColorMatrix = new ColorMatrix([0.29140390000000005,0.643644,0.0649521,0,0.25,0.19140390000000002,0.743644,0.0649521,0,0.25,0.19140390000000002,0.643644,0.1649521,0,0.25,0,0,0,1,0]);
      
      private static var DISABLE_FILTERS:Array = [disableColorMatrix.filter];
      
      private static var NORMAL_FILTERS:Array = [];
      
      private var _button:MovieClip;
      
      private var _handler:Function;
      
      private var _isShowed:Boolean;
      
      private var _enabled:Boolean = true;
      
      private var _isHitOnMe:Boolean;
      
      public function ChatButtonWrapper(param1:MovieClip, param2:Function)
      {
         super();
         this._button = param1;
         this._handler = param2;
         param1.buttonMode = true;
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         param1.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
      }
      
      public function get button() : MovieClip
      {
         return this._button;
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         if(this._enabled && this._isHitOnMe)
         {
            TweenCube.destroyTweensOf(this._button,false);
            TweenCube.to(this._button,0.01,{"y":24},{
               "onComplete":this._handler,
               "onCompleteParams":[param1]
            });
         }
         this._isHitOnMe = false;
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         if(this._enabled)
         {
            if(this._isShowed)
            {
               this._isHitOnMe = true;
               TweenCube.to(this._button,0.01,{"y":26});
            }
         }
      }
      
      public function show() : void
      {
         TweenCube.destroyTweensOf(this._button,false);
         TweenCube.to(this._button,0.5,{"x":-60},{"ease":Elastic.easeOut});
         this._isShowed = true;
      }
      
      public function hide() : void
      {
         TweenCube.destroyTweensOf(this._button,false);
         TweenCube.to(this._button,0.5,{"x":4},{"ease":Elastic.easeOut});
         this._isShowed = false;
         this._isHitOnMe = false;
      }
      
      public function isShowed() : Boolean
      {
         return this._isShowed;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._button.visible = param1;
         this._isHitOnMe = false;
      }
      
      public function disable() : void
      {
         this._enabled = false;
         this._button.filters = DISABLE_FILTERS;
         this._isHitOnMe = false;
      }
      
      public function enable() : void
      {
         this._enabled = true;
         this._button.filters = NORMAL_FILTERS;
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function get x() : Number
      {
         return this._button.x;
      }
      
      public function get y() : Number
      {
         return this._button.y;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this._button.parent;
      }
      
      public function get width() : Number
      {
         return this._button.width;
      }
      
      public function get height() : Number
      {
         return this._button.height;
      }
   }
}

