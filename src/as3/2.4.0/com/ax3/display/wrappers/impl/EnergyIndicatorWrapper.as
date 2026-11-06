package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class EnergyIndicatorWrapper implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      private const MORE_HOLDER_HIDE_Y:Number = 18;
      
      private var _asset:DisplayObjectContainer;
      
      public var label:TextField;
      
      public var addButton:MenuFrameButtonWrapper;
      
      public var moreLabel:TextField;
      
      private var _moreHolder:Sprite;
      
      private var _moreHolderVisible:Boolean = true;
      
      private var _moreHolderOrigY:Number;
      
      public function EnergyIndicatorWrapper()
      {
         super();
      }
      
      public function get asset() : DisplayObjectContainer
      {
         return this._asset;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._moreHolder = Sprite(DisplayObjectContainer(this._asset.getChildByName("more")).getChildByName("holder"));
         this._moreHolderOrigY = this._moreHolder.y;
      }
      
      public function onAssetProcessComplete() : void
      {
      }
      
      public function set moreInText(param1:String) : void
      {
         if(param1 == null)
         {
            this.hideMoreHolder();
         }
         else
         {
            this.showMoreHolder();
            this.moreLabel.text = param1;
         }
      }
      
      private function showMoreHolder() : void
      {
         if(this._moreHolderVisible == false)
         {
            this._moreHolderVisible = true;
            TweenCube.destroyTweensOf(this._moreHolder);
            TweenCube.to(this._moreHolder,0.5,{
               "y":this._moreHolderOrigY,
               "ease":Cubic.easeOut
            });
         }
      }
      
      private function hideMoreHolder() : void
      {
         if(this._moreHolderVisible == true)
         {
            this._moreHolderVisible = false;
            TweenCube.destroyTweensOf(this._moreHolder);
            TweenCube.to(this._moreHolder,0.5,{
               "y":this._moreHolderOrigY - this.MORE_HOLDER_HIDE_Y,
               "ease":Cubic.easeIn
            });
         }
      }
      
      public function get x() : int
      {
         return this._asset.x;
      }
      
      public function set x(param1:int) : void
      {
         this._asset.x = param1;
      }
      
      public function get y() : int
      {
         return this._asset.y;
      }
      
      public function get height() : int
      {
         return this._asset.height;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         return this._asset.localToGlobal(param1);
      }
      
      public function get visible() : Boolean
      {
         return this._asset.visible;
      }
   }
}

