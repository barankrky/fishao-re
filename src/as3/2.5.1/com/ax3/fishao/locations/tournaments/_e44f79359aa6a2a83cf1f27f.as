package com.ax3.fishao.locations.tournaments
{
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.palmIsland._1b141b5c2c59d77012d7d70f;
   import flash.events.Event;
   
   public class _e44f79359aa6a2a83cf1f27f extends _cbfd5ba249b6014b04893ab8
   {
      
      private var _810fffd2335e7afbac7613cc:_1b141b5c2c59d77012d7d70f;
      
      public function _e44f79359aa6a2a83cf1f27f(param1:_4039c287ddb4ef46ab65ab0e)
      {
         super(param1);
         this.init();
      }
      
      override public function _b24937139cc44ffe53f7fc23(param1:Number, param2:Number, param3:_08c120b706560fce9302bcab = null) : Boolean
      {
         var _loc4_:Boolean = super._b24937139cc44ffe53f7fc23(param1,param2,param3);
         return _loc4_ || this._810fffd2335e7afbac7613cc.viewMegalodon != null && this._810fffd2335e7afbac7613cc.viewMegalodon.hitTest(param1,param2) || this._810fffd2335e7afbac7613cc.viewPirateCave != null && this._810fffd2335e7afbac7613cc.viewPirateCave.hitTest(param1,param2,false);
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._810fffd2335e7afbac7613cc.viewMegalodon.isEnabled = false;
         this._810fffd2335e7afbac7613cc.viewPirateCave.isEnabled = false;
      }
      
      private function init() : void
      {
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._810fffd2335e7afbac7613cc = super._3536e00a076cf84463e9eaaa() as _1b141b5c2c59d77012d7d70f;
         return this._810fffd2335e7afbac7613cc;
      }
   }
}

