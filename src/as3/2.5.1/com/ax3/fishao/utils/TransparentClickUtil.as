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
      
      var _temp_2:* = §§findproperty(BitmapData);
      var _temp_1:* = -1594271912 ^ 0x7F0633 ^ -1754467460 ^ 0x37EAA216;
      
      private static var _bitmapData:BitmapData = new BitmapData(_temp_1,_temp_1,true,-1761856713 ^ -334113664 ^ 0x1B0717F3 ^ 0x61EEF044);
      
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
         var _temp_3:* = _bitmapData;
         var _temp_2:* = 0x0AB3AECB ^ 0x38C4A3F2 ^ -344948400 ^ -653816727;
         _temp_3.setPixel32(_temp_2,_temp_2,_temp_2);
         var _temp_8:* = _bitmapData;
         var _temp_7:* = param1;
         var _temp_6:* = §§findproperty(Matrix);
         var _temp_5:* = 0x0F57133F ^ 0x617CE7C2 ^ -1875454388 ^ -31645008;
         var _temp_4:* = -764848447 ^ 0x380E6F08 ^ 0x7E171E74 ^ -1804589123;
         _temp_8.draw(_temp_7,new Matrix(_temp_5,_temp_4,_temp_4,0x795299D5 ^ 0x4A02A0C6 ^ -259233908 ^ -1008968034,-param1.mouseX,-param1.mouseY));
         var _temp_10:* = _bitmapData;
         var _temp_9:* = -582983842 ^ -1356290589 ^ -1729282366 ^ -360332161;
         var _loc2_:uint = _temp_10.getPixel32(_temp_9,_temp_9);
         return _loc2_ > (0x06DDDC49 ^ 0x19C5B450 ^ -1391256651 ^ -1292596141);
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
         var _loc1_:int = 0x45085124 ^ 0x5FA42C49 ^ -1677778385 ^ 0x5B0FFA13;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1951573425 ^ -1552318483 ^ 0x73BD044E ^ -2127199042))
            {
               case 0:
                  _lastObj.dispatchEvent(new MouseEvent(MouseEvent.ROLL_OUT));
                  _lastObj = null;
                  _loc1_ = 0x543EDD75 ^ 0x2D6D9136 ^ 0x47821D58 ^ -460458933;
                  break;
               case 1:
                  if(_lastObj.hasEventListener(MouseEvent.ROLL_OUT))
                  {
                     _loc1_ = -1275430663 ^ -1231808123 ^ -567070334 ^ 0x0101F5AC;
                  }
                  else
                  {
                     _loc1_ = -1629444779 ^ 0x56116719 ^ -312569466 ^ -788838;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  if(_lastObj)
                  {
                     _loc1_ = 0x3E4AD036 ^ 0x66CE7927 ^ -775792375 ^ 0x531A554B;
                  }
                  else
                  {
                     _loc1_ = -1755185813 ^ 0x12CA7E44 ^ -821428284 ^ -1862346309;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function get lastObj() : DisplayObject
      {
         return _lastObj;
      }
      
      public static function set lastObj(param1:DisplayObject) : void
      {
         var _loc2_:int = 0x66BB7773 ^ -345309813 ^ -1806966982 ^ -1198859460;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-830689148 ^ -669378107 ^ -538933453 ^ 0x6896A08C))
            {
               case 0:
                  if(_lastObj != param1)
                  {
                     _loc2_ = 0x1509996E ^ -1810093642 ^ -1938798483 ^ -1401588151;
                  }
                  else
                  {
                     _loc2_ = 0x6130BADC ^ 0x481BAC37 ^ 0x21B38CB5 ^ -1450699615;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  objectForOut();
                  _lastObj = param1;
                  _loc2_ = -837796336 ^ 0x1CF5C2E1 ^ 0x30EDF88D ^ 0x43188A83;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

