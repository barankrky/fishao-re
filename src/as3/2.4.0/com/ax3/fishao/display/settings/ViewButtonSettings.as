package com.ax3.fishao.display.settings
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewButton;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class ViewButtonSettings extends ViewButton
   {
      
      private var _source:MovieClip;
      
      private var _isActive:Boolean;
      
      private var _positionOriginal:Point;
      
      private var _offset:Point;
      
      public function ViewButtonSettings(param1:IController, param2:MovieClip)
      {
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set offset(param1:Point) : void
      {
         this._offset = param1;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(this._isActive == param1)
         {
            return;
         }
         this._isActive = param1;
         this._source.gotoAndStop(this._isActive ? 1 : 2);
      }
      
      public function get isActive() : Boolean
      {
         return this._isActive;
      }
      
      override protected function onMouseOver(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         if(_isEnabled)
         {
            TweenLite.killTweensOf(this._source);
            _loc2_ = {
               "x":this._positionOriginal.x + this._offset.x,
               "y":this._positionOriginal.y + this._offset.y
            };
            TweenLite.to(this._source,0.1,_loc2_);
            FishaoSoundManager.play(FishaoSoundManager.SFX_041_UI_Hover_button);
         }
         super.onMouseOver(param1);
      }
      
      override protected function onMouseOut(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         if(_isEnabled)
         {
            TweenLite.killTweensOf(this._source);
            _loc2_ = {
               "x":this._positionOriginal.x,
               "y":this._positionOriginal.y
            };
            TweenLite.to(this._source,0.1,_loc2_);
         }
         super.onMouseOut(param1);
      }
      
      private function init() : void
      {
         this._positionOriginal = new Point(this._source.x,this._source.y);
         this._offset = new Point();
         this.isActive = true;
         initTooltip();
      }
      
      override protected function tryPlaySound() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_051_UI_Open_menu);
      }
   }
}

