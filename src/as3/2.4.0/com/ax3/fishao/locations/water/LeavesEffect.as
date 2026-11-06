package com.ax3.fishao.locations.water
{
   import com.ax3.utils.removeAllChildren;
   import com.ax3.utils.timer.IUpdate;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class LeavesEffect extends Sprite implements IUpdate
   {
      
      private static const LEAVES_COUNT:int = 15;
      
      private var _pathLines:Vector.<Rectangle>;
      
      private var _leaves:Vector.<LeavesEffectLeaf>;
      
      public function LeavesEffect()
      {
         var _loc1_:LeavesEffectLeaf = null;
         super();
         this._leaves = new Vector.<LeavesEffectLeaf>();
         var _loc2_:int = 0;
         while(_loc2_ < LEAVES_COUNT)
         {
            _loc1_ = new LeavesEffectLeaf();
            this._leaves.push(_loc1_);
            addChild(_loc1_);
            _loc2_++;
         }
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:LeavesEffectLeaf = null;
         if(this._pathLines != null)
         {
            for each(_loc3_ in this._leaves)
            {
               _loc3_.update(param1,param2);
            }
         }
      }
      
      public function setLavesPathClip(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:DisplayObject = null;
         var _loc4_:LeavesEffectLeaf = null;
         var _loc5_:DisplayObject = null;
         this._pathLines = new Vector.<Rectangle>();
         var _loc6_:Array = [];
         var _loc7_:uint = uint(param1.numChildren);
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            _loc5_ = param1.getChildAt(_loc8_);
            if(_loc5_ is MovieClip)
            {
               _loc6_.push(_loc5_);
            }
            _loc8_++;
         }
         _loc6_.sortOn(["name"],[Array.CASEINSENSITIVE]);
         for each(_loc3_ in _loc6_)
         {
            _loc2_ = new Rectangle();
            _loc2_.x = _loc3_.x;
            _loc2_.y = _loc3_.y;
            _loc2_.width = _loc3_.width;
            _loc2_.height = 1;
            this._pathLines.push(_loc2_);
         }
         removeAllChildren(param1);
         param1.addChild(this);
         for each(_loc4_ in this._leaves)
         {
            _loc4_.setPathLines(this._pathLines);
         }
      }
      
      public function getLeaves() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>(this._leaves);
      }
      
      public function destroy() : void
      {
         var _loc1_:LeavesEffectLeaf = null;
         this._pathLines = null;
         for each(_loc1_ in this._leaves)
         {
            _loc1_.destroy();
         }
         this._leaves = null;
      }
   }
}

