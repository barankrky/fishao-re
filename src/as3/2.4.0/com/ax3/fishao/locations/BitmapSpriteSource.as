package com.ax3.fishao.locations
{
   public class BitmapSpriteSource extends BitmapSprite
   {
      
      private var _viewports:Vector.<BitmapSpriteViewport> = null;
      
      public function BitmapSpriteSource()
      {
         super();
      }
      
      override public function gotoAndStop(param1:int) : void
      {
         var _loc2_:BitmapSpriteViewport = null;
         super.gotoAndStop(param1);
         if(this._viewports != null && this._viewports.length > 0)
         {
            for each(_loc2_ in this._viewports)
            {
               if(_loc2_.visible && _loc2_.parent != null)
               {
                  _loc2_.bitmapData = bitmapData;
               }
            }
         }
      }
      
      public function addViewport(param1:BitmapSpriteViewport) : void
      {
         if(this._viewports == null)
         {
            this._viewports = new Vector.<BitmapSpriteViewport>();
         }
         if(this._viewports.indexOf(param1) == -1)
         {
            this._viewports.push(param1);
         }
      }
   }
}

