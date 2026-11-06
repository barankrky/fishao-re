package com.ax3.fishao.utils
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.junkbyte.console.Cc;
   
   public class UtilsArray
   {
      
      public function UtilsArray()
      {
         super();
      }
      
      public static function createMultidimensionalArray(param1:Array) : Array
      {
         if(param1.length == 0)
         {
            return [];
         }
         var _loc2_:int = param1.shift();
         var _loc3_:Array = new Array(_loc2_);
         if(param1.length == 0)
         {
            return _loc3_;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc3_[_loc4_] = createMultidimensionalArray(createCopy(param1));
            _loc4_++;
         }
         return _loc3_;
      }
      
      private static function createCopy(param1:Array) : Array
      {
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_.push(param1[_loc3_]);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function removeValue(param1:Array, param2:Object) : int
      {
         var _loc3_:int = -1;
         Debug.assertNotEqual(param1,null);
         Debug.assertNotEqual(param2,null);
         _loc3_ = param1.indexOf(param2);
         if(_loc3_ == -1)
         {
            Cc.warn("Can\'t remove value from array. Value not found.");
         }
         else
         {
            param1.splice(_loc3_,1);
         }
         return _loc3_;
      }
      
      public static function setIndex(param1:Array, param2:Object, param3:uint) : void
      {
         var _loc4_:int = param1.indexOf(param2);
         if(ConstantsBase.INDEX_NONE != _loc4_)
         {
            param1.splice(_loc4_,1);
         }
         param1.splice(param3,0,param2);
      }
      
      public static function sortArrayQuick(param1:Array, param2:Function) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:* = 0;
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc8_:int = 1;
         while(_loc8_ < param1.length)
         {
            _loc3_ = param1[_loc8_];
            _loc4_ = param2(_loc3_);
            _loc5_ = int(_loc8_ - 1);
            _loc6_ = param1[_loc5_];
            _loc7_ = param2(_loc6_);
            while(_loc5_ >= 0 && _loc7_ > _loc4_)
            {
               setIndex(param1,_loc6_,_loc5_ + 1);
               _loc5_--;
               if(_loc5_ >= 0)
               {
                  _loc6_ = param1[_loc5_];
                  _loc7_ = param2(_loc6_);
               }
            }
            setIndex(param1,_loc3_,_loc5_ + 1);
            _loc8_++;
         }
      }
      
      public static function mergeArrays(param1:Array, param2:Array) : Array
      {
         var _loc3_:Array = [];
         mergeArraysInternal(_loc3_,param1);
         mergeArraysInternal(_loc3_,param2);
         return _loc3_;
      }
      
      private static function mergeArraysInternal(param1:Array, param2:Array) : void
      {
         var _loc3_:Object = null;
         for each(_loc3_ in param2)
         {
            param1.push(_loc3_);
         }
      }
      
      public static function shuffle(param1:Array) : void
      {
         var _loc2_:Object = null;
         Debug.assertNotEqual(param1,null,"UtilsArray::shuffle::array");
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = randomValue(param1);
            removeValue(param1,_loc2_);
            param1.push(_loc2_);
            _loc3_++;
         }
      }
      
      public static function randomValue(param1:Array) : *
      {
         var _loc2_:uint = Utils.randomFromTo(0,param1.length - 1);
         return param1[_loc2_];
      }
   }
}

