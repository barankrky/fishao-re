package com.ax3.display.tfs
{
   public class TextFieldStyle
   {
      
      public var parentStyles:Array = [];
      
      public var format:Object = {};
      
      public var params:Object = {};
      
      public function TextFieldStyle(param1:Object, param2:Object = null, param3:Array = null)
      {
         super();
         if(param1 != null)
         {
            this.format = param1;
         }
         if(param2 != null)
         {
            this.params = param2;
         }
         if(param3 != null)
         {
            this.parentStyles = param3;
         }
      }
      
      public function set size(param1:Object) : void
      {
         if(this.format.hasOwnProperty("size"))
         {
            this.format.size = param1;
            return;
         }
         throw new Error("First, add a property \'size\' to the object - format !");
      }
      
      public function set align(param1:String) : void
      {
         if(this.format.hasOwnProperty("align"))
         {
            this.format.align = param1;
            if(this.params.hasOwnProperty("autoSize"))
            {
               this.params.autoSize = param1;
               return;
            }
            throw new Error("First, add a property \'autoSize\' to the object - params !");
         }
         throw new Error("First, add a property \'align\' to the object - format !");
      }
      
      public function set color(param1:Object) : void
      {
         if(this.format.hasOwnProperty("color"))
         {
            this.format.color = param1;
            return;
         }
         throw new Error("First, add a property \'size\' to the object - format !");
      }
   }
}

