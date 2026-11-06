package com.ax3.fishao.locations.sublocation
{
   import com.ax3.utils.BitmapUtil;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   
   public class SublocationEnter
   {
      
      public var id:int;
      
      private var _hitMap:BitmapData;
      
      private var _hitMapOffsetX:int;
      
      private var _hitMapOffsetY:int;
      
      private var _isEnabled:Boolean;
      
      public function SublocationEnter()
      {
         super();
      }
      
      public static function findIdByName(param1:String) : int
      {
         var _loc2_:String = null;
         var _loc3_:int = -1;
         var _loc4_:Array = param1.split("_");
         if(_loc4_.length > 0)
         {
            _loc2_ = _loc4_[_loc4_.length - 1];
            if(_loc2_ == "exit")
            {
               _loc3_ = -1;
            }
            else
            {
               _loc3_ = parseInt(_loc2_);
            }
         }
         return _loc3_;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this._isEnabled = param1;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this.id = findIdByName(param1.name);
         this._hitMap = BitmapUtil.clone(param1);
         this._hitMapOffsetX = param1.x;
         this._hitMapOffsetY = param1.y;
         this._isEnabled = true;
         if(param1.parent != null)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function hitTestPoint(param1:Number, param2:Number) : Boolean
      {
         return this._hitMap == null || !this._isEnabled ? false : this._hitMap.getPixel32(param1 - this._hitMapOffsetX,param2 - this._hitMapOffsetY) > 16777215;
      }
      
      public function destroy() : void
      {
         this._hitMap.dispose();
         this._hitMap = null;
      }
   }
}

