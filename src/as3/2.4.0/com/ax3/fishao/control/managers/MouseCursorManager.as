package com.ax3.fishao.control.managers
{
   import com.ax3.fishao.core.ICursorTarget;
   import com.ax3.fishao.utils.TransparentClickUtil;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class MouseCursorManager
   {
      
      public static const LOCK:String = "locked";
      
      public static const FISH:String = "fishing";
      
      public static const STAGE:String = "auto";
      
      public static const WAITING:String = "waiting";
      
      public function MouseCursorManager()
      {
         super();
      }
      
      private static function bitmapDataFromClass(param1:Class) : Vector.<BitmapData>
      {
         var _loc2_:Bitmap = new param1() as Bitmap;
         var _loc3_:Matrix = new Matrix();
         if(_loc2_.width > _loc2_.height)
         {
            _loc2_.width = 32;
            _loc2_.scaleY = _loc2_.scaleX;
         }
         else
         {
            _loc2_.height = 32;
            _loc2_.scaleX = _loc2_.scaleY;
         }
         _loc3_.scale(_loc2_.scaleX,_loc2_.scaleY);
         var _loc4_:BitmapData = new BitmapData(_loc2_.width,_loc2_.height,true,0);
         _loc4_.draw(_loc2_,_loc3_,null,null,null,true);
         var _loc5_:Vector.<BitmapData> = new Vector.<BitmapData>(1,true);
         _loc5_[0] = _loc4_;
         return _loc5_;
      }
      
      public static function init(param1:Stage) : void
      {
      }
      
      private static function onMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         var _loc3_:int = int(param1.currentTarget.mouseX);
         var _loc4_:int = int(param1.currentTarget.mouseY);
         addCursor(_loc2_);
      }
      
      private static function addCursor(param1:DisplayObject) : void
      {
         var _loc2_:ICursorTarget = null;
         if(checkForAvailability(param1))
         {
            _loc2_ = ICursorTarget(param1);
            if(TransparentClickUtil.isHitOnObject(DisplayObject(param1)))
            {
               setCursor(_loc2_.getCursorName());
            }
            else if(!TransparentClickUtil.doOtherInteractiveObjects(param1 as DisplayObject,checkForAvailability,checkCurrentWithFinded,addCursor))
            {
               setCursor(STAGE);
            }
         }
         else
         {
            setCursor(STAGE);
         }
      }
      
      private static function checkForAvailability(param1:DisplayObject) : Boolean
      {
         return param1 is ICursorTarget;
      }
      
      private static function checkCurrentWithFinded(param1:DisplayObject) : Boolean
      {
         return false;
      }
      
      private static function setCursor(param1:String) : void
      {
         var type:String = param1;
         if(Mouse.cursor == type)
         {
            return;
         }
         try
         {
            Mouse.cursor = type;
         }
         catch(e:ArgumentError)
         {
            Mouse.cursor = MouseCursor.AUTO;
         }
      }
   }
}

