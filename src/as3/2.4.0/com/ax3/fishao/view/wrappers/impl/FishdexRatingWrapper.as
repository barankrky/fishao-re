package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class FishdexRatingWrapper implements IAssetWrapper
   {
      
      private var _child:MovieClip;
      
      public function FishdexRatingWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = MovieClip(param1);
      }
      
      public function setRating(param1:int) : void
      {
         this._child.gotoAndStop(param1 + 1);
      }
   }
}

