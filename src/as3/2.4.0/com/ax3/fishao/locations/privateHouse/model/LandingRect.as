package com.ax3.fishao.locations.privateHouse.model
{
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class LandingRect extends Sprite
   {
      
      private var red:Shape;
      
      private var green:Shape;
      
      private var _isRed:Boolean = false;
      
      public function LandingRect()
      {
         super();
         this.x = 0;
         this.y = 0;
         this.red = new Shape();
         this.red.graphics.beginFill(16711680,0.4);
         this.red.graphics.drawRect(0,0,100,100);
         this.red.graphics.endFill();
         this.red.x = 200;
         this.red.y = 800 + 50 * 3;
         this.red.width = 300;
         this.green = new Shape();
         this.green.graphics.beginFill(65280,0.4);
         this.green.graphics.drawRect(0,0,100,100);
         this.green.graphics.endFill();
         this.green.x = 200;
         this.green.y = 800 + 50 * 3;
         addChild(this.red);
         addChild(this.green);
      }
      
      public function hide() : void
      {
         this.red.visible = false;
         this.green.visible = false;
      }
      
      public function show() : void
      {
         if(this._isRed)
         {
            this.red.visible = true;
         }
         else
         {
            this.green.visible = true;
         }
      }
      
      public function get isRed() : Boolean
      {
         return this._isRed;
      }
      
      public function makeRed() : void
      {
         this._isRed = true;
         this.hide();
         this.show();
      }
      
      public function makeGreen() : void
      {
         this._isRed = false;
         this.hide();
         this.show();
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         if(param1 < 1 || param1 > 11 || param2 < 1 || param2 > 11)
         {
            return;
         }
         this.red.width = this.green.width = param1 * 50;
         this.red.height = this.green.height = param2 * 50;
      }
      
      public function moveTo(param1:int, param2:int) : void
      {
         if(param1 < 0 || param1 > 11 || param2 < 0 || param2 > 11)
         {
            return;
         }
         this.red.x = this.green.x = param1 * 50;
         this.red.y = this.green.y = param2 * 50 + 800;
      }
   }
}

