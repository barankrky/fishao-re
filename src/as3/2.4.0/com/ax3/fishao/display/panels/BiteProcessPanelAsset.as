package com.ax3.fishao.display.panels
{
   import assets.general.BitePanel;
   import com.ax3.display.wrappers.impl.MiddleTextFieldWrapper;
   import com.ax3.events.Listeners;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.notCaughtFish.DialogImproveLine;
   import com.ax3.fishao.view.dialogs.notCaughtFish.DialogImproveRod;
   import com.ax3.fishao.view.dialogs.notCaughtFish.DialogImproveRodAndLine;
   import com.ax3.fishao.view.dialogs.notCaughtFish.DialogImproveSkills;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils.Input;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.removeFromParent;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.display.GradientType;
   import flash.display.SpreadMethod;
   import flash.events.Event;
   import flash.filters.BitmapFilter;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.DropShadowFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.ui.Keyboard;
   import flash.utils.getTimer;
   
   public class BiteProcessPanelAsset extends BitePanel implements IUpdate
   {
      
      private static var _redFilters:Array;
      
      public static const RIGHT_PADDING:int = 150;
      
      public static const BOTTOM_PADDING:int = 150;
      
      private const BAR_WIDTH:int = 285;
      
      private const UPDATE_DELAY_MS:int = 35;
      
      private var _fishRate:int = 1;
      
      private var _greenZoneFrom:int;
      
      private var _greenZoneTo:int;
      
      private var _greenZoneCenter:int;
      
      private var _description:MiddleTextFieldWrapper;
      
      private var _isProgressBarRed:Boolean = false;
      
      private var _redBorder:Number = 0;
      
      private var _orangeBorder:Number = 0;
      
      private var _greenBorder:Number = 0;
      
      private var _inGame:Boolean = false;
      
      private var _gameSize:int;
      
      private var _realGameSize:int = 0;
      
      protected var _fishRandom:Number = 0.5;
      
      private var _sailRandom:Number = 0.5;
      
      private var _sensitivity:Number = 0.5;
      
      private var _progress:Number = 0;
      
      private var _sail:Number = 0;
      
      private var _relativePos:Number = 0;
      
      public var rarity:Number;
      
      protected var _fishSizeCm:Number;
      
      protected var _fishSizeCmFactor:Number;
      
      public var left_down:Boolean = false;
      
      public var right_down:Boolean = false;
      
      private var idle:int;
      
      private var _processUpdateTimestampMs:int;
      
      private var _minigameDurationMultiplier:Number;
      
      private var _rodSizeCm:Number;
      
      private var _fishingLineLength:Number;
      
      private var _boosterMultiplier:Number;
      
      private var _biteFactor:Number;
      
      private var _fishIsShiny:Boolean;
      
      private var _filtersNormal:Array;
      
      private var _filtersNeon:Array;
      
      private var _loseDispatched:Boolean = false;
      
      public function BiteProcessPanelAsset()
      {
         var _loc1_:BitmapFilter = null;
         var _loc2_:ColorMatrix = null;
         var _loc3_:ColorMatrixFilter = null;
         var _loc4_:GlowFilter = null;
         var _loc5_:ColorMatrix = null;
         super();
         titleField.text = I18n.getUpper("bitePopupTitle");
         progressField.text = I18n.getUpper("biteProgressLabel");
         descriptionField.text = I18n.get("bitePopupDescription");
         this._description = new MiddleTextFieldWrapper();
         this._description.process(descriptionField);
         this._description.text = I18n.get("bitePopupDescription");
         if(_redFilters == null)
         {
            _loc5_ = new ColorMatrix();
            _loc5_.adjustHue(-170);
            _redFilters = [_loc5_.filter];
         }
         this._greenZoneCenter = this.BAR_WIDTH * 0.5;
         this._filtersNormal = titleField.filters;
         this._filtersNeon = [];
         for each(_loc1_ in this._filtersNormal)
         {
            this._filtersNeon.push(_loc1_);
         }
         _loc2_ = new ColorMatrix();
         _loc2_.adjustHue(150);
         _loc2_.adjustSaturation(2);
         _loc2_.adjustBrightness(0.2);
         _loc3_ = new ColorMatrixFilter(_loc2_.matrix);
         this._filtersNeon.push(_loc3_);
         _loc4_ = new GlowFilter(59903,1,5,5,1,BitmapFilterQuality.HIGH);
         this._filtersNeon.push(_loc4_);
      }
      
      public function set fishSizeCm(param1:Number) : void
      {
         if(this._fishSizeCm == param1)
         {
            return;
         }
         this._fishSizeCm = param1;
         this._fishSizeCmFactor = 50 + this._fishSizeCm * (11 + this._fishRandom - 0.33) / 11;
      }
      
      public function set minigameDurationMultiplier(param1:Number) : void
      {
         if(this._minigameDurationMultiplier == param1)
         {
            return;
         }
         this._minigameDurationMultiplier = param1;
      }
      
      public function set boosterMultiplier(param1:Number) : void
      {
         if(this._boosterMultiplier == param1)
         {
            return;
         }
         this._boosterMultiplier = param1;
      }
      
      public function set fishingLineLength(param1:Number) : void
      {
         if(this._fishingLineLength == param1)
         {
            return;
         }
         this._fishingLineLength = param1;
      }
      
      public function set rodSizeCm(param1:Number) : void
      {
         if(this._rodSizeCm == param1)
         {
            return;
         }
         this._rodSizeCm = param1;
      }
      
      public function get dialogToShowClass() : Class
      {
         var _loc1_:Class = DialogImproveSkills;
         var _loc2_:Boolean = this._fishSizeCm > this._fishingLineLength;
         var _loc3_:Boolean = this._fishSizeCm > this._rodSizeCm;
         if(_loc2_ && !_loc3_)
         {
            _loc1_ = DialogImproveLine;
         }
         else if(_loc2_ && _loc3_)
         {
            _loc1_ = DialogImproveRodAndLine;
         }
         else if(_loc3_)
         {
            _loc1_ = DialogImproveRod;
         }
         return _loc1_;
      }
      
      private function get biteFactorDefault() : Number
      {
         return (this._rodSizeCm + this._fishingLineLength) / 2 * this._boosterMultiplier;
      }
      
      public function set fishIsShiny(param1:Boolean) : void
      {
         if(this._fishIsShiny == param1)
         {
            return;
         }
         this._fishIsShiny = param1;
         titleField.filters = this._fishIsShiny ? this._filtersNeon : this._filtersNormal;
      }
      
      private function get randomGameSize() : Number
      {
         var _loc1_:Number = Math.floor(100 + Math.random() * 100);
         return _loc1_ * this._minigameDurationMultiplier;
      }
      
      public function drawGradient(param1:Number) : void
      {
         colorBar.graphics.clear();
         var _loc2_:Matrix = new Matrix();
         _loc2_.createGradientBox(this.BAR_WIDTH,32,0,0,0);
         var _loc3_:int = 40 + 50 * (1 - param1);
         colorBar.graphics.beginGradientFill(GradientType.LINEAR,[16711680,16776960,65280,16776960,16711680],[1,1,1,1,1],[0,_loc3_,127,255 - _loc3_,255],_loc2_,SpreadMethod.PAD);
         colorBar.graphics.drawRoundRect(0,0,this.BAR_WIDTH,32,10);
         colorBar.graphics.endFill();
         colorBar.filters = [new DropShadowFilter(1,90,0,1,2,2,1,1,true,false,false)];
         colorBar.addChild(pointer);
         pointer.y = 0;
         pointer.x = this._greenZoneCenter;
         var _loc4_:Number = this.BAR_WIDTH * param1 * 0.7;
         this._greenZoneFrom = this._greenZoneCenter - _loc4_ * 0.5 - this._fishRate * 5;
         this._greenZoneTo = this._greenZoneCenter + _loc4_ * 0.5 + this._fishRate * 5;
      }
      
      public function start() : void
      {
         if(this._inGame)
         {
            return;
         }
         this._loseDispatched = false;
         this.drawGradient(1 - (limit(this.rarity,1,5) - 1) / 5);
         this._redBorder = this.rarity * 5.7 + 15;
         this._orangeBorder = this.rarity * 8.6 + 23;
         this._greenBorder = this.rarity * 11.4 + 32;
         FishaoSoundManager.lowerBgSound(0.02);
         FishaoSoundManager.playLoop(FishaoSoundManager.SFX_047_MUS_Catch_music);
         this._inGame = true;
         this._gameSize = this.randomGameSize;
         this._realGameSize = 0;
         this._progress = 0;
         this.idle = 0;
         pointer.x = this._greenZoneCenter;
         this._relativePos = 50;
         this._sail = 0;
         this.makeProgressNormal();
         this._fishRandom = Math.random();
         this._sailRandom = Math.random();
         this._sensitivity = Math.random();
         this._biteFactor = 50 + this.biteFactorDefault;
         Input.initialize(stage);
         UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).add(this);
         this._processUpdateTimestampMs = getTimer();
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(!this._inGame)
         {
            return;
         }
         while(this._processUpdateTimestampMs < getTimer())
         {
            this._processUpdateTimestampMs += this.UPDATE_DELAY_MS;
            if(Input.isKeyDown(Keyboard.LEFT,Keyboard.A))
            {
               leftButton.gotoAndStop("down");
               this.left_down = true;
            }
            else
            {
               leftButton.gotoAndStop("normal");
               this.left_down = false;
            }
            if(Input.isKeyDown(Keyboard.RIGHT,Keyboard.D))
            {
               rightButton.gotoAndStop("down");
               this.right_down = true;
            }
            else
            {
               rightButton.gotoAndStop("normal");
               this.right_down = false;
            }
            ++this._realGameSize;
            _loc4_ = Math.random() - 0.5;
            _loc5_ = Math.random() - 0.5;
            if(Math.abs(_loc4_) > Math.abs(_loc5_))
            {
               _loc3_ = _loc4_;
            }
            else
            {
               _loc3_ = _loc5_;
            }
            if(this.left_down || this.right_down)
            {
               this.idle = 0;
            }
            else
            {
               ++this.idle;
            }
            if(this._progress < 40)
            {
               _loc3_ = _loc3_ * this._progress / 40;
            }
            if(this.idle > 40)
            {
               _loc3_ = _loc3_ * this.idle / 40;
            }
            if(Math.random() < 0.5 && (_loc3_ < 0 && this._sail > 0 || _loc3_ > 0 && this._sail < 0))
            {
               _loc3_ = -_loc3_;
            }
            if(this._fishSizeCmFactor > this._biteFactor * 1.2)
            {
               _loc6_ = this._fishSizeCmFactor / this._biteFactor * 2.4;
               if((this.left_down || this.right_down) && Math.random() < 0.12 + this.rarity / 60)
               {
                  this._sail = -2.2 * this._sail;
               }
            }
            else if(this._fishSizeCmFactor > this._biteFactor)
            {
               _loc6_ = this._fishSizeCmFactor / this._biteFactor * 1.8;
               if((this.left_down || this.right_down) && Math.random() < 0.08 + this.rarity / 60)
               {
                  this._sail = -1.6 * this._sail;
               }
            }
            else
            {
               _loc6_ = this._fishSizeCmFactor / this._biteFactor * 0.8;
               if((this.left_down || this.right_down) && Math.random() < 0.04 + this.rarity / 70)
               {
                  this._sail = -0.4 * this._sail;
               }
            }
            if(_loc6_ < 0.03)
            {
               _loc6_ = 0.03;
            }
            _loc6_ *= 0.7 + this.rarity / 3;
            _loc6_ += this._realGameSize / this._gameSize / 3;
            this._sail += _loc3_ * _loc6_;
            this._sail = this._sail * (7 + this._sailRandom - 0.5) / 7;
            if(this.left_down && !this.right_down)
            {
               this._relativePos -= 0.4 - this.rarity / 40 + this._sensitivity / 4;
               this._sail *= 0.8;
               if(this._sail > 0 && Math.random() < 0.08)
               {
                  this._sail = -0.8 * this._sail;
               }
            }
            else if(!this.left_down && this.right_down)
            {
               this._relativePos += 0.4 - this.rarity / 40 + this._sensitivity / 4;
               this._sail *= 0.8;
               if(this._sail < 0 && Math.random() < 0.08)
               {
                  this._sail = -0.8 * this._sail;
               }
            }
            this._relativePos += this._sail;
            pointer.x = this._relativePos / 100 * this.BAR_WIDTH;
            if(pointer.x < this._redBorder || pointer.x > this.BAR_WIDTH - this._redBorder)
            {
               this._progress -= 5;
               this.makeProgressRed();
            }
            else if(pointer.x < this._orangeBorder || pointer.x > this.BAR_WIDTH - this._orangeBorder)
            {
               this._progress -= 3;
               this.makeProgressRed();
            }
            else if(pointer.x < this._greenBorder || pointer.x > this.BAR_WIDTH - this._greenBorder)
            {
               --this._progress;
               this.makeProgressRed();
            }
            else
            {
               this.makeProgressNormal();
               ++this._progress;
            }
            if(this._progress < 0)
            {
               this._progress = 0;
               this._inGame = false;
            }
            if(this._progress >= this._gameSize)
            {
               this._progress = this._gameSize;
               this._inGame = false;
            }
            if(pointer.x < 2)
            {
               pointer.x = 2;
               this._progress = Math.floor(this._progress / 3);
            }
            if(pointer.x > this.BAR_WIDTH - 2)
            {
               pointer.x = this.BAR_WIDTH - 2;
               this._progress = Math.floor(this._progress / 3);
            }
            if(this._inGame == false)
            {
               if(this._progress)
               {
                  this.stopWithWin();
               }
               else
               {
                  this.stopWithLose();
               }
            }
            progressBar.gotoAndStop(int(this._progress / this._gameSize * 200));
         }
      }
      
      private function stopWithLose() : void
      {
         if(this._loseDispatched)
         {
            return;
         }
         this._loseDispatched = true;
         FishaoSoundManager.stopLoop(FishaoSoundManager.SFX_047_MUS_Catch_music);
         FishaoSoundManager.play(FishaoSoundManager.SFX_047_MUS_Catch_fail);
         UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).remove(this);
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      public function cancel() : void
      {
         this._inGame = false;
         if(this.parent)
         {
            FishaoSoundManager.stopLoop(FishaoSoundManager.SFX_047_MUS_Catch_music);
            FishaoSoundManager.play(FishaoSoundManager.SFX_047_MUS_Catch_fail);
            UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).remove(this);
            dispatchEvent(new Event(Event.CLOSE));
         }
      }
      
      private function stopWithWin() : void
      {
         UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).remove(this);
         FishaoSoundManager.stopLoop(FishaoSoundManager.SFX_047_MUS_Catch_music);
         FishaoSoundManager.play(FishaoSoundManager.SFX_047_MUS_Catch_success);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function makeProgressRed() : void
      {
         if(this._isProgressBarRed == false)
         {
            this._isProgressBarRed = true;
            progressBar.filters = _redFilters;
         }
      }
      
      private function makeProgressNormal() : void
      {
         if(this._isProgressBarRed)
         {
            this._isProgressBarRed = false;
            progressBar.filters = null;
         }
      }
      
      public function destroy() : void
      {
         removeFromParent(this);
         Listeners.destroyAllSubscriptions(this);
         UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).remove(this);
      }
   }
}

