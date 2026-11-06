package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.text.TextField;
   
   public class LevelIndicatorWrapper extends EventDispatcher implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      private static const TWEEN_PROGRESS_SEC:Number = 2;
      
      private var _asset:DisplayObjectContainer;
      
      public var label:TextField;
      
      public var levelField:TextField;
      
      public var progressBarClip:MovieClip;
      
      private var _nextExpLim:int;
      
      private var _userExp:int;
      
      private var _toolTipTarget:ToolTipTargetMovieClip;
      
      public function LevelIndicatorWrapper()
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
         this._toolTipTarget.graphics.drawRect(0,0,this._asset.width,this._asset.height);
         this._toolTipTarget.graphics.endFill();
      }
      
      public function onAssetProcessComplete() : void
      {
         this._asset.addChild(this._toolTipTarget);
      }
      
      public function setLevel(param1:int) : void
      {
         this.levelField.text = String(param1);
      }
      
      public function setValue(param1:int, param2:int, param3:int, param4:Boolean = false) : void
      {
         var _loc5_:Number = NaN;
         this.nextExpLim = param3;
         if(param3 - param2 > 0)
         {
            if(param1 < param2)
            {
               this.label.text = "0%";
               this.progress = 0;
            }
            else if(param1 >= param3)
            {
               this.label.text = "100%";
               this.progress = 1;
            }
            else
            {
               _loc5_ = (param1 - param2) / (param3 - param2);
               if(param1 <= this.userExp)
               {
                  this.label.text = String(Math.floor(_loc5_ * 100)) + "%";
                  this.progress = _loc5_;
                  dispatchEvent(new Event(LocationDialog.END_EXP_TWEEN));
               }
               else
               {
                  if(this.progressBarClip.scaleX > _loc5_)
                  {
                     this.progress = 0;
                  }
                  if(param4)
                  {
                     this.progressBarClip.scaleX = _loc5_;
                     this.label.text = String(Math.floor(this.progressBarClip.scaleX * 100)) + "%";
                  }
                  else
                  {
                     TweenCube.to(this.progressBarClip,TWEEN_PROGRESS_SEC,{"scaleX":_loc5_},{
                        "onChange":this.onScaleProgressChange,
                        "onComplete":this.onScaleComplete
                     });
                  }
               }
            }
         }
         else
         {
            this.label.text = "max";
            this.progress = 1;
         }
         this.userExp = param1;
      }
      
      public function set progress(param1:Number) : void
      {
         this.progressBarClip.scaleX = param1;
      }
      
      private function onScaleProgressChange() : void
      {
         this.label.text = String(Math.floor(this.progressBarClip.scaleX * 100)) + "%";
      }
      
      private function onScaleComplete() : void
      {
         dispatchEvent(new Event(LocationDialog.END_EXP_TWEEN));
      }
      
      public function set userExp(param1:int) : void
      {
         this._userExp = param1;
         this._toolTipTarget.tooltipConfig = {"text":String(this._userExp) + "/" + String(this._nextExpLim)};
      }
      
      public function get userExp() : int
      {
         return this._userExp;
      }
      
      public function set nextExpLim(param1:int) : void
      {
         this._nextExpLim = param1;
         this._toolTipTarget.tooltipConfig = {"text":String(this._userExp) + "/" + String(this._nextExpLim)};
      }
      
      public function get width() : Number
      {
         return this._asset.width;
      }
      
      public function get x() : int
      {
         return this._asset.x;
      }
      
      public function set x(param1:int) : void
      {
         this._asset.x = param1;
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

