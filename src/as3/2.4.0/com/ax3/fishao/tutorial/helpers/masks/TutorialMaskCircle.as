package com.ax3.fishao.tutorial.helpers.masks
{
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.utils.Utils;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.junkbyte.console.Cc;
   import flash.geom.Point;
   
   public class TutorialMaskCircle extends TutorialMaskBase
   {
      
      private var _radius:int;
      
      private var _playerDestination:Function;
      
      private var _playerDestinationCallback:Function;
      
      private var _distanceToTarget:int;
      
      private var _routeIndicator:gViewTutorialRouteIndicator;
      
      public function TutorialMaskCircle()
      {
         super();
      }
      
      public function get radius() : int
      {
         return this._radius;
      }
      
      public function set radius(param1:int) : void
      {
         this._radius = param1;
      }
      
      public function set playerDestination(param1:Function) : void
      {
         this._playerDestination = param1;
         if(this._playerDestination != null)
         {
            this._routeIndicator = new gViewTutorialRouteIndicator();
            PopupManager.TUTORIAL_LAYER.addChild(this._routeIndicator);
         }
      }
      
      public function set playerDestinationCallback(param1:Function) : void
      {
         this._playerDestinationCallback = param1;
      }
      
      public function set distanceToTarget(param1:int) : void
      {
         this._distanceToTarget = param1;
      }
      
      override public function update() : void
      {
         _lastPosition = null;
         if(_functionGetPosition != null)
         {
            _lastPosition = _functionGetPosition() as Point;
         }
         if(_lastPosition != null)
         {
            _maskView.graphics.clear();
            _maskView.graphics.beginFill(0);
            _maskView.graphics.drawCircle(_lastPosition.x,_lastPosition.y,this._radius);
            _maskView.graphics.endFill();
         }
         else
         {
            Cc.error("circle mask position is null!");
         }
      }
      
      public function updateRouteIndicator(param1:LocationUser) : void
      {
         var _loc2_:Point = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:LocationDialog = GameSwf.currentLocationDialog;
         if(param1 == null || param1.fieldChar == null || param1.fieldChar.graphic == null || this._playerDestination == null || _loc5_ == null)
         {
            return;
         }
         _loc2_ = this._playerDestination() as Point;
         if(_loc2_ == null)
         {
            this.tryCleanupRouteIndicator();
            return;
         }
         var _loc6_:FieldChar = param1.fieldChar;
         var _loc7_:int = _loc6_.graphic.x;
         var _loc8_:int = _loc6_.graphic.y;
         var _loc9_:Point = new Point(_loc7_,_loc8_ - 20);
         var _loc10_:Point = new Point(_loc7_ + 20,_loc8_ - 20);
         var _loc11_:Number = Utils.anglePoint(_loc9_,_loc10_,_loc2_);
         _loc11_ *= 180 / Math.PI;
         if(_loc2_.y < _loc8_ - 20)
         {
            _loc11_ = 360 - _loc11_;
         }
         this._routeIndicator.rotation = _loc11_;
         var _loc12_:Number = _loc7_;
         var _loc13_:Number = _loc8_ - 20;
         var _loc14_:Number = _loc2_.x;
         var _loc15_:Number = _loc2_.y;
         var _loc16_:Number = (_loc15_ - _loc13_) / (_loc14_ - _loc12_);
         var _loc17_:Number = (-_loc12_ * _loc15_ + _loc13_ * _loc14_) / (_loc14_ - _loc12_);
         var _loc18_:Number = 1 + _loc16_ * _loc16_;
         var _loc19_:Number = 2 * (-_loc12_ + _loc16_ * _loc17_ - _loc16_ * _loc13_);
         var _loc20_:Number = _loc12_ * _loc12_ + _loc17_ * _loc17_ - 2 * _loc17_ * _loc13_ + _loc13_ * _loc13_ - (this._radius - 10) * (this._radius - 10);
         var _loc21_:Number = _loc19_ * _loc19_ - 4 * _loc18_ * _loc20_;
         if(_loc21_ < 0)
         {
            Cc.error("Tutorial direction pointer D < 0");
            return;
         }
         var _loc22_:Number = (-_loc19_ + Math.sqrt(_loc21_)) / (2 * _loc18_);
         var _loc23_:Number = _loc16_ * _loc22_ + _loc17_;
         var _loc24_:Number = (-_loc19_ - Math.sqrt(_loc21_)) / (2 * _loc18_);
         var _loc25_:Number = _loc16_ * _loc24_ + _loc17_;
         if(_loc22_ < Math.max(_loc12_,_loc14_) && _loc22_ > Math.min(_loc12_,_loc14_) && _loc23_ < Math.max(_loc13_,_loc15_) && _loc23_ > Math.min(_loc13_,_loc15_))
         {
            _loc3_ = _loc22_;
            _loc4_ = _loc23_;
         }
         else
         {
            _loc3_ = _loc24_;
            _loc4_ = _loc25_;
         }
         var _loc26_:Point = _loc5_.locationLayersBase.mainLayer.localToGlobal(new Point(_loc3_,_loc4_));
         this._routeIndicator.x = _loc26_.x;
         this._routeIndicator.y = _loc26_.y;
         var _loc27_:Point = new Point(param1.position.x,param1.position.y);
         var _loc28_:Number = Utils.distanceBetweenPoints(_loc2_,_loc27_);
         this._routeIndicator.visible = _loc28_ > 100;
         if(_loc28_ < this._distanceToTarget && this._playerDestinationCallback != null)
         {
            this._playerDestinationCallback();
         }
      }
      
      private function tryCleanupRouteIndicator() : void
      {
         if(this._routeIndicator != null && this._routeIndicator.parent != null)
         {
            this._routeIndicator.parent.removeChild(this._routeIndicator);
         }
      }
      
      override public function cleanup() : void
      {
         this.tryCleanupRouteIndicator();
         super.cleanup();
      }
   }
}

