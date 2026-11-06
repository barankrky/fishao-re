package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.utils.StringUtil;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class FishcoinsIndicatorWrapper implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      private var _asset:DisplayObjectContainer;
      
      public var label:TextField;
      
      public var addButton:MenuFrameButtonWrapper;
      
      private var _toolTipTarget:ToolTipTargetMovieClip;
      
      public function FishcoinsIndicatorWrapper()
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
         this._toolTipTarget = new ToolTipTargetMovieClip();
         this._toolTipTarget.x = 0;
         this._toolTipTarget.y = 0;
         this._toolTipTarget.graphics.beginFill(9461904,0);
         this._toolTipTarget.graphics.drawRect(0,0,this._asset.width - 30,this._asset.height);
         this._toolTipTarget.graphics.endFill();
      }
      
      public function onAssetProcessComplete() : void
      {
         this.addButton.visible = false;
         this._asset.addChild(this._toolTipTarget);
      }
      
      public function set setFishCoins(param1:int) : void
      {
         this._toolTipTarget.tooltipConfig = {"text":String(param1)};
         this.label.text = StringUtil.getSmartShortNumber(param1).toString();
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
      
      public function get visible() : Boolean
      {
         return this._asset.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
   }
}

