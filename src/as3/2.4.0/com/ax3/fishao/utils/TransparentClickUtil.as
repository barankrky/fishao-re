package com.ax3.fishao.utils
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class TransparentClickUtil
   {
      
      private static var _lastObj:DisplayObject;
      
      private static var _instance:TransparentClickUtil;
      
      private static var _bitmapData:BitmapData = new BitmapData(1,1,true,0);
      
      public function TransparentClickUtil()
      {
         super();
      }
      
      public static function isHitOnObject(param1:DisplayObject) : Boolean
      {
         if(param1 == null || param1.stage == null)
         {
            return false;
         }
         _bitmapData.setPixel32(0,0,0);
         _bitmapData.draw(param1,new Matrix(1,0,0,1,-param1.mouseX,-param1.mouseY));
         var _loc2_:uint = _bitmapData.getPixel32(0,0);
         return _loc2_ > 16777215;
      }
      
      public static function doOtherInteractiveObjects(param1:DisplayObject, param2:Function, param3:Function, param4:Function, param5:Function = null) : Boolean
      {
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         if(param1.stage == null)
         {
            return false;
         }
         var _loc8_:Array = param1.stage.getObjectsUnderPoint(new Point(param1.stage.mouseX,param1.stage.mouseY));
         _loc8_.reverse();
         var _loc9_:Boolean = false;
         for each(_loc6_ in _loc8_)
         {
            if(_loc9_)
            {
               break;
            }
            _loc7_ = _loc6_;
            if(isHitOnObject(_loc7_))
            {
               while(_loc7_.parent)
               {
                  if(param2.call(null,_loc7_))
                  {
                     _loc9_ = true;
                     break;
                  }
                  _loc7_ = _loc7_.parent;
               }
            }
         }
         if(Boolean(_loc7_ != null) && Boolean(param2.call(null,_loc7_)) && !param3.call(null,_loc7_))
         {
            if(lastObj != _loc7_)
            {
               lastObj = _loc7_;
            }
            param4(_loc7_);
            return true;
         }
         return false;
      }
      
      public static function clearOtherInteractiveObjects(param1:DisplayObject) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(!param1.stage)
         {
            return;
         }
         for each(_loc2_ in param1.stage.getObjectsUnderPoint(new Point(param1.stage.mouseX,param1.stage.mouseY)))
         {
            _loc3_ = _loc2_;
            while(!(_loc3_ is Sprite))
            {
               if(!_loc3_.parent)
               {
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
            if(Boolean(_loc3_.hasEventListener(MouseEvent.MOUSE_OUT)) && _loc3_ != param1)
            {
               _loc3_.dispatchEvent(new MouseEvent(MouseEvent.MOUSE_OUT));
            }
         }
      }
      
      public static function objectForOut() : void
      {
         if(_lastObj)
         {
            if(_lastObj.hasEventListener(MouseEvent.ROLL_OUT))
            {
               _lastObj.dispatchEvent(new MouseEvent(MouseEvent.ROLL_OUT));
               _lastObj = null;
            }
         }
      }
      
      public static function get lastObj() : DisplayObject
      {
         return _lastObj;
      }
      
      public static function set lastObj(param1:DisplayObject) : void
      {
         if(_lastObj != param1)
         {
            objectForOut();
            _lastObj = param1;
         }
      }
   }
}

