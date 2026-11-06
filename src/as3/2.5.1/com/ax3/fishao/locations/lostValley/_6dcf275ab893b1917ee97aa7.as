package com.ax3.fishao.locations.lostValley
{
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import flash.events.Event;
   
   public class _6dcf275ab893b1917ee97aa7 extends _67f8febc099eaa05c48aa41e
   {
      
      private var _c4483071c2e0af45ec2331b9:_8adc057f33fef8ab2d5dd0d2;
      
      private var _bed25d0f9457c2dd4758eeec:_1ee9a0dc44c67055adea7d55;
      
      public function _6dcf275ab893b1917ee97aa7(param1:_4039c287ddb4ef46ab65ab0e)
      {
         this._bed25d0f9457c2dd4758eeec = param1 as _1ee9a0dc44c67055adea7d55;
         super(param1);
         this.init();
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._bed25d0f9457c2dd4758eeec._11626f5740630a2ca020b3fc();
      }
      
      private function init() : void
      {
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._c4483071c2e0af45ec2331b9 = super._3536e00a076cf84463e9eaaa() as _8adc057f33fef8ab2d5dd0d2;
         return this._c4483071c2e0af45ec2331b9;
      }
      
      override public function _b24937139cc44ffe53f7fc23(param1:Number, param2:Number, param3:_08c120b706560fce9302bcab = null) : Boolean
      {
         var _loc4_:Boolean = super._b24937139cc44ffe53f7fc23(param1,param2,param3);
         return _loc4_ || this._c4483071c2e0af45ec2331b9.viewRocksPond != null && this._c4483071c2e0af45ec2331b9.viewRocksPond.hitTest(param1,param2);
      }
   }
}

