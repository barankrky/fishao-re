package com.ax3.display.buttons
{
   public class ButtonState
   {
      
      public static const NORMAL:ButtonState = new ButtonState("normal");
      
      public static const OVER:ButtonState = new ButtonState("over");
      
      public static const DOWN:ButtonState = new ButtonState("down");
      
      public static const DISABLED:ButtonState = new ButtonState("disabled");
      
      public static const DEFAULT:ButtonState = NORMAL;
      
      public var name:String;
      
      public function ButtonState(param1:String)
      {
         super();
         this.name = param1;
      }
   }
}

