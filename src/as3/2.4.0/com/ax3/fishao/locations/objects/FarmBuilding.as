package com.ax3.fishao.locations.objects
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class FarmBuilding extends Sprite
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _top:DisplayObject;
      
      private var _iso:DisplayObject;
      
      public function FarmBuilding(param1:DisplayObject)
      {
         super();
         this._asset = DisplayObjectContainer(param1);
         this._top = this._asset.getChildByName("top");
         this._iso = this._asset.getChildByName("iso");
      }
      
      public function get top() : DisplayObject
      {
         return this._top;
      }
      
      public function get iso() : DisplayObject
      {
         return this._iso;
      }
      
      public function get asset() : DisplayObject
      {
         return this._asset;
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
   }
}

