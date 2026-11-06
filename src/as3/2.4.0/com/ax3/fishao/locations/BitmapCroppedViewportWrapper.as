package com.ax3.fishao.locations
{
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class BitmapCroppedViewportWrapper extends Sprite
   {
      
      private var _bitmapSpriteViewports:Vector.<BitmapSpriteViewport>;
      
      public function BitmapCroppedViewportWrapper(param1:BitmapCroppedSourceWrapper, param2:DisplayObject)
      {
         var _loc3_:BitmapSpriteSource = null;
         var _loc4_:BitmapSpriteViewport = null;
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         ShiftWrapper.shiftDisplayObject(param2,this);
         this._bitmapSpriteViewports = new Vector.<BitmapSpriteViewport>();
         var _loc5_:Vector.<BitmapSpriteSource> = param1.getBitmapSpriteSources();
         for each(_loc3_ in _loc5_)
         {
            _loc4_ = new BitmapSpriteViewport(_loc3_);
            _loc4_.x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            addChild(_loc4_);
            this._bitmapSpriteViewports.push(_loc4_);
         }
      }
      
      public function getChildren() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>(this._bitmapSpriteViewports);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
      }
   }
}

