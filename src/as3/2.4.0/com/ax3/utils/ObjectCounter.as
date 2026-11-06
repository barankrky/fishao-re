package com.ax3.utils
{
   public class ObjectCounter
   {
      
      private var _objects:Vector.<Object> = new Vector.<Object>();
      
      private var _count:int = 0;
      
      public function ObjectCounter()
      {
         super();
      }
      
      public function add(param1:Object) : void
      {
         if(this._objects.indexOf(param1) == -1)
         {
            this._objects.push(param1);
            this._count = this._objects.length;
         }
      }
      
      public function remove(param1:Object) : void
      {
         if(this._objects.indexOf(param1) != -1)
         {
            this._objects.splice(this._objects.indexOf(param1),1);
            this._count = this._objects.length;
         }
      }
      
      public function get count() : int
      {
         return this._count;
      }
   }
}

