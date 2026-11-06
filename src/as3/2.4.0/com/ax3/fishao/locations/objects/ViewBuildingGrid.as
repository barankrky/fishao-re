package com.ax3.fishao.locations.objects
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class ViewBuildingGrid
   {
      
      public static const TYPE_EMPTY:String = "empty";
      
      public static const TYPE_DEFAULT:String = "default";
      
      private var _source:MovieClip;
      
      private var _gridStatesName:Array;
      
      private var _gridStates:Array;
      
      private var _viewType:String;
      
      public function ViewBuildingGrid(param1:DisplayObjectContainer)
      {
         super();
         this._source = param1 as MovieClip;
         this.init();
      }
      
      public function set viewType(param1:String) : void
      {
         this._viewType = param1;
         this.onViewTypeUpdate();
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._source.visible = param1;
      }
      
      private function getIndexOfViewByType(param1:String) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this._gridStatesName.length)
         {
            if(this._gridStatesName[_loc3_] == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         return _loc3_;
      }
      
      private function onViewTypeUpdate() : void
      {
         this.hideAll();
         var _loc1_:DisplayObject = this._gridStates[this.getIndexOfViewByType(this._viewType)] as DisplayObject;
         _loc1_.visible = true;
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         this._source.visible = false;
         this._source.alpha = 0.55;
         this._gridStates = [];
         this._gridStatesName = [];
         var _loc2_:int = 0;
         while(_loc2_ < this._source.numChildren)
         {
            _loc1_ = this._source.getChildAt(_loc2_) as DisplayObjectContainer;
            this._gridStates.push(_loc1_);
            this._gridStatesName.push((_loc1_ as MovieClip).currentFrameLabel);
            _loc2_++;
         }
      }
      
      private function hideAll() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this._gridStates)
         {
            _loc1_.visible = false;
         }
      }
   }
}

