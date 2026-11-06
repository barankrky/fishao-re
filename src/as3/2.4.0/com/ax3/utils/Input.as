package com.ax3.utils
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.ui.ContextMenu;
   import flash.utils.*;
   
   public class Input
   {
      
      private static var _stage:Stage;
      
      private static var _contextMenu:ContextMenu;
      
      private static var mousePos:Point = new Point(-1000,-1000);
      
      private static var mouseTrackable:Boolean = false;
      
      private static var mouseDetected:Boolean = false;
      
      private static var mouseIsDown:Boolean = false;
      
      private static var keysDown:Dictionary = new Dictionary();
      
      private static var keysPressed:Dictionary = new Dictionary();
      
      private static var keysUp:Dictionary = new Dictionary();
      
      private static var initialized:Boolean = false;
      
      public function Input()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(initialized)
         {
            return;
         }
         initialized = true;
         _stage = param1;
         _stage.addEventListener(KeyboardEvent.KEY_DOWN,handleKeyDown,false,0,true);
         _stage.addEventListener(KeyboardEvent.KEY_UP,handleKeyUp,false,0,true);
         _stage.addEventListener(MouseEvent.MOUSE_UP,handleMouseUp,false,0,true);
         _stage.addEventListener(MouseEvent.MOUSE_DOWN,handleMouseDown,false,0,true);
         _stage.addEventListener(MouseEvent.MOUSE_MOVE,handleMouseMove,false,0,true);
         _stage.addEventListener(Event.MOUSE_LEAVE,handleMouseLeave,false,0,true);
         _stage.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,handleDeactivate,false,0,true);
         _stage.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,handleDeactivate,false,0,true);
         _stage.addEventListener(Event.DEACTIVATE,handleDeactivate,false,0,true);
         _stage.addEventListener(Event.ACTIVATE,handleDeactivate,false,0,true);
         _contextMenu = new ContextMenu();
         _contextMenu.addEventListener(Event.ACTIVATE,handleDeactivate,false,0,true);
         _contextMenu.addEventListener(Event.DEACTIVATE,handleDeactivate,false,0,true);
         _contextMenu.addEventListener(ContextMenuEvent.MENU_SELECT,handleDeactivate,false,0,true);
      }
      
      public static function handleKeyDown(param1:KeyboardEvent) : void
      {
         if(!keysDown[param1.keyCode])
         {
            keysPressed[param1.keyCode] = true;
            keysDown[param1.keyCode] = true;
         }
      }
      
      public static function handleKeyUp(param1:KeyboardEvent) : void
      {
         keysUp[param1.keyCode] = true;
         keysDown[param1.keyCode] = false;
      }
      
      public static function clear() : void
      {
         keysUp = new Dictionary();
         keysPressed = new Dictionary();
         keysDown = new Dictionary();
      }
      
      public static function handleMouseEvent(param1:MouseEvent) : void
      {
         if(Math.abs(param1.stageX) < 900000)
         {
            mousePos.x = param1.stageX < 0 ? 0 : (param1.stageX > _stage.stageWidth ? _stage.stageWidth : param1.stageX);
            mousePos.y = param1.stageY < 0 ? 0 : (param1.stageY > _stage.stageHeight ? _stage.stageHeight : param1.stageY);
         }
         mouseTrackable = true;
         mouseDetected = true;
      }
      
      public static function handleMouseDown(param1:MouseEvent) : void
      {
         mouseIsDown = true;
         handleMouseEvent(param1);
      }
      
      public static function handleMouseUp(param1:MouseEvent) : void
      {
         mouseIsDown = false;
         handleMouseEvent(param1);
         clear();
      }
      
      public static function handleMouseMove(param1:MouseEvent) : void
      {
         handleMouseEvent(param1);
      }
      
      public static function handleMouseLeave(param1:Event) : void
      {
         mouseIsDown = false;
         mouseTrackable = false;
         clear();
      }
      
      public static function handleDeactivate(param1:Event) : void
      {
         mouseIsDown = false;
         mouseTrackable = false;
         clear();
      }
      
      public static function isKeyDown(... rest) : Boolean
      {
         return keySearch(keysDown,rest);
      }
      
      public static function isKeyUp(... rest) : Boolean
      {
         return keySearch(keysUp,rest);
      }
      
      public static function isKeyPress(... rest) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = keySearch(keysPressed,rest);
         for each(_loc2_ in rest)
         {
            keysPressed[_loc2_] = false;
         }
         return _loc3_;
      }
      
      public static function keySearch(param1:Dictionary, param2:Array) : Boolean
      {
         var _loc3_:int = 0;
         for each(_loc3_ in param2)
         {
            if(param1[_loc3_])
            {
               return true;
            }
         }
         return false;
      }
   }
}

