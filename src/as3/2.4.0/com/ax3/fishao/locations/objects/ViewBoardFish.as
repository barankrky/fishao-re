package com.ax3.fishao.locations.objects
{
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import flash.display.DisplayObjectContainer;
   
   public class ViewBoardFish
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _tooltip:ToolTipTargetMovieClip;
      
      public function ViewBoardFish(param1:DisplayObjectContainer)
      {
         super();
         this._source = param1;
         this.init();
      }
      
      public function set tooltipText(param1:String) : void
      {
         this._tooltip.tooltipConfig = {"text":param1};
      }
      
      public function get source() : DisplayObjectContainer
      {
         return this._source;
      }
      
      private function init() : void
      {
         this._tooltip = new ToolTipTargetMovieClip();
         this._tooltip.x = 0;
         this._tooltip.y = 0;
         this._tooltip.graphics.beginFill(9461904,0);
         this._tooltip.graphics.drawRect(-30,-50,this._source.width + 5,this._source.height);
         this._tooltip.graphics.endFill();
         this._source.addChild(this._tooltip);
         this._source.mouseChildren = true;
         this._source.mouseEnabled = true;
      }
      
      public function cleanup() : void
      {
         if(this._tooltip.parent != null)
         {
            this._tooltip.parent.removeChild(this._tooltip);
         }
         this._tooltip = null;
      }
   }
}

