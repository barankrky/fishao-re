package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.tfs.ParamsApplier;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.control.managers.ToolTipManager;
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.model.TimerMark;
   import com.ax3.fishao.model.interfaces.ILocationTooltip;
   import com.ax3.fishao.requirements.ERequirementType;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.tooltips.LockedLocationTooltip;
   import com.ax3.fishao.view.tooltips.OpenedLocationTooltip;
   import com.ax3.fishao.view.tooltips.UpdatedTooltipType;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import com.inkora.easing.Linear;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import protocol.api.base.ResponseOk;
   
   public class WorldMapButton extends ShiftWrapper implements IAssetWrapper, IToolTipTarget
   {
      
      private var _lockedFilters:Array = [];
      
      private var _unlockedFilters:Array = [];
      
      private var _lockedFiltersOnOver:Array = [];
      
      private var _unlockedFiltersOnOver:Array = [];
      
      private var _locationId:int;
      
      private var _onClick:Function;
      
      private var _currentTooltip:ILocationTooltip;
      
      private var _lockedLocation:LockedLocationTooltip = new LockedLocationTooltip();
      
      private var _unlockedLocation:OpenedLocationTooltip = new OpenedLocationTooltip();
      
      private var _tooltipPosition:Point = new Point(0,0);
      
      private var _chain:MovieClip;
      
      private var _location:DisplayObject;
      
      private var _tweenProgress:Number = 0;
      
      private var _tweenFilters:Array;
      
      private var _disabled:Boolean = false;
      
      private var _accessPriceFishcoins:int;
      
      private var _accessDuration:int;
      
      private var _accessTimeLeft:int;
      
      private var _locationAccessTimeMark:TimerMark;
      
      private var _updateGroup:UpdateGroup;
      
      private var _isFocused:Boolean;
      
      public function WorldMapButton()
      {
         super();
         this._lockedLocation = new LockedLocationTooltip();
         this._lockedLocation.alpha = 0;
         this._unlockedLocation = new OpenedLocationTooltip();
         this._unlockedLocation.alpha = 0;
      }
      
      private static function onResponseReceived(param1:ServerResp) : void
      {
         var _loc2_:ResponseOk = param1 as ResponseOk;
         if(_loc2_ == null)
         {
            return;
         }
         GameSwf.worldMap.startMapUpdate();
      }
      
      private static function cloneFilters(param1:Array) : Array
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Array = [];
         for each(_loc2_ in param1)
         {
            if(_loc2_ is ColorMatrixFilter)
            {
               _loc3_ = new ColorMatrixFilter();
            }
            ParamsApplier.copyProperties(_loc3_,_loc2_);
            _loc4_.push(_loc3_);
         }
         return _loc4_;
      }
      
      public function set tween(param1:Number) : void
      {
         var _loc2_:Array = this.enabled ? this._unlockedFiltersOnOver : this._lockedFiltersOnOver;
         var _loc3_:Array = this.enabled ? this._unlockedFilters : this._lockedFilters;
         var _loc4_:int = 0;
         while(_loc4_ < this._tweenFilters.length)
         {
            if(this._tweenFilters[_loc4_] is ColorMatrixFilter)
            {
               ColorMatrixFilter(this._tweenFilters[_loc4_]).matrix = ColorMatrix.process2MatrixTransparent(ColorMatrixFilter(_loc3_[_loc4_]).matrix,ColorMatrixFilter(_loc2_[_loc4_]).matrix,param1);
            }
            _loc4_++;
         }
         this._location.filters = this._tweenFilters;
         this._tweenProgress = param1;
      }
      
      public function get tween() : Number
      {
         return this._tweenProgress;
      }
      
      public function get enabled() : Boolean
      {
         return !this._disabled;
      }
      
      public function get locationId() : int
      {
         return this._locationId;
      }
      
      public function set isFocused(param1:Boolean) : void
      {
         this._isFocused = param1;
      }
      
      public function get tooltip() : Sprite
      {
         return this._currentTooltip as Sprite;
      }
      
      private function setCurrentView(param1:ILocationTooltip) : void
      {
         if(this._currentTooltip == param1)
         {
            return;
         }
         var _loc2_:Sprite = this.tooltip;
         if(this._currentTooltip != null && _loc2_.parent != null)
         {
            _loc2_.parent.removeChild(_loc2_);
         }
         this._currentTooltip = param1;
         _loc2_ = this.tooltip;
         if(_loc2_ != null)
         {
            ToolTipManager.TOOLTIP_LAYER.addChild(_loc2_);
         }
         this.placeTooltip();
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_041_UI_Hover_button);
         this.show();
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this.enabled)
         {
            this._tweenFilters = cloneFilters(this._unlockedFilters);
         }
         else
         {
            this._tweenFilters = cloneFilters(this._lockedFilters);
         }
         this.hide();
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         if(this.enabled && this._onClick != null)
         {
            this.hide(0);
            FishaoSoundManager.play(FishaoSoundManager.SFX_050_UI_Select_item);
            this._onClick.call(this,param1);
         }
      }
      
      private function onMouseOverTooltip(param1:MouseEvent) : void
      {
         this.onMouseOver(param1);
      }
      
      private function onMouseOutTooltip(param1:MouseEvent) : void
      {
         this.onMouseOut(param1);
      }
      
      private function onButtonBuyClick(param1:MouseEvent) : void
      {
         var _loc2_:int = this._accessPriceFishcoins;
         if(app.user.fishcoins >= _loc2_)
         {
            FishaoFscModelManager.locationExtension.buyAccess(this._locationId,onResponseReceived);
         }
         else
         {
            GameSwf.instance.showBuyFishcoinsDialog();
         }
      }
      
      private function onTimerTick(param1:uint, param2:uint) : void
      {
         var _loc3_:int = this._locationAccessTimeMark.getLeftSec(getTimer());
         if(_loc3_ == 0)
         {
            GameSwf.worldMap.startMapUpdate();
            this._updateGroup.removeFunction(this.onTimerTick);
            this._locationAccessTimeMark = null;
         }
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         addChild(param1);
         MovieClip(param1).mouseEnabled = false;
         mouseChildren = false;
         buttonMode = true;
         addEventListener(MouseEvent.CLICK,this.onClick);
         this.addOverOutListeners();
         this._lockedLocation.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOverTooltip,true,0,true);
         this._lockedLocation.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOutTooltip,true,0,true);
         var _loc2_:MovieClip = MovieClip(param1).getChildByName("chain") as MovieClip;
         if(_loc2_ != null)
         {
            this._chain = _loc2_;
            this._chain.visible = false;
         }
         var _loc3_:MovieClip = MovieClip(param1).getChildByName("location") as MovieClip;
         this._location = _loc3_ == null ? this : _loc3_;
         this._updateGroup = UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200);
      }
      
      public function show(param1:Number = 0.5) : void
      {
         this.placeTooltip();
         var _loc2_:Sprite = this.tooltip;
         this._tweenProgress = 0;
         if(_loc2_ != null)
         {
            _loc2_.visible = true;
         }
         if(this._chain != null)
         {
            this._chain.visible = !this.enabled;
         }
         TweenCube.destroyTweensOf(this._location,true);
         TweenCube.to(this._location,param1,{"tween":1},{"ease":Linear.easeNone});
         if(_loc2_ != null)
         {
            _loc2_.alpha = 0;
            _loc2_.cacheAsBitmap = true;
            TweenCube.destroyTweensOf(_loc2_,false);
            TweenCube.to(_loc2_,param1,{"alpha":1},{"ease":Linear.easeNone});
         }
      }
      
      public function hide(param1:Number = 0.5) : void
      {
         var _loc2_:Sprite = this.tooltip;
         if(param1 == 0 && _loc2_ != null)
         {
            _loc2_.visible = false;
         }
         this._tweenProgress = 1;
         TweenCube.destroyTweensOf(this._location,true);
         TweenCube.to(this._location,param1,{"tween":0},{"ease":Linear.easeNone});
         if(_loc2_ != null)
         {
            TweenCube.destroyTweensOf(_loc2_,false);
            TweenCube.to(_loc2_,param1,{"alpha":0},{"ease":Linear.easeNone});
         }
         if(this._chain != null)
         {
            this._chain.visible = false;
         }
      }
      
      public function disable() : void
      {
         this.setCurrentView(this._lockedLocation);
         if(!this._disabled)
         {
            this._disabled = true;
            this._location.filters = this._lockedFilters;
         }
         if(this._isFocused)
         {
            this.show(0);
         }
         else
         {
            this.hide(0);
         }
      }
      
      public function enable() : void
      {
         this.setCurrentView(this._unlockedLocation);
         if(this._disabled)
         {
            this._disabled = false;
            this._location.filters = this._unlockedFilters;
         }
         if(this._isFocused)
         {
            this.show(0);
         }
         else
         {
            this.hide(0);
         }
      }
      
      public function update(param1:Object) : void
      {
         if(param1 is String)
         {
            param1 = JSON.parse(String(param1));
         }
         if(param1.hasOwnProperty("players"))
         {
            this._unlockedLocation.description = param1.players;
         }
         if(param1.hasOwnProperty("locDesc"))
         {
            this.disable();
            if(param1.hasOwnProperty("access_price_fishcoins"))
            {
               this._accessPriceFishcoins = param1.access_price_fishcoins as int;
            }
            if(param1.hasOwnProperty("access_duration"))
            {
               this._accessDuration = param1.access_duration as int;
            }
            this.updateLockView(param1.locDesc);
         }
         else
         {
            if(param1.hasOwnProperty("access_time_left"))
            {
               this._accessTimeLeft = param1.access_time_left as int;
               this._locationAccessTimeMark = new TimerMark(this._accessTimeLeft * 1000,getTimer());
               this._updateGroup.addFunction(this.onTimerTick);
            }
            this.enable();
         }
         this._currentTooltip.title = I18n.get("location_" + this._locationId);
      }
      
      public function init(param1:LocationConfig, param2:Function, param3:Object) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this._locationId = param1.id;
         this._tooltipPosition = param1.tooltipPosition;
         this._onClick = param2;
         this._lockedFiltersOnOver = param3["lockedOverFilters"] || [];
         this._unlockedFiltersOnOver = param3["unlockedOverFilters"] || [];
         this._unlockedFilters = param3["unlockedFilters"] || [];
         this._lockedFilters = param3["lockedFilters"] || [];
         var _loc6_:ColorMatrixFilter = new ColorMatrixFilter();
         if(this._lockedFiltersOnOver.length > this._lockedFilters.length)
         {
            _loc4_ = this._lockedFiltersOnOver.length - this._lockedFilters.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               this._lockedFilters.push(_loc6_);
               _loc5_++;
            }
         }
         else if(this._lockedFilters.length > this._lockedFiltersOnOver.length)
         {
            _loc4_ = this._lockedFilters.length - this._lockedFiltersOnOver.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               this._lockedFiltersOnOver.push(_loc6_);
               _loc5_++;
            }
         }
         if(this._lockedFiltersOnOver.length > this._lockedFilters.length)
         {
            _loc4_ = this._lockedFiltersOnOver.length - this._lockedFilters.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               this._lockedFilters.push(_loc6_);
               _loc5_++;
            }
         }
         if(this._unlockedFiltersOnOver.length > this._unlockedFilters.length)
         {
            _loc4_ = this._unlockedFiltersOnOver.length - this._unlockedFilters.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               this._unlockedFilters.push(_loc6_);
               _loc5_++;
            }
         }
         this._location.filters = this.enabled ? this._unlockedFilters : this._lockedFilters;
      }
      
      private function updateLockView(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Object = JSON.parse(param1);
         for(_loc2_ in _loc4_)
         {
            if(_loc4_.hasOwnProperty(_loc2_))
            {
               switch(_loc2_)
               {
                  case ERequirementType.ERT_PLAYER_LEVEL:
                     this._lockedLocation.description = I18n.template("worldmap_ca_level",_loc4_);
                     this._lockedLocation.buttonBuy.hide();
                     break;
                  case "catch_fish":
                     this._lockedLocation.description = I18n.template("worldmap_catch_fish",{"fish":I18n.get("fish_" + _loc4_.catch_fish)});
                     this._lockedLocation.buttonBuy.hide();
                     break;
                  case "time_mark":
                     _loc3_ = I18n.get(EStringType.EST_WORLD_MAP_LOCATION_BUY_ACCESS);
                     _loc3_ = _loc3_.replace(EStringTypeStubs.ESTS_TIME,I18n.formatTimestamp(this._accessDuration));
                     this._lockedLocation.description = _loc3_;
                     this._lockedLocation.buttonBuy.label = this._accessPriceFishcoins.toString();
                     this._lockedLocation.mouseEnabled = true;
                     this._lockedLocation.mouseChildren = true;
                     this._lockedLocation.buttonBuy.handler = this.onButtonBuyClick;
                     break;
                  case ERequirementType.ERT_PLAYER_SPENDINGS:
                     this._lockedLocation.description = I18n.get(EStringType.EST_REQUIREMENT_PLAYER_SPENDINGS);
                     this._lockedLocation.buttonBuy.hide();
               }
            }
         }
      }
      
      public function getTooltipType() : TooltipType
      {
         var _loc1_:TooltipType = null;
         if(this._locationAccessTimeMark != null)
         {
            _loc1_ = UpdatedTooltipType.TEXT_TOOLTIP;
         }
         return _loc1_;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         if(this._locationAccessTimeMark == null)
         {
            return _loc2_;
         }
         var _loc3_:int = this._locationAccessTimeMark.getLeftSec(getTimer());
         if(_loc3_ > 60)
         {
            _loc1_ = I18n.formatTimestamp(_loc3_);
         }
         else if(_loc3_ > 0)
         {
            _loc1_ = _loc3_.toString() + " " + I18n.get(_loc3_ > 1 ? "seconds" : "second");
         }
         var _loc4_:String = I18n.get(EStringType.EST_WORLD_MAP_LOCATION_ACCESS_TIME_TOOLTIP);
         _loc4_ = _loc4_.replace(EStringTypeStubs.ESTS_TIME,_loc1_);
         return {"text":_loc4_};
      }
      
      public function placeTooltip() : void
      {
         var _loc1_:Sprite = this.tooltip;
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:Point = localToGlobal(new Point(this._tooltipPosition.x,this._tooltipPosition.y));
         if(this.enabled && this._locationId == LocationConfig.LOCATION_11_PALM_ISLAND.id)
         {
            _loc2_.y += 45;
         }
         _loc1_.x = int(_loc2_.x);
         _loc1_.y = int(_loc2_.y);
      }
      
      public function addOverOutListeners() : void
      {
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
      }
      
      public function removeOverOutListeners() : void
      {
         removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
      }
      
      public function cleanup() : void
      {
         this._locationAccessTimeMark = null;
         ToolTipManager.removeCurrentToolTip();
         this._updateGroup.removeFunction(this.onTimerTick);
      }
   }
}

