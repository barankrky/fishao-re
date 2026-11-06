package com.ax3.fishao.locations.water
{
   import com.ax3.fishao.Config;
   import com.ax3.utils.drawing.drawRect;
   import com.ax3.utils.removeFromParent;
   import com.ax3.utils.timer.IUpdate;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class WaterEffect extends Sprite implements IUpdate
   {
      
      private static const CELL_WIDTH:int = 170;
      
      private static const CELL_HEIGHT:int = 120;
      
      private var _lakeObstacleMapBitmap:BitmapData;
      
      private var _currentCells:Vector.<WaterEffectCell> = new Vector.<WaterEffectCell>();
      
      private var _currentRect:Rectangle;
      
      private var _newScrollRect:Rectangle;
      
      public function WaterEffect()
      {
         super();
         Cc.addSlashCommand("weDebugDraw",this.weDebugDraw,"Timer for every \'water effect cell\' to create Water Effect (Current:" + WaterEffectCell.CREATION_TIME_MS + ")");
         Cc.addSlashCommand("weCreationTimeMs",this.weCreationTimeMs,"Timer for every \'water effect cell\' to create Water Effect (Current:" + WaterEffectCell.CREATION_TIME_MS + ")");
         Cc.addSlashCommand("weCreationChance",this.weCreationChance,"Water effect creation chance from 0 to 100 (Current:" + WaterEffectCell.CREATION_CHANCE + ")");
         Cc.addSlashCommand("weMaxWaterEffects",this.weMaxWaterEffects," (Current:" + WaterEffectCell.MAX_WATER_EFFECTS + ")");
      }
      
      private function weMaxWaterEffects(param1:Number) : void
      {
         WaterEffectCell.MAX_WATER_EFFECTS = param1;
      }
      
      private function weCreationChance(param1:Number) : void
      {
         WaterEffectCell.CREATION_CHANCE = param1;
      }
      
      private function weCreationTimeMs(param1:Number) : void
      {
         WaterEffectCell.CREATION_TIME_MS = param1;
      }
      
      private function weDebugDraw() : void
      {
         var _loc1_:WaterEffectCell = null;
         for each(_loc1_ in this._currentCells)
         {
            if(_loc1_.isWater)
            {
               drawRect(this,_loc1_.rect.x,_loc1_.rect.y,_loc1_.rect.width,_loc1_.rect.height,1442775040);
            }
            else
            {
               drawRect(this,_loc1_.rect.x,_loc1_.rect.y,_loc1_.rect.width,_loc1_.rect.height,1426128640);
            }
         }
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         this._newScrollRect = param1;
         this._newScrollRect.x = CELL_WIDTH * int(this._newScrollRect.x / CELL_WIDTH - 1);
         this._newScrollRect.y = CELL_HEIGHT * int(this._newScrollRect.y / CELL_HEIGHT - 1);
         this._newScrollRect.width = CELL_WIDTH * int(this._newScrollRect.width / CELL_WIDTH + 2);
         this._newScrollRect.height = CELL_HEIGHT * int(this._newScrollRect.height / CELL_HEIGHT + 2);
         if(this._currentRect == null || Math.abs(this._currentRect.x - this._newScrollRect.x) >= CELL_WIDTH || Math.abs(this._currentRect.y - this._newScrollRect.y) >= CELL_HEIGHT || Math.abs(this._currentRect.right - this._newScrollRect.right) >= CELL_WIDTH || Math.abs(this._currentRect.bottom - this._newScrollRect.bottom) >= CELL_HEIGHT)
         {
            this.updateCells();
         }
      }
      
      public function set lakeObstacleMapBitmap(param1:BitmapData) : void
      {
         this._lakeObstacleMapBitmap = param1;
         this.updateCells();
      }
      
      private function updateCells() : void
      {
         var _loc1_:WaterEffectCell = null;
         var _loc2_:Vector.<WaterEffectCell> = null;
         var _loc3_:WaterEffectCell = null;
         var _loc4_:WaterEffectCell = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this._newScrollRect != null && this._lakeObstacleMapBitmap != null)
         {
            this.graphics.clear();
            _loc2_ = new Vector.<WaterEffectCell>();
            for each(_loc3_ in this._currentCells)
            {
               if(!this._currentRect.containsRect(_loc3_.rect))
               {
                  _loc3_.destroy();
                  removeChild(_loc3_);
                  _loc2_.push(_loc3_);
               }
            }
            for each(_loc4_ in _loc2_)
            {
               this._currentCells.splice(this._currentCells.indexOf(_loc4_),1);
            }
            _loc5_ = this._newScrollRect.x;
            while(_loc5_ < this._newScrollRect.right)
            {
               _loc6_ = this._newScrollRect.y;
               while(_loc6_ < this._newScrollRect.bottom)
               {
                  if(this._currentRect == null || this._currentRect.contains(_loc5_,_loc6_) == false)
                  {
                     _loc1_ = this.createCell(_loc5_,_loc6_);
                     addChild(_loc1_);
                     this._currentCells.push(_loc1_);
                  }
                  else
                  {
                     _loc1_ = this.findCell(_loc5_,_loc6_);
                  }
                  _loc6_ += CELL_HEIGHT;
               }
               _loc5_ += CELL_WIDTH;
            }
            this._currentRect = this._newScrollRect;
         }
      }
      
      private function findCell(param1:int, param2:int) : WaterEffectCell
      {
         var _loc3_:WaterEffectCell = null;
         for each(_loc3_ in this._currentCells)
         {
            if(_loc3_.rect.contains(param1,param2))
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function createCell(param1:int, param2:int) : WaterEffectCell
      {
         var _loc3_:WaterEffectCell = new WaterEffectCell();
         _loc3_.x = param1;
         _loc3_.y = param2;
         _loc3_.rect.x = param1;
         _loc3_.rect.y = param2;
         _loc3_.rect.width = CELL_WIDTH;
         _loc3_.rect.height = CELL_HEIGHT;
         if(this._lakeObstacleMapBitmap != null)
         {
            if(param1 > 0 && param1 < this._lakeObstacleMapBitmap.width && param2 > 0 && param2 < this._lakeObstacleMapBitmap.height)
            {
               _loc3_.isWater = this.isFullInWater(_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function isFullInWater(param1:WaterEffectCell) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = param1.rect.x;
         loop0:
         while(_loc3_ <= param1.rect.x + CELL_WIDTH)
         {
            _loc2_ = param1.rect.y;
            while(true)
            {
               if(_loc2_ > param1.rect.y + CELL_HEIGHT)
               {
                  _loc3_ += CELL_WIDTH / 5;
                  continue loop0;
               }
               if(this._lakeObstacleMapBitmap.getPixel32(_loc3_,_loc2_) < 16777215)
               {
                  break;
               }
               _loc2_ += CELL_HEIGHT / 5;
            }
            return false;
         }
         return true;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:WaterEffectCell = null;
         if(Config.WATER_ANIMATION_EFFECT)
         {
            for each(_loc3_ in this._currentCells)
            {
               _loc3_.update(param1,param2);
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:WaterEffectCell = null;
         removeFromParent(this);
         if(this._lakeObstacleMapBitmap != null)
         {
            this._lakeObstacleMapBitmap.dispose();
            this._lakeObstacleMapBitmap = null;
         }
         for each(_loc1_ in this._currentCells)
         {
            _loc1_.destroy();
         }
         this._currentCells = null;
         this._currentRect = null;
         Cc.removeEqualSlashCommand("weDebugDraw",this.weDebugDraw);
         Cc.removeEqualSlashCommand("weCreationTimeMs",this.weCreationTimeMs);
         Cc.removeEqualSlashCommand("weCreationChance",this.weCreationChance);
         Cc.removeEqualSlashCommand("weMaxWaterEffects",this.weMaxWaterEffects);
      }
   }
}

