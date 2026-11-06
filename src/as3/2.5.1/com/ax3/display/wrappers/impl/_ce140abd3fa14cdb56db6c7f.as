package com.ax3.display.wrappers.impl
{
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _ce140abd3fa14cdb56db6c7f extends ShiftWrapper implements IAssetWrapper
   {
      
      public var image:_a4e47350c89a50d87a148c28;
      
      private var _97a570f29e1a92a3e1bb4ad6:DisplayObjectContainer;
      
      public function _ce140abd3fa14cdb56db6c7f()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._97a570f29e1a92a3e1bb4ad6 = DisplayObjectContainer(param1);
         addChild(this._97a570f29e1a92a3e1bb4ad6);
         this.image = new _a4e47350c89a50d87a148c28();
         this.image.width = this._97a570f29e1a92a3e1bb4ad6.width;
         this.image.height = this._97a570f29e1a92a3e1bb4ad6.height;
         removeAllChildren(this._97a570f29e1a92a3e1bb4ad6);
         this._97a570f29e1a92a3e1bb4ad6.addChild(this.image);
      }
      
      override public function get width() : Number
      {
         return this.image.width;
      }
   }
}

