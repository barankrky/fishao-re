package com.ax3.managers
{
   import flash.geom.Rectangle;
   
   public class GridManagerObject
   {
      
      public var data:Object;
      
      public var rect:Rectangle;
      
      public var cells:Vector.<GridManagerCell> = new Vector.<GridManagerCell>();
      
      public function GridManagerObject()
      {
         super();
      }
      
      public function destroy() : void
      {
         this.data = null;
         this.rect = null;
         this.cells = null;
      }
   }
}

