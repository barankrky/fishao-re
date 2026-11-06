package com.ax3.display
{
   public class LineStyle
   {
      
      private var _thickness:Number;
      
      private var _alpha:Number;
      
      private var _pixelHinting:Boolean;
      
      private var _scaleMode:String;
      
      private var _caps:String;
      
      private var _joints:String;
      
      private var _miterLimit:Number;
      
      private var _color:uint;
      
      public function LineStyle(param1:Number = 0, param2:uint = 16772846, param3:Number = 1, param4:Boolean = false, param5:String = "normal", param6:String = null, param7:String = null, param8:Number = 3)
      {
         super();
         this._thickness = param1;
         this._alpha = param3;
         this._pixelHinting = param4;
         this._scaleMode = param5;
         this._caps = param6;
         this._joints = param7;
         this._miterLimit = param8;
         this._color = param2;
      }
      
      public function get thickness() : Number
      {
         return this._thickness;
      }
      
      public function get alpha() : Number
      {
         return this._alpha;
      }
      
      public function get pixelHinting() : Boolean
      {
         return this._pixelHinting;
      }
      
      public function get scaleMode() : String
      {
         return this._scaleMode;
      }
      
      public function get caps() : String
      {
         return this._caps;
      }
      
      public function get joints() : String
      {
         return this._joints;
      }
      
      public function get miterLimit() : Number
      {
         return this._miterLimit;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function set color(param1:uint) : void
      {
         if(this._color == param1)
         {
            return;
         }
         this._color = param1;
      }
   }
}

