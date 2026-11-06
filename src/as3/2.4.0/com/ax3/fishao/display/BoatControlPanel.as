package com.ax3.fishao.display
{
   import assets.common.BoatControlPanelAsset;
   import com.ax3.fishao.locations.chars.CharStateType;
   import com.ax3.fishao.vars.app;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class BoatControlPanel extends BoatControlPanelAsset
   {
      
      private var _isBoatControlActivated:Boolean = false;
      
      private var _finalPosition:Point;
      
      private var _startPosition:Point;
      
      private var _switcher:MovieClip;
      
      private var _hitArea:MovieClip;
      
      private var _title:TextField;
      
      public function BoatControlPanel()
      {
         super();
         var _loc1_:DisplayObject = getChildByName("switcher_2");
         this._finalPosition = new Point(_loc1_.x,_loc1_.y);
         _loc1_.parent.removeChild(_loc1_);
         this._switcher = MovieClip(getChildByName("switcher_1"));
         this._startPosition = new Point(this._switcher.x,this._switcher.y);
         this._title = TextField(getChildByName("title"));
         this._hitArea = MovieClip(getChildByName("hit"));
         this._hitArea.buttonMode = true;
         this._hitArea.addEventListener(MouseEvent.CLICK,this.onSwitcherClick);
      }
      
      private function onSwitcherClick(param1:MouseEvent) : void
      {
         this.isBoatControlActivated = !this._isBoatControlActivated;
      }
      
      public function set isBoatControlActivated(param1:Boolean) : void
      {
         if(this._isBoatControlActivated != param1)
         {
            this._isBoatControlActivated = param1;
            if(this._isBoatControlActivated)
            {
               app.user.charState.value = CharStateType.SAIL_BY_BOAT;
            }
            else
            {
               app.user.charState.value = CharStateType.NORMAL;
            }
            this.redrawGivenState();
         }
      }
      
      private function redrawGivenState() : void
      {
         TweenCube.destroyTweensOf(this._switcher,false);
         TweenCube.to(this._switcher,0.15,{"x":(this._isBoatControlActivated ? this._finalPosition.x : this._startPosition.x)},{"wase":Cubic});
      }
      
      public function set titleText(param1:String) : void
      {
         this._title.text = param1;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(!visible && param1)
         {
            TweenCube.destroyTweensOf(this,false);
            alpha = 0;
            TweenCube.to(this,0.5,{"alpha":1});
            super.visible = param1;
         }
         if(visible && !param1)
         {
            TweenCube.destroyTweensOf(this,false);
            TweenCube.to(this,0.5,{"alpha":0},{"onComplete":this.makeInvisible});
         }
      }
      
      private function makeInvisible() : void
      {
         super.visible = false;
      }
   }
}

