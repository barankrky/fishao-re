package com.ax3.fishao.tutorial.helpers
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.display.Gui;
   import com.ax3.fishao.display.settings.ViewSettings;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.chars.ForceMoveStrategy;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.entries.PlayerChar;
   import com.ax3.fishao.locations.entries.PlayerCharTutorialCommon;
   import com.ax3.fishao.tutorial.helpers.masks.TutorialMaskBase;
   import com.ax3.fishao.tutorial.helpers.masks.TutorialMaskCircle;
   import com.ax3.fishao.tutorial.helpers.masks.TutorialMaskRectangle;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class TutorialHelperMask extends TutorialHelperBase
   {
      
      private var _masksListCircle:Array;
      
      private var _masksListRectangle:Array;
      
      private var _masksBgView:Sprite;
      
      private var _masksBgEvents:Sprite;
      
      private var _focusedView:FocusedViewInfo;
      
      private var _needUpdateButtonSettings:Boolean;
      
      public function TutorialHelperMask()
      {
         super();
         this.init();
      }
      
      public static function getPositionForView(param1:DisplayObject, param2:Point = null, param3:Boolean = true) : Function
      {
         var resultFunction:Function = null;
         var view:DisplayObject = param1;
         var offset:Point = param2;
         var needLocalToGlobal:Boolean = param3;
         var viewCenterPoint:Point = new Point(view.width / 2,view.height / 2);
         if(offset == null)
         {
            offset = viewCenterPoint;
         }
         else
         {
            offset = offset.add(viewCenterPoint);
         }
         resultFunction = function():Point
         {
            return needLocalToGlobal ? view.localToGlobal(offset) : new Point(view.x,view.y);
         };
         return resultFunction;
      }
      
      public static function getSizeForView(param1:DisplayObject) : Function
      {
         var view:DisplayObject = param1;
         var resultFunction:Function = function():Point
         {
            return new Point(view.width,view.height);
         };
         return resultFunction;
      }
      
      public static function getCloserPointToLake(param1:Point = null) : Function
      {
         var result:Function = null;
         var playerChar:PlayerCharTutorialCommon = null;
         var locationLayers:Sprite = null;
         var offset:Point = param1;
         playerChar = null;
         locationLayers = null;
         if(offset == null)
         {
            offset = new Point(0,0);
         }
         playerChar = GameSwf.currentLocationDialog.player as PlayerCharTutorialCommon;
         locationLayers = GameSwf.currentLocationDialog.locationLayersBase;
         result = function():Point
         {
            var _loc1_:Point = null;
            if(playerChar == null)
            {
               playerChar = GameSwf.currentLocationDialog.player as PlayerCharTutorialCommon;
            }
            if(locationLayers == null)
            {
               locationLayers = GameSwf.currentLocationDialog.locationLayersBase;
            }
            if(playerChar == null || locationLayers == null)
            {
               return _loc1_;
            }
            var _loc2_:Point = playerChar.getCloserPointToLake();
            if(_loc2_ != null)
            {
               _loc1_ = locationLayers.localToGlobal(_loc2_);
               _loc1_ = _loc1_.add(offset);
            }
            return _loc1_;
         };
         return result;
      }
      
      public function getPositionPlayer(param1:Point = null) : Function
      {
         var result:Function = null;
         var thisPointer:TutorialHelperMask = null;
         var offset:Point = param1;
         thisPointer = null;
         if(offset == null)
         {
            offset = new Point(0,-20);
         }
         thisPointer = this;
         result = function():Point
         {
            var _loc1_:Point = null;
            var _loc2_:FieldChar = thisPointer.locationUserChar;
            if(_loc2_ != null && _loc2_.graphic != null)
            {
               _loc1_ = _loc2_.graphic.localToGlobal(offset);
            }
            return _loc1_;
         };
         return result;
      }
      
      private function get locationUser() : LocationUser
      {
         var _loc1_:LocationUser = null;
         var _loc2_:LocationDialog = this.location;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.locationModel.getLocationUser(app.user.username);
         }
         return _loc1_;
      }
      
      private function get locationUserChar() : FieldChar
      {
         var _loc1_:FieldChar = null;
         var _loc2_:LocationUser = this.locationUser;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.fieldChar;
         }
         return _loc1_;
      }
      
      public function set needUpdateButtonSettings(param1:Boolean) : void
      {
         this._needUpdateButtonSettings = param1;
      }
      
      override protected function onGameResize(param1:Event) : void
      {
         this.updateMask();
      }
      
      protected function onMaskClick(param1:MouseEvent) : void
      {
         var _loc2_:LocationDialog = this.location;
         if(param1 == null || _loc2_ == null || _loc2_.locationModel == null || _loc2_.locationLayersBase == null)
         {
            return;
         }
         var _loc3_:LocationUser = _loc2_.locationModel.getLocationUser(app.user.username);
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:Point = new Point(param1.localX,param1.localY);
         if(_loc2_.scrollrect != null)
         {
            _loc4_.x = _loc2_.scrollrect.x + _loc4_.x;
            _loc4_.y = _loc2_.scrollrect.y + _loc4_.y;
         }
         var _loc5_:PlayerChar = _loc3_.fieldChar as PlayerChar;
         if(_loc5_ == null)
         {
            return;
         }
         var _loc6_:LocationLayers = _loc2_.locationLayersBase;
         if(_loc5_.programmedMove || _loc5_.moveStrategy is ForceMoveStrategy)
         {
            return;
         }
         var _loc7_:int = GameSwf.stage.mouseX - _loc6_.x;
         var _loc8_:int = GameSwf.stage.mouseY - _loc6_.y;
         if(_loc6_.scrollRect != null)
         {
            _loc7_ += _loc6_.scrollRect.x;
            _loc8_ += _loc6_.scrollRect.y;
         }
         if(_loc7_ > _loc6_.fullWidth - LocationDialog.SCREEN_PADDING)
         {
            _loc7_ = _loc6_.fullWidth - LocationDialog.SCREEN_PADDING;
         }
         else if(_loc7_ < LocationDialog.SCREEN_PADDING)
         {
            _loc7_ = LocationDialog.SCREEN_PADDING;
         }
         _loc5_.onMouseClick(_loc7_,_loc8_);
      }
      
      private function init() : void
      {
         this._masksListCircle = [];
         this._masksListRectangle = [];
         this._needUpdateButtonSettings = true;
      }
      
      public function removeAllMasks() : void
      {
         var _loc1_:TutorialMaskBase = null;
         this.tryRemoveFocusedView();
         if(this._masksBgView != null && this._masksBgView.parent != null)
         {
            this._masksBgView.parent.removeChild(this._masksBgView);
            this._masksBgView = null;
         }
         if(this._masksBgEvents != null && this._masksBgEvents.parent != null)
         {
            this._masksBgEvents.parent.removeChild(this._masksBgEvents);
            this._masksBgEvents = null;
         }
         for each(_loc1_ in this._masksListCircle)
         {
            _loc1_.cleanup();
         }
         for each(_loc1_ in this._masksListRectangle)
         {
            _loc1_.cleanup();
         }
         this._masksListCircle = [];
         this._masksListRectangle = [];
         this._needUpdateButtonSettings = true;
      }
      
      public function addMaskCircle(param1:Function, param2:int = 105, param3:Function = null, param4:Function = null, param5:int = 100) : void
      {
         testPointFunction(param1);
         this.tryCreateMaskBg();
         var _loc6_:TutorialMaskCircle = new TutorialMaskCircle();
         _loc6_.radius = param2;
         _loc6_.playerDestination = param3;
         _loc6_.playerDestinationCallback = param4;
         _loc6_.distanceToTarget = param5;
         _loc6_.functionGetPosition = param1;
         this._masksListCircle.push(_loc6_);
         this._masksBgView.addChild(_loc6_.maskView);
      }
      
      public function focusOnView(param1:DisplayObject) : void
      {
         this.tryCreateMaskBg();
         this.tryRemoveFocusedView();
         this._focusedView = new FocusedViewInfo(param1);
         this._masksBgView.addChild(this._focusedView.view);
      }
      
      public function addMaskRectangle(param1:Function, param2:Function) : void
      {
         testPointFunction(param1);
         testPointFunction(param2);
         this.tryCreateMaskBg();
         var _loc3_:TutorialMaskRectangle = new TutorialMaskRectangle();
         _loc3_.functionGetPosition = param1;
         _loc3_.functionGetSize = param2;
         this._masksListRectangle.push(_loc3_);
         this._masksBgView.addChild(_loc3_.maskView);
      }
      
      private function tryCreateMaskBg() : void
      {
         PopupManager.TUTORIAL_LAYER.mouseEnabled = false;
         this.tryCreateMaskView();
         this.tryCreateMaskEvents();
      }
      
      private function tryCreateMaskView() : void
      {
         if(this._masksBgView != null)
         {
            return;
         }
         this._masksBgView = new Sprite();
         this._masksBgView.blendMode = BlendMode.LAYER;
         this._masksBgView.graphics.beginFill(0,0.5);
         this._masksBgView.graphics.drawRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this._masksBgView.graphics.endFill();
         this._masksBgView.name = "mask bg view";
         this._masksBgView.mouseChildren = false;
         this._masksBgView.mouseEnabled = false;
         PopupManager.TUTORIAL_LAYER.addChildAt(this._masksBgView,0);
      }
      
      private function tryCreateMaskEvents() : void
      {
         if(this._masksBgEvents != null)
         {
            return;
         }
         this._masksBgEvents = new Sprite();
         this._masksBgEvents.graphics.beginFill(0,0.01);
         this._masksBgEvents.graphics.drawRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this._masksBgEvents.graphics.endFill();
         this._masksBgEvents.name = "mask bg events";
         PopupManager.TUTORIAL_LAYER.addChildAt(this._masksBgEvents,0);
         this._masksBgEvents.addEventListener(MouseEvent.CLICK,this.onMaskClick);
      }
      
      public function updateMask() : void
      {
         var _loc1_:Point = null;
         var _loc2_:Point = null;
         var _loc3_:TutorialMaskCircle = null;
         var _loc4_:TutorialMaskRectangle = null;
         if(this._masksBgView == null || this._masksBgEvents == null)
         {
            return;
         }
         this._masksBgEvents.graphics.clear();
         this._masksBgEvents.graphics.beginFill(0,0.01);
         this._masksBgEvents.graphics.drawRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this._masksBgView.graphics.clear();
         this._masksBgView.graphics.beginFill(0,0.5);
         this._masksBgView.graphics.drawRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this.updateSoundSettingsMask();
         var _loc5_:LocationUser = this.locationUser;
         for each(_loc3_ in this._masksListCircle)
         {
            if(this._masksBgEvents == null)
            {
               break;
            }
            _loc3_.update();
            _loc1_ = _loc3_.lastPosition;
            if(_loc1_ != null)
            {
               this._masksBgEvents.graphics.drawCircle(_loc1_.x,_loc1_.y,_loc3_.radius);
            }
            _loc3_.updateRouteIndicator(_loc5_);
         }
         for each(_loc4_ in this._masksListRectangle)
         {
            if(this._masksBgEvents == null)
            {
               break;
            }
            _loc4_.update();
            _loc1_ = _loc4_.lastPosition;
            _loc2_ = _loc4_.lastSize;
            if(_loc2_ != null && _loc1_ != null)
            {
               this._masksBgEvents.graphics.drawRoundRect(_loc1_.x,_loc1_.y,_loc2_.x,_loc2_.y,10);
            }
         }
         if(this._focusedView != null)
         {
            this._focusedView.update();
         }
         if(this._masksBgView != null)
         {
            this._masksBgView.graphics.endFill();
         }
      }
      
      private function updateSoundSettingsMask() : void
      {
         if(!this._needUpdateButtonSettings)
         {
            return;
         }
         var _loc1_:Gui = this.gui;
         if(_loc1_ == null || !_loc1_.visible)
         {
            return;
         }
         var _loc2_:Point = new Point(5,5);
         var _loc3_:ViewSettings = _loc1_.controllerSettings.viewSettings;
         var _loc4_:DisplayObject = _loc3_.buttonSound.source;
         var _loc5_:DisplayObject = _loc3_.buttonMusic.source;
         var _loc6_:Point = _loc4_.parent.localToGlobal(new Point(0,0));
         _loc6_.x += _loc4_.x - _loc2_.x;
         if(this._masksBgView != null)
         {
            this._masksBgView.graphics.drawRoundRect(_loc6_.x,0,_loc4_.width + _loc5_.width + _loc2_.x * 2,_loc5_.height - _loc2_.y,10,10);
         }
         if(this._masksBgEvents != null)
         {
            this._masksBgEvents.graphics.drawRoundRect(_loc6_.x,0,_loc4_.width + _loc5_.width + _loc2_.x * 2,_loc5_.height - _loc2_.y,10,10);
         }
      }
      
      private function tryRemoveFocusedView() : void
      {
         if(this._focusedView == null)
         {
            return;
         }
         this._focusedView.tryRestoreToParent();
         this._focusedView = null;
      }
   }
}

