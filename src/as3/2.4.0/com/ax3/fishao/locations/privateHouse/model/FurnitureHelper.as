package com.ax3.fishao.locations.privateHouse.model
{
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemRotation;
   import com.ax3.fishao.utils.UtilsArray;
   import flash.geom.Point;
   
   public class FurnitureHelper
   {
      
      private static var map:Array;
      
      private static var _width:int;
      
      private static var _height:int;
      
      public function FurnitureHelper()
      {
         super();
      }
      
      public static function getPosition(param1:Array, param2:int, param3:int) : FurniturePosition
      {
         var _loc4_:int = 0;
         _width = param2;
         _height = param3;
         map = UtilsArray.createMultidimensionalArray([12,12]);
         var _loc5_:int = 0;
         while(_loc5_ < 12)
         {
            _loc4_ = 0;
            while(_loc4_ < 12)
            {
               if(param1[_loc5_][_loc4_] != null)
               {
                  map[_loc5_][_loc4_] = 1;
               }
               else
               {
                  map[_loc5_][_loc4_] = 0;
               }
               _loc4_++;
            }
            _loc5_++;
         }
         return checkPoint(new Point(6,6));
      }
      
      private static function checkPoint(param1:Point) : FurniturePosition
      {
         var _loc2_:FurniturePosition = null;
         var _loc3_:Vector.<Point> = null;
         var _loc4_:Point = null;
         var _loc5_:int = enoughSpace(param1);
         switch(_loc5_)
         {
            case 0:
               _loc3_ = getPointsAround(param1);
               for each(_loc4_ in _loc3_)
               {
                  _loc5_ = enoughSpace(_loc4_);
                  if(_loc5_ != 0)
                  {
                     if(_loc5_ == 1)
                     {
                        _loc2_ = new FurniturePosition();
                        _loc2_.point = _loc4_;
                        _loc2_.rotation = EInteriorItemRotation.EIIR_FRONT;
                        return _loc2_;
                     }
                     if(_loc5_ == 2)
                     {
                        _loc2_ = new FurniturePosition();
                        _loc2_.point = _loc4_;
                        _loc2_.rotation = EInteriorItemRotation.EIIR_LEFT;
                        return _loc2_;
                     }
                  }
               }
               for each(_loc4_ in _loc3_)
               {
                  _loc2_ = checkPoint(_loc4_);
                  if(_loc2_ != null)
                  {
                     return _loc2_;
                  }
               }
               return null;
            case 1:
               _loc2_ = new FurniturePosition();
               _loc2_.point = param1;
               _loc2_.rotation = EInteriorItemRotation.EIIR_FRONT;
               return _loc2_;
            case 2:
               _loc2_ = new FurniturePosition();
               _loc2_.point = param1;
               _loc2_.rotation = EInteriorItemRotation.EIIR_LEFT;
               return _loc2_;
            default:
               _loc2_ = new FurniturePosition();
               _loc2_.point = param1;
               _loc2_.rotation = EInteriorItemRotation.EIIR_FRONT;
               return _loc2_;
         }
      }
      
      private static function enoughSpace(param1:Point) : int
      {
         var _loc2_:Boolean = getIsPossible(param1,param1.x + _width - 1,param1.y + _height - 1);
         if(_loc2_)
         {
            return 1;
         }
         _loc2_ = getIsPossible(param1,param1.x + _height - 1,param1.y + _width - 1);
         if(_loc2_)
         {
            return 2;
         }
         return 0;
      }
      
      private static function getIsPossible(param1:Point, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:Boolean = true;
         var _loc6_:int = param1.x;
         while(_loc6_ <= param2)
         {
            _loc4_ = param1.y;
            while(_loc4_ <= param3)
            {
               if(_loc6_ > 11 || _loc4_ > 11 || map[_loc6_][_loc4_] > 0)
               {
                  _loc5_ = false;
                  break;
               }
               _loc4_++;
            }
            if(!_loc5_)
            {
               break;
            }
            _loc6_++;
         }
         return _loc5_;
      }
      
      private static function getPointsAround(param1:Point) : Vector.<Point>
      {
         var _loc2_:Vector.<Point> = new Vector.<Point>();
         if(param1.y > 0)
         {
            if(param1.x > 0)
            {
               if(Math.abs(map[param1.x - 1][param1.y - 1]) != 2)
               {
                  _loc2_.push(new Point(param1.x - 1,param1.y - 1));
                  if(map[param1.x - 1][param1.y - 1] == 0)
                  {
                     map[param1.x - 1][param1.y - 1] = -2;
                  }
                  else
                  {
                     map[param1.x - 1][param1.y - 1] = 2;
                  }
               }
            }
            if(Math.abs(map[param1.x][param1.y - 1]) != 2)
            {
               _loc2_.push(new Point(param1.x,param1.y - 1));
               if(map[param1.x][param1.y - 1] == 0)
               {
                  map[param1.x][param1.y - 1] = -2;
               }
               else
               {
                  map[param1.x][param1.y - 1] = 2;
               }
            }
            if(param1.x < 11)
            {
               if(Math.abs(map[param1.x + 1][param1.y - 1]) != 2)
               {
                  _loc2_.push(new Point(param1.x + 1,param1.y - 1));
                  if(map[param1.x + 1][param1.y - 1] == 0)
                  {
                     map[param1.x + 1][param1.y - 1] = -2;
                  }
                  else
                  {
                     map[param1.x + 1][param1.y - 1] = 2;
                  }
               }
            }
         }
         if(param1.x > 0)
         {
            if(Math.abs(map[param1.x - 1][param1.y]) != 2)
            {
               _loc2_.push(new Point(param1.x - 1,param1.y));
               if(map[param1.x - 1][param1.y] == 0)
               {
                  map[param1.x - 1][param1.y] = -2;
               }
               else
               {
                  map[param1.x - 1][param1.y] = 2;
               }
            }
         }
         if(param1.x < 11)
         {
            if(Math.abs(map[param1.x + 1][param1.y]) != 2)
            {
               _loc2_.push(new Point(param1.x + 1,param1.y));
               if(map[param1.x + 1][param1.y] == 0)
               {
                  map[param1.x + 1][param1.y] = -2;
               }
               else
               {
                  map[param1.x + 1][param1.y] = 2;
               }
            }
         }
         if(param1.y < 11)
         {
            if(param1.x > 0)
            {
               if(Math.abs(map[param1.x - 1][param1.y + 1]) != 2)
               {
                  _loc2_.push(new Point(param1.x - 1,param1.y + 1));
                  if(map[param1.x - 1][param1.y + 1] == 0)
                  {
                     map[param1.x - 1][param1.y + 1] = -2;
                  }
                  else
                  {
                     map[param1.x - 1][param1.y + 1] = 2;
                  }
               }
            }
            if(Math.abs(map[param1.x][param1.y + 1]) != 2)
            {
               _loc2_.push(new Point(param1.x,param1.y + 1));
               if(map[param1.x][param1.y + 1] == 0)
               {
                  map[param1.x][param1.y + 1] = -2;
               }
               else
               {
                  map[param1.x][param1.y + 1] = 2;
               }
            }
            if(param1.x < 11)
            {
               if(Math.abs(map[param1.x + 1][param1.y + 1]) != 2)
               {
                  _loc2_.push(new Point(param1.x + 1,param1.y + 1));
                  if(map[param1.x + 1][param1.y + 1] == 0)
                  {
                     map[param1.x + 1][param1.y + 1] = -2;
                  }
                  else
                  {
                     map[param1.x + 1][param1.y + 1] = 2;
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}

