package com.ax3.fishao.locations.water
{
   import assets.common.JumpingFishNormal;
   import assets.common.JumpingFishSmall;
   import assets.common.SwimmingFishShadowSmall1;
   import assets.common.SwimmingFishShadowSmall2;
   import assets.common.WaterBubbles1;
   import assets.common.WaterBubbles2;
   import assets.common.WaterCircles1;
   import assets.common.WaterCircles2;
   import assets.common.WaterCircles3;
   import assets.common.WaterSplash;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.view.dialogs.holidays.model.ManagerHolidays;
   import com.ax3.fishao.view.dialogs.holidays.model.base.EHolidayType;
   import com.ax3.fishao.view.dialogs.holidays.model.valentine.HolidayValentine;
   import com.ax3.utils.math.randomRange;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WaterEffectCell extends Sprite
   {
      
      public static var creationCounter:int = 0;
      
      public static var instanceCounter:int = 0;
      
      public static var waterEffectCounter:int = 0;
      
      public static var destroyCounter:int = 0;
      
      public static var CREATION_TIME_MS:uint = 15000;
      
      public static var CREATION_CHANCE:Number = 2;
      
      public static var MAX_WATER_EFFECTS:int = 2;
      
      public var rect:Rectangle = new Rectangle();
      
      public var isWater:Boolean = false;
      
      private var _lastCreationTimeMS:uint = 0;
      
      private const WATER_EFFECT_CLASSES:Array = [WaterBubbles1,WaterBubbles1,WaterBubbles2,WaterBubbles2,WaterCircles1,WaterCircles1,WaterCircles2,WaterCircles3,WaterSplash,JumpingFishSmall,JumpingFishNormal,SwimmingFishShadowSmall1,SwimmingFishShadowSmall2];
      
      private const WATER_EFFECT_CLASSES_VALENTINE:Array = [gViewWaterValentines,gViewWaterValentines,gViewWaterValentines,gViewWaterValentines,gViewWaterValentines];
      
      private var _managerHolidays:ManagerHolidays;
      
      public function WaterEffectCell()
      {
         super();
         ++instanceCounter;
         ++creationCounter;
         this._managerHolidays = GameSwf.instance.managerHolidays;
      }
      
      private static function onWaterEffectComplete(param1:Event) : void
      {
         var _loc2_:MovieClip = MovieClip(param1.currentTarget);
         _loc2_.removeEventListener(Event.COMPLETE,onWaterEffectComplete);
         if(_loc2_.parent != null)
         {
            --waterEffectCounter;
            _loc2_.parent.removeChild(_loc2_);
         }
      }
      
      private function getRandomAnimation() : MovieClip
      {
         var _loc1_:MovieClip = null;
         var _loc2_:Array = [];
         _loc2_ = UtilsArray.mergeArrays(_loc2_,this.WATER_EFFECT_CLASSES);
         var _loc3_:HolidayValentine = this._managerHolidays.getHoliday(EHolidayType.EHT_VALENTINE) as HolidayValentine;
         if(_loc3_.isActive)
         {
            _loc2_ = UtilsArray.mergeArrays(_loc2_,this.WATER_EFFECT_CLASSES_VALENTINE);
         }
         var _loc4_:Class = UtilsArray.randomValue(_loc2_) as Class;
         return new _loc4_();
      }
      
      public function destroy() : void
      {
         var _loc1_:DisplayObject = null;
         --instanceCounter;
         ++destroyCounter;
         while(numChildren)
         {
            _loc1_ = getChildAt(0);
            _loc1_.removeEventListener(Event.COMPLETE,onWaterEffectComplete);
            if(_loc1_.parent != null)
            {
               --waterEffectCounter;
               _loc1_.parent.removeChild(_loc1_);
            }
         }
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         if(this.isWater)
         {
            if(param1 - this._lastCreationTimeMS > CREATION_TIME_MS)
            {
               if(randomRange(0,100) < CREATION_CHANCE && waterEffectCounter < MAX_WATER_EFFECTS)
               {
                  this._lastCreationTimeMS = param1;
                  this.createWaterEffect();
               }
            }
         }
      }
      
      private function createWaterEffect() : void
      {
         var _loc1_:MovieClip = this.getRandomAnimation();
         _loc1_.addEventListener(Event.COMPLETE,onWaterEffectComplete);
         _loc1_.x = randomRange(0,this.rect.width - _loc1_.width);
         _loc1_.y = randomRange(0,this.rect.height - _loc1_.height);
         addChild(_loc1_);
         ++waterEffectCounter;
      }
   }
}

