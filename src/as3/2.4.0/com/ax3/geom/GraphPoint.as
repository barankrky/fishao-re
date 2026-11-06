package com.ax3.geom
{
   import flash.geom.Point;
   
   public class GraphPoint extends Point
   {
      
      private static const _180_DEV_PI:Number = 180 / Math.PI;
      
      private static const _PI_DEV_180:Number = Math.PI / 180;
      
      private var _rotation:Number;
      
      public function GraphPoint(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         super(param1,param2);
         if(!isNaN(param3))
         {
            this.rotation = param3;
         }
      }
      
      public static function shiftRotation(param1:Number) : int
      {
         while(param1 < 0)
         {
            param1 += 360;
         }
         return param1 % 360;
      }
      
      public static function getPointNextStepPointByAlign(param1:Number, param2:Number, param3:GraphPoint, param4:GraphPoint = null) : GraphPoint
      {
         if(param4 == null)
         {
            param4 = new GraphPoint();
         }
         param4.rotation = param2;
         var _loc5_:Number = shiftRotation(param2) * _PI_DEV_180;
         param4.y = Math.sin(_loc5_) * param1 + param3.y;
         param4.x = Math.cos(_loc5_) * param1 + param3.x;
         return param4;
      }
      
      override public function clone() : Point
      {
         return new GraphPoint(x,y,this.rotation);
      }
      
      public function get rotation() : Number
      {
         return this._rotation;
      }
      
      public function set rotation(param1:Number) : void
      {
         this._rotation = param1;
      }
      
      public function nextRotation(param1:int) : void
      {
         this.rotation = shiftRotation(this.rotation + 45 * param1);
      }
      
      public function getDirectionAlign() : int
      {
         return shiftRotation(this.rotation);
      }
      
      public function getNextStepPoint(param1:Number, param2:GraphPoint = null) : GraphPoint
      {
         return getPointNextStepPointByAlign(param1,this.rotation,this,param2);
      }
      
      public function copy(param1:GraphPoint, param2:Number = 0, param3:Number = 0) : void
      {
         this.rotation = param1.rotation;
         x = param1.x + param2;
         y = param1.y + param3;
      }
      
      public function equalsWithRotation(param1:GraphPoint, param2:Number = 0, param3:Number = 0) : Boolean
      {
         return param1 != null && param1.x + param2 == x && param1.y + param3 == y && (isNaN(param1.rotation) || isNaN(this.rotation) || param1.rotation == this.rotation);
      }
      
      public function equalsWithPoint(param1:int, param2:int, param3:int) : Boolean
      {
         return this.x != param1 || this.y != param2 || this.rotation != param3 && this._rotation != -1;
      }
      
      override public function toString() : String
      {
         return "GraphPoint[x=" + x + ",y=" + y + ",r=" + this._rotation + "]";
      }
   }
}

