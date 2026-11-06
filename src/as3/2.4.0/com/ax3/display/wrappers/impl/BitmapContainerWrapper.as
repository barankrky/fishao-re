package com.ax3.display.wrappers.impl
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class BitmapContainerWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      public var image:ScaledBitmap;
      
      private var _imageContainer:DisplayObjectContainer;
      
      public function BitmapContainerWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._imageContainer = DisplayObjectContainer(param1);
         addChild(this._imageContainer);
         this.image = new ScaledBitmap();
         this.image.width = this._imageContainer.width;
         this.image.height = this._imageContainer.height;
         removeAllChildren(this._imageContainer);
         this._imageContainer.addChild(this.image);
      }
      
      override public function get width() : Number
      {
         return this.image.width;
      }
   }
}

