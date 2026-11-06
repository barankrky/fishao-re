package com.ax3.fishao.display.dialogs
{
   import flash.display.DisplayObject;
   import flash.text.TextField;
   
   public class SequentTextFieldMediator
   {
      
      public var gap:int = 5;
      
      private var _objects:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      public function SequentTextFieldMediator(... rest)
      {
         var _loc2_:Object = null;
         super();
         for each(_loc2_ in rest)
         {
            if(_loc2_ is DisplayObject)
            {
               this._objects.push(_loc2_);
            }
         }
         this.displace();
      }
      
      public function setValue(param1:int, param2:String) : void
      {
         if(param1 in this._objects)
         {
            if(this._objects[param1] is TextField)
            {
               (this._objects[param1] as TextField).text = param2;
            }
         }
         this.displace();
      }
      
      public function displace() : void
      {
         var _loc1_:int = 0;
         if(this._objects.length > 0)
         {
            _loc1_ = 1;
            while(_loc1_ < this._objects.length)
            {
               this._objects[_loc1_].x = int(this._objects[_loc1_ - 1].x + this.getWidth(this._objects[_loc1_ - 1]) + this.gap);
               _loc1_++;
            }
         }
      }
      
      private function getWidth(param1:DisplayObject) : Number
      {
         if(param1 is TextField)
         {
            return (param1 as TextField).textWidth + 5;
         }
         return param1.width;
      }
   }
}

