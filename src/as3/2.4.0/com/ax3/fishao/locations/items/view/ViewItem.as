package com.ax3.fishao.locations.items.view
{
   import com.ax3.fishao.utils.Utils;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class ViewItem extends ViewBase
   {
      
      private var _source:MovieClip;
      
      public function ViewItem(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      private function init() : void
      {
         this._source = source as MovieClip;
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         TweenCube.from(this._source,1,{
            "alpha":0,
            "y":this._source.y - 20
         },{"ease":Cubic.easeOut});
         this._source.gotoAndPlay(Utils.randomFromTo(0,this._source.totalFrames - 1));
      }
      
      override public function hide(param1:Number = 0, param2:Function = null) : void
      {
         TweenCube.destroyTweensOf(this._source,false);
         TweenCube.to(this._source,1,{
            "alpha":0,
            "y":this._source.y - 40
         },{
            "onComplete":this.cleanup,
            "ease":Cubic.easeOut
         });
      }
      
      override public function cleanup() : void
      {
         TweenCube.destroyTweensOf(this,false);
         if(this._source.parent != null)
         {
            this._source.parent.removeChild(this._source);
         }
         super.cleanup();
      }
   }
}

