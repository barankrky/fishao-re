package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.utils.BitmapUtil;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class RaftWall
   {
      
      private var _asset:MovieClip;
      
      private var _isOpen:Boolean;
      
      private var _obstacleMap:BitmapData;
      
      private var _obstacleMapBounds:Rectangle;
      
      private var _xOffset:Number;
      
      private var _yOffset:Number;
      
      public function RaftWall()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = MovieClip(param1);
         var _loc2_:DisplayObject = this._asset.getChildByName("obstacleMap");
         this._obstacleMapBounds = _loc2_.getBounds(_loc2_);
         this._obstacleMap = BitmapUtil.cloneWithBounds(_loc2_);
         _loc2_.visible = false;
         this._asset.gotoAndStop(1);
         this._xOffset = this._asset.x + this._obstacleMapBounds.x;
         this._yOffset = this._asset.y + this._obstacleMapBounds.y;
      }
      
      public function hitTest(param1:Number, param2:Number, param3:FieldChar) : Boolean
      {
         param1 -= this._xOffset;
         param2 -= this._yOffset;
         var _loc4_:Boolean = param3.raft != null || param3.isMovingToRaft;
         return _loc4_ == false && (this._obstacleMap != null && param1 > 0 && param2 > 0 && param1 < this._obstacleMap.width && param2 < this._obstacleMap.height && this._obstacleMap.getPixel32(param1,param2) > 16777215);
      }
      
      public function destroy() : void
      {
         this._asset = null;
         this._obstacleMap.dispose();
         this._obstacleMap = null;
      }
   }
}

