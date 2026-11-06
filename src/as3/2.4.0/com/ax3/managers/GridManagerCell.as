package com.ax3.managers
{
   public class GridManagerCell
   {
      
      public var x:Number;
      
      public var y:Number;
      
      public var objects:Vector.<GridManagerObject> = new Vector.<GridManagerObject>();
      
      public function GridManagerCell(param1:Number, param2:Number)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
      
      public function push(param1:GridManagerObject) : void
      {
         this.objects.push(param1);
      }
      
      public function remove(param1:GridManagerObject) : void
      {
         var _loc2_:Number = this.objects.indexOf(param1);
         if(_loc2_ > -1)
         {
            this.objects.splice(_loc2_,1);
         }
      }
   }
}

