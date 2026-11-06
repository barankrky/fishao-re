package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.WorldMapButton;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class WorldMapSwfDialogAsset2 extends FishaoBaseSwfDialog
   {
      
      public var africa:WorldMapButton;
      
      public var asia:WorldMapButton;
      
      public var desert:WorldMapButton;
      
      public var port:WorldMapButton;
      
      public var grass:WorldMapButton;
      
      public var nordic:WorldMapButton;
      
      public var pole:WorldMapButton;
      
      public var rainforest:WorldMapButton;
      
      public var marsh:WorldMapButton;
      
      public var tropicalBeach:WorldMapButton;
      
      public var palmIsland:WorldMapButton;
      
      public var luckyRaft:WorldMapButton;
      
      public var frame:MovieClip;
      
      public var world:MovieClip;
      
      public var title:DialogTitleWrapper;
      
      public var lockedOverFilters:MovieClip;
      
      public var unlockedOverFilters:MovieClip;
      
      public var lockedFilters:MovieClip;
      
      public var unlockedFilters:MovieClip;
      
      protected var _filters:Object = {};
      
      private var _originSize:Point = new Point(800,600);
      
      public function WorldMapSwfDialogAsset2()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "worldMapSwfDialog.swf";
         super(_loc1_);
         _canClosedByEsc = false;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this.titleUpdate();
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         param1.visible = false;
         super.onAssetLoadingComplete(param1);
      }
      
      override protected function onAssetInitComplete(param1:Event) : void
      {
         super.onAssetInitComplete(param1);
         this.screenSizeChanged(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         _asset.visible = true;
      }
      
      public function titleUpdate() : void
      {
         if(this.title == null)
         {
            return;
         }
         this.title.text = I18n.getUpper("worldmap_title");
         this.screenSizeChanged(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
      }
      
      public function screenSizeChanged(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Number = NaN;
         if(this.world != null && this._originSize != null)
         {
            _loc5_ = Math.min(param3 / this._originSize.x,param4 / this._originSize.y);
            this.world.scaleX = this.world.scaleY = _loc5_;
            this.world.x = param1 + (param3 - this._originSize.x * _loc5_) * 0.5;
            this.world.y = param2 + (param4 - this._originSize.y * _loc5_) * 0.5;
            this.frame.width = param3 + 10;
            this.frame.height = param4 + 12;
            this.title.x = (param3 - this.title.width) * 0.5;
         }
      }
      
      override public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.x = 0;
         this.y = 0;
         this.screenSizeChanged(param1,param2,param3,param4);
      }
   }
}

