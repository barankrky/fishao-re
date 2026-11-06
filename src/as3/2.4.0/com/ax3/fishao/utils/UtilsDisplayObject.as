package com.ax3.fishao.utils
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.getQualifiedClassName;
   
   public class UtilsDisplayObject
   {
      
      public function UtilsDisplayObject()
      {
         super();
      }
      
      public static function detectMouseOver(param1:DisplayObject) : Boolean
      {
         var _loc2_:Point = param1.localToGlobal(new Point(param1.mouseX,param1.mouseY));
         return param1.hitTestPoint(_loc2_.x,_loc2_.y,true);
      }
      
      public static function setColor(param1:DisplayObject, param2:uint) : void
      {
         Debug.assertNotEqual(param1,null);
         var _loc3_:ColorTransform = new ColorTransform();
         _loc3_.color = param2;
         param1.transform.colorTransform = _loc3_;
      }
      
      public static function toFront(param1:DisplayObject) : void
      {
         if(param1.parent == null)
         {
            return;
         }
         param1.parent.setChildIndex(param1,param1.parent.numChildren - 1);
      }
      
      public static function toBack(param1:DisplayObject) : void
      {
         if(param1.parent == null)
         {
            return;
         }
         param1.parent.setChildIndex(param1,0);
      }
      
      public static function changeMouseHandleState(param1:DisplayObject, param2:Boolean) : void
      {
         if(param1 is InteractiveObject)
         {
            (param1 as InteractiveObject).mouseEnabled = param2;
         }
         if(param1 is DisplayObjectContainer)
         {
            (param1 as DisplayObjectContainer).mouseChildren = param2;
         }
      }
      
      public static function tryAddToParent(param1:DisplayObject, param2:DisplayObjectContainer) : void
      {
         if(param1.parent == param2)
         {
            return;
         }
         param2.addChild(param1);
      }
      
      public static function getAllChild(param1:DisplayObjectContainer, param2:int, param3:Array = null, param4:Array = null) : Array
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:DisplayObjectContainer = null;
         var _loc7_:Array = null;
         var _loc8_:DisplayObject = null;
         var _loc9_:Array = [];
         param3 = param3 == null ? [] : param3;
         param4 = param4 == null ? [] : param4;
         var _loc10_:int = 0;
         while(_loc10_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc10_);
            if(param3.indexOf(_loc5_) == ConstantsBase.INDEX_NONE)
            {
               if(param4.indexOf(getQualifiedClassName(_loc5_)) == ConstantsBase.INDEX_NONE)
               {
                  if(_loc5_ is DisplayObjectContainer && param2 != 0)
                  {
                     _loc6_ = _loc5_ as DisplayObjectContainer;
                     _loc7_ = getAllChild(_loc6_,param2 == ConstantsBase.INDEX_NONE ? param2 : int(param2 - 1),param3,param4);
                     for each(_loc8_ in _loc7_)
                     {
                        _loc9_.push(_loc8_);
                     }
                  }
                  else
                  {
                     _loc9_.push(_loc5_);
                  }
               }
            }
            _loc10_++;
         }
         return _loc9_;
      }
      
      public static function cacheAsBitmap(param1:DisplayObject, param2:Boolean = true) : void
      {
         var _loc3_:Array = null;
         var _loc4_:DisplayObject = null;
         Debug.assertNotEqual(param1,null,"UtilsDisplayObject::cacheAsBitmap::target");
         param1.cacheAsBitmap = param2;
         if(param1 is DisplayObjectContainer)
         {
            _loc3_ = getAllChild(param1 as DisplayObjectContainer,ConstantsBase.INDEX_NONE);
            for each(_loc4_ in _loc3_)
            {
               _loc4_.cacheAsBitmap = param2;
            }
         }
      }
   }
}

