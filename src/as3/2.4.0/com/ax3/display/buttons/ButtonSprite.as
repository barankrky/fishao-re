package com.ax3.display.buttons
{
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import flash.display.Sprite;
   
   public class ButtonSprite extends Sprite
   {
      
      protected var _handler:Function;
      
      public function ButtonSprite(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         super();
         if(param1 != null)
         {
            this.init(param1,param2);
         }
      }
      
      public function init(param1:StandardBitmapButtonConfiguration, param2:Function) : void
      {
         buttonMode = true;
         mouseChildren = false;
         this._handler = param2;
      }
   }
}

