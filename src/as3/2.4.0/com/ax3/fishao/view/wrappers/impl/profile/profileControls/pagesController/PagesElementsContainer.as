package com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController
{
   import com.ax3.fishao.view.wrappers.impl.profile.fishesPanel.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class PagesElementsContainer implements IPagesElementsContainer
   {
      
      private var _elementsContainer:DisplayObjectContainer;
      
      private var _startX:Number;
      
      private var _startY:Number;
      
      private var _horizontalDistance:Number;
      
      private var _verticalDistance:Number;
      
      private var _countRows:Number;
      
      private var _countColumns:Number;
      
      private var _displayObjects:Vector.<DisplayObject>;
      
      public function PagesElementsContainer(param1:DisplayObjectContainer, param2:Number = 0, param3:Number = 0, param4:Number = 100, param5:Number = 100, param6:Number = 2, param7:Number = 2)
      {
         super();
         this._elementsContainer = param1;
         this.initDisplaySettings(param2,param3,param4,param5,param6,param7);
         this._displayObjects = new Vector.<DisplayObject>(0);
      }
      
      private function initDisplaySettings(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this._startX = param1;
         this._startY = param2;
         this._horizontalDistance = param3;
         this._verticalDistance = param4;
         this._countRows = param5;
         this._countColumns = param6;
      }
      
      public function display(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.clean();
         var _loc5_:Number = 0;
         while(_loc5_ < param1.length)
         {
            _loc2_ = param1[_loc5_];
            this._displayObjects.push(_loc2_);
            this._elementsContainer.addChild(_loc2_);
            _loc3_ = _loc5_ % this._countColumns;
            _loc4_ = int(_loc5_ / this._countColumns);
            _loc2_.x = this._startX + _loc3_ * this._horizontalDistance;
            _loc2_.y = this._startY + _loc4_ * this._verticalDistance;
            _loc5_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:DisplayObject = null;
         while(this._displayObjects.length > 0)
         {
            _loc1_ = this._displayObjects.pop();
            if(this._elementsContainer.contains(_loc1_))
            {
               this._elementsContainer.removeChild(_loc1_);
            }
         }
      }
      
      public function get capacity() : Number
      {
         return this._countRows * this._countColumns;
      }
   }
}

