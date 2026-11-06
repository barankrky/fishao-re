package com.ax3.fishao.locations.objects
{
   import com.ax3.utils.display.disableMouse;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   
   public class IsoTree extends Sprite
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _top:DisplayObject;
      
      private var _iso:DisplayObject;
      
      private var _shadow:DisplayObject;
      
      public function IsoTree(param1:DisplayObject)
      {
         super();
         this._asset = DisplayObjectContainer(param1);
         this._top = this._asset.getChildByName("top");
         this._iso = this._asset.getChildByName("iso");
         this._shadow = this._asset.getChildByName("shadow");
         this.init();
      }
      
      public function get top() : DisplayObject
      {
         return this._top;
      }
      
      public function get shadow() : DisplayObject
      {
         return this._shadow;
      }
      
      public function get iso() : DisplayObject
      {
         return this._iso;
      }
      
      override public function set filters(param1:Array) : void
      {
         this._asset.filters = param1;
         if(this._top != null)
         {
            this._top.filters = param1;
         }
         if(this._iso != null)
         {
            this._iso.filters = param1;
         }
      }
      
      private function init() : void
      {
         if(this._iso != null)
         {
            if(this._iso is InteractiveObject)
            {
               (this._iso as InteractiveObject).mouseEnabled = false;
            }
         }
         if(this._top != null)
         {
            disableMouse(this._top);
            this._top.cacheAsBitmap = true;
         }
         if(this._shadow != null)
         {
            disableMouse(this._shadow);
            this._shadow.cacheAsBitmap = true;
         }
      }
   }
}

