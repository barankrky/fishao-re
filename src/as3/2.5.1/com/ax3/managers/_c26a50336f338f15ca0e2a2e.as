package com.ax3.managers
{
   public class _c26a50336f338f15ca0e2a2e
   {
      
      public var x:Number;
      
      public var y:Number;
      
      public var objects:Vector.<_55043b34818a7b88d28e92ef> = new Vector.<_55043b34818a7b88d28e92ef>();
      
      public function _c26a50336f338f15ca0e2a2e(param1:Number, param2:Number)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
      
      public function push(param1:_55043b34818a7b88d28e92ef) : void
      {
         this.objects.push(param1);
      }
      
      public function remove(param1:_55043b34818a7b88d28e92ef) : void
      {
         var _loc2_:Number = this.objects.indexOf(param1);
         if(_loc2_ > (-771811561 ^ -1468552012 ^ -360325805 ^ 0x6CF2990F))
         {
            this.objects.splice(_loc2_,-1978380059 ^ -1997745813 ^ -1073295593 ^ -1023521128);
         }
      }
   }
}

