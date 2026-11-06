package com.ax3.jpsearch
{
   import flash.geom.Point;
   
   public class JpsPoint extends Point
   {
      
      public var g:int;
      
      public var f:int;
      
      public var opened:Boolean;
      
      public var closed:Boolean;
      
      public var parent:JpsPoint;
      
      public var h:int;
      
      public function JpsPoint(param1:int = 0, param2:int = 0)
      {
         super(param1,param2);
      }
   }
}

