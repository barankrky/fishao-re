package com.ax3.fishao.view.dialogs.monster_fishes
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.monster_fishes.base._48a8719437a60981914f4c0e;
   import com.ax3.fishao.view.dialogs.monster_fishes.base._67d0b03587e24b3df8700af1;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   import protocol.api.monster_fishes.FscExtensionMonsterFishes;
   import protocol.api.monster_fishes.init.ResponseMonsterFishesInit;
   import protocol.api.monster_fishes.update.ResponseMonsterFishesUpdate;
   
   public class _b67c1d3d17b81c7d30715584 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _c50f7df384c60d3dbdbbe6be:FscExtensionMonsterFishes;
      
      private var _9ddb21b0f409109620e72efe:Array;
      
      private var _74ba9dc6916a09465009a333:Array;
      
      public function _b67c1d3d17b81c7d30715584()
      {
         super();
         this.init();
      }
      
      private function _7ad5197c9faf5cb0ac4a0617(param1:String) : _48a8719437a60981914f4c0e
      {
         var _loc2_:_48a8719437a60981914f4c0e = null;
         var _loc3_:_48a8719437a60981914f4c0e = null;
         for each(_loc3_ in this._9ddb21b0f409109620e72efe)
         {
            if(_loc3_.type == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      private function _2b8666336dfcd8adb989517a(param1:String) : _67d0b03587e24b3df8700af1
      {
         var _loc2_:_67d0b03587e24b3df8700af1 = null;
         var _loc3_:_67d0b03587e24b3df8700af1 = null;
         for each(_loc3_ in this._74ba9dc6916a09465009a333)
         {
            if(_loc3_.type == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      public function _0aa8a7a9a3adf510f859f876(param1:String) : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:_67d0b03587e24b3df8700af1 = null;
         var _loc4_:_48a8719437a60981914f4c0e = null;
         var _loc5_:int = -180608590 ^ -1437952500 ^ -1030371130 ^ -1646035080;
         for each(_loc3_ in this._74ba9dc6916a09465009a333)
         {
            if(_loc3_.type == param1)
            {
               _loc5_ = _loc3_.feedLevel;
               break;
            }
         }
         _loc4_ = this._7ad5197c9faf5cb0ac4a0617(param1);
         _loc2_ = _loc5_ / _loc4_.requiredFeedLevel;
         return Math.min(_loc2_,0x4B28B0A3 ^ -1987289213 ^ -1116613883 ^ 0x7FD53C24);
      }
      
      public function _6a559f143dd5200adad296c3(param1:int) : Number
      {
         var _loc2_:_48a8719437a60981914f4c0e = null;
         var _loc3_:Number = 0x427B21B7 ^ -812965595 ^ -2062115478 ^ 0x08E69DF9;
         for each(_loc2_ in this._9ddb21b0f409109620e72efe)
         {
            if(_loc2_._9af3fc410445ddece5302a47(param1))
            {
               _loc3_ = _loc2_.fishingDurationMultiplier;
               break;
            }
         }
         return _loc3_;
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:_48a8719437a60981914f4c0e = null;
         var _loc5_:_67d0b03587e24b3df8700af1 = null;
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc6_:ResponseMonsterFishesInit = param1 as ResponseMonsterFishesInit;
         for each(_loc2_ in _loc6_.fishesInfo)
         {
            _loc4_ = new _48a8719437a60981914f4c0e();
            _loc4_.deserialize(_loc2_);
            this._9ddb21b0f409109620e72efe.push(_loc4_);
         }
         for each(_loc3_ in _loc6_.fishesProgress)
         {
            _loc5_ = new _67d0b03587e24b3df8700af1();
            _loc5_.deserialize(_loc3_);
            this._74ba9dc6916a09465009a333.push(_loc5_);
         }
      }
      
      private function _972e9824242e2cf940058960(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ResponseMonsterFishesUpdate = param1 as ResponseMonsterFishesUpdate;
         var _loc3_:Object = decodeJson(_loc2_.data);
         var _loc4_:_67d0b03587e24b3df8700af1 = new _67d0b03587e24b3df8700af1();
         _loc4_.deserialize(_loc3_);
         var _loc5_:_67d0b03587e24b3df8700af1 = this._2b8666336dfcd8adb989517a(_loc4_.type);
         if(_loc5_ == null)
         {
            this._74ba9dc6916a09465009a333.push(_loc4_);
         }
         else
         {
            _loc5_.feedLevel = _loc4_.feedLevel;
         }
         var _loc6_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc6_ != null)
         {
            _loc6_.updateWithType(_6b63fd0a4028eb279b227831.ECU_MONSTER_FISH_UPDATE);
         }
      }
      
      private function init() : void
      {
         this._9ddb21b0f409109620e72efe = [];
         this._74ba9dc6916a09465009a333 = [];
         this._c50f7df384c60d3dbdbbe6be = _dfa25706e58a240c1e33e5c6.fscModel.extensionMonsterFish;
         _remoteExtension = this._c50f7df384c60d3dbdbbe6be;
         _4575c3ec15103b43cbf2be04(ResponseMonsterFishesUpdate,this._972e9824242e2cf940058960);
      }
   }
}

