package com.ax3.fishao.view.tooltips
{
   import assets.common.LockedLocation;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.ConfirmFrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.ThreeBlockWrapper;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class LockedLocationTooltipAsset extends Sprite
   {
      
      protected var _asset:MovieClip;
      
      protected var _title:ThreeBlockWrapper;
      
      protected var _reasone:TextField;
      
      protected var _reasoneBg:MovieClip;
      
      protected var _buttonBuy:ConfirmFrameButtonWrapper;
      
      public function LockedLocationTooltipAsset()
      {
         super();
         this._asset = new LockedLocation();
         this._title = new ThreeBlockWrapper();
         this._title.process(Debug.assertProperty(this._asset,"title"));
         this._reasone = Debug.assertProperty(this._asset,"reasone",TextField);
         this._reasoneBg = Debug.assertProperty(this._asset,"reasoneBg",MovieClip);
         this._buttonBuy = new ConfirmFrameButtonWrapper();
         this._buttonBuy.process(Debug.assertProperty(this._asset,"buttonBuy",MovieClip));
         addChild(this._asset);
      }
   }
}

