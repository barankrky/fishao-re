package com.ax3.fishao.view.tooltips
{
   import assets.common.OpenedLocation;
   import com.ax3.fishao.view.wrappers.impl.ThreeBlockWrapper;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class OpenedLocationTooltipAsset extends Sprite
   {
      
      protected var _asset:MovieClip;
      
      protected var _title:ThreeBlockWrapper;
      
      protected var _playersCount:ThreeBlockWrapper;
      
      public function OpenedLocationTooltipAsset()
      {
         super();
         this._asset = new OpenedLocation();
         this._title = new ThreeBlockWrapper();
         this._title.process(this._asset.getChildByName("title"));
         this._playersCount = new ThreeBlockWrapper();
         this._playersCount.process(this._asset.getChildByName("playersCount"));
         addChild(this._asset);
      }
   }
}

