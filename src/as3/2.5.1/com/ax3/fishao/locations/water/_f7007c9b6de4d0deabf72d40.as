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
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.view.dialogs.holidays.model._3c51decd20a57adafebafc70;
   import com.ax3.fishao.view.dialogs.holidays.model.base._563cabc253cc273ff4b017b3;
   import com.ax3.fishao.view.dialogs.holidays.model.valentine._3c7949247bd135e20c0edce8;
   import com.ax3.utils.math.randomRange;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class _f7007c9b6de4d0deabf72d40 extends Sprite
   {
      
      public static var creationCounter:int = -12213572 ^ 0x59F85049 ^ -912782872 ^ 0x6F25FB1D;
      
      public static var instanceCounter:int = 0x4022F560 ^ -1266536047 ^ -693506611 ^ 0x2209293C;
      
      public static var waterEffectCounter:int = 0x06079E18 ^ -1012888456 ^ 0x0E801445 ^ -886634971;
      
      public static var destroyCounter:int = 0x22ED38A8 ^ -876566971 ^ -1249644422 ^ 0x5CAE6E97;
      
      public static var CREATION_TIME_MS:uint = -1410985057 ^ 0x30D79157 ^ -129857231 ^ 0x63733161;
      
      public static var CREATION_CHANCE:Number = -10128996 ^ -711799161 ^ 0x50019C91 ^ 0x7AF62388;
      
      public static var MAX_WATER_EFFECTS:int = 0x125BBFF7 ^ -1191933050 ^ -1336875120 ^ 0x1AFFD3E3;
      
      public var rect:Rectangle = new Rectangle();
      
      public var isWater:Boolean = false;
      
      private var _676277e4bad127c70a24b247:uint = 0;
      
      private const _2b0c1dc3982d9d058d06682f:Array = [WaterBubbles1,WaterBubbles1,WaterBubbles2,WaterBubbles2,WaterCircles1,WaterCircles1,WaterCircles2,WaterCircles3,WaterSplash,JumpingFishSmall,JumpingFishNormal,SwimmingFishShadowSmall1,SwimmingFishShadowSmall2];
      
      private const _afcd28a3a3a14197b61d984b:Array = [gViewWaterValentines,gViewWaterValentines,gViewWaterValentines,gViewWaterValentines,gViewWaterValentines];
      
      private var _f4582929d5055379e0496faf:_3c51decd20a57adafebafc70;
      
      public function _f7007c9b6de4d0deabf72d40()
      {
         super();
         ++instanceCounter;
         ++creationCounter;
         this._f4582929d5055379e0496faf = GameSwf.instance.managerHolidays;
      }
      
      private static function _c7e65090c5b8a201d1752291(param1:Event) : void
      {
         var _loc2_:MovieClip = MovieClip(param1.currentTarget);
         _loc2_.removeEventListener(Event.COMPLETE,_c7e65090c5b8a201d1752291);
         if(_loc2_.parent != null)
         {
            --waterEffectCounter;
            _loc2_.parent.removeChild(_loc2_);
         }
      }
      
      private function _66b18a4ff44f3ca7d6ca9def() : MovieClip
      {
         var _loc1_:MovieClip = null;
         var _loc2_:Array = [];
         _loc2_ = _8e13ffc955ce803f9ca06283._95a5742acc364abb3ac13b14(_loc2_,this._2b0c1dc3982d9d058d06682f);
         var _loc3_:_3c7949247bd135e20c0edce8 = this._f4582929d5055379e0496faf._97ff7d2f681e8eebad63961e(_563cabc253cc273ff4b017b3.EHT_VALENTINE) as _3c7949247bd135e20c0edce8;
         if(_loc3_.isActive)
         {
            _loc2_ = _8e13ffc955ce803f9ca06283._95a5742acc364abb3ac13b14(_loc2_,this._afcd28a3a3a14197b61d984b);
         }
         var _loc4_:Class = _8e13ffc955ce803f9ca06283._8d6c1468e1cadaf78435f801(_loc2_) as Class;
         return new _loc4_();
      }
      
      public function destroy() : void
      {
         var _loc1_:DisplayObject = null;
         --instanceCounter;
         ++destroyCounter;
         while(numChildren)
         {
            _loc1_ = getChildAt(0x419AAD46 ^ 0x3C26FB9E ^ 0x5F596707 ^ 0x22E531DF);
            _loc1_.removeEventListener(Event.COMPLETE,_c7e65090c5b8a201d1752291);
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
            if(param1 - this._676277e4bad127c70a24b247 > CREATION_TIME_MS)
            {
               if(randomRange(0x5D654530 ^ -550662834 ^ -94369169 ^ 0x7828C211,-110270698 ^ -219561601 ^ 0x3F7C2DDC ^ 0x34F88BD1) < CREATION_CHANCE && waterEffectCounter < MAX_WATER_EFFECTS)
               {
                  this._676277e4bad127c70a24b247 = param1;
                  this._3c0cfb6e4a853dcd9294e427();
               }
            }
         }
      }
      
      private function _3c0cfb6e4a853dcd9294e427() : void
      {
         var _loc1_:MovieClip = this._66b18a4ff44f3ca7d6ca9def();
         _loc1_.addEventListener(Event.COMPLETE,_c7e65090c5b8a201d1752291);
         _loc1_.x = randomRange(-1886435302 ^ -211911298 ^ -629184428 ^ -1498522320,this.rect.width - _loc1_.width);
         _loc1_.y = randomRange(0x4907F9B6 ^ 0x12BD2417 ^ 0x1E41D4F9 ^ 0x45FB0958,this.rect.height - _loc1_.height);
         addChild(_loc1_);
         ++waterEffectCounter;
      }
   }
}

