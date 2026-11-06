package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fishes.model.FishUserInfo;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Rectangle;
   
   public class FishBoardWrapper implements IAssetWrapper
   {
      
      private static const FRAME_NAME_SIMPLE:String = "simple";
      
      private static const FRAME_NAME_SHINY:String = "shiny";
      
      private var _asset:DisplayObjectContainer;
      
      private var _fish:DisplayObjectContainer;
      
      private var _board:MovieClip;
      
      private var _fishImageRect:Rectangle;
      
      private var _toolTipTarget:ToolTipTargetMovieClip;
      
      public function FishBoardWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = param1 as DisplayObjectContainer;
         this._fish = Debug.assertProperty(this._asset,"fish",DisplayObjectContainer);
         this._board = Debug.assertProperty(this._asset,"board",MovieClip);
         this._fishImageRect = new Rectangle(this._fish.x,this._fish.y,this._fish.width,this._fish.height);
         this._toolTipTarget = new ToolTipTargetMovieClip();
         this._toolTipTarget.x = 0;
         this._toolTipTarget.y = 0;
         this._toolTipTarget.graphics.beginFill(9461904,0);
         this._toolTipTarget.graphics.drawRect(0,0,this._asset.width,this._asset.height);
         this._toolTipTarget.graphics.endFill();
         this._toolTipTarget.tooltipConfig = {"text":I18n.get("fishdex_dialog_shiny_fish_tooltip")};
      }
      
      public function addImg(param1:FishUserInfo, param2:FishInfoVO) : void
      {
         var _loc3_:Array = null;
         var _loc4_:ColorMatrix = null;
         var _loc5_:ColorMatrixFilter = null;
         var _loc6_:ScaledBitmap = new ScaledBitmap();
         _loc6_.width = this._fishImageRect.width;
         _loc6_.height = this._fishImageRect.height;
         var _loc7_:String = "fishes/fish_300x76_" + param1.id;
         app.resourceManager.replaceBitmapDataFromURL(_loc6_,FishaoBitmapLoader.convertImageNameURL(_loc7_));
         removeAllChildren(this._fish);
         var _loc8_:Boolean = false;
         if(param1.countShiny > 0)
         {
            this._board.gotoAndStop(FRAME_NAME_SHINY);
            _loc3_ = [];
            _loc4_ = new ColorMatrix();
            _loc4_.adjustHue(param2.hueShiftOfShiny);
            _loc5_ = new ColorMatrixFilter(_loc4_.matrix);
            _loc3_.push(_loc5_);
            _loc6_.filters = _loc3_;
            _loc8_ = true;
         }
         else
         {
            this._board.gotoAndStop(FRAME_NAME_SIMPLE);
            _loc8_ = false;
         }
         this._fish.addChild(_loc6_);
         this.updateTooltip(_loc8_);
      }
      
      private function updateTooltip(param1:Boolean) : void
      {
         if(this._asset.contains(this._toolTipTarget) && !param1)
         {
            this._asset.removeChild(this._toolTipTarget);
         }
         else if(!this._asset.contains(this._toolTipTarget) && param1)
         {
            this._asset.addChild(this._toolTipTarget);
         }
      }
   }
}

