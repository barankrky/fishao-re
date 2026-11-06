package com.ax3.fishao.locations.marshville
{
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._a1e0e2bf54cc08cc6a7d5b7c;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import flash.events.Event;
   
   public class _47d6b9f0039348f0d7ed7877 extends _67f8febc099eaa05c48aa41e
   {
      
      private var _a5900e053a18313ae6c70944:_6c9355ed2a14a0afdaa3f32b;
      
      private var _edfd582d12fb2ad795c6ec7f:_eb8e676815edb467bb44c67e;
      
      public function _47d6b9f0039348f0d7ed7877(param1:_4039c287ddb4ef46ab65ab0e)
      {
         this._edfd582d12fb2ad795c6ec7f = param1 as _eb8e676815edb467bb44c67e;
         super(param1);
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._edfd582d12fb2ad795c6ec7f._8d2338971c32769a254cb7d8();
         this._edfd582d12fb2ad795c6ec7f._e344ee33bb19e9f0e5ff549b();
         this._edfd582d12fb2ad795c6ec7f._d7130d4b9e70f8e4ab1d9f96();
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._a5900e053a18313ae6c70944 = super._3536e00a076cf84463e9eaaa() as _6c9355ed2a14a0afdaa3f32b;
         return this._a5900e053a18313ae6c70944;
      }
      
      override protected function inspectPlayerPosition() : void
      {
         super.inspectPlayerPosition();
         if(_playerChar == null)
         {
            return;
         }
         if(this._a5900e053a18313ae6c70944.key.visible && this._a5900e053a18313ae6c70944.key.x < _playerChar.graphic.x && this._a5900e053a18313ae6c70944.key.x + this._a5900e053a18313ae6c70944.key.width > _playerChar.graphic.x && this._a5900e053a18313ae6c70944.key.y < _playerChar.graphic.y && this._a5900e053a18313ae6c70944.key.y + this._a5900e053a18313ae6c70944.key.height > _playerChar.graphic.y)
         {
            this._a5900e053a18313ae6c70944.key.visible = false;
            _dfa25706e58a240c1e33e5c6.locationExtension._c56c77ab235d896dae852856(_67282af25befe9778e5c8dd1.OTHER.id,_a1e0e2bf54cc08cc6a7d5b7c.ER_KEY_FROM_MARSHVILLE);
         }
      }
      
      override public function _b24937139cc44ffe53f7fc23(param1:Number, param2:Number, param3:_08c120b706560fce9302bcab = null) : Boolean
      {
         var _loc4_:Boolean = super._b24937139cc44ffe53f7fc23(param1,param2,param3);
         return _loc4_ || this._a5900e053a18313ae6c70944.viewBridgeKey != null && this._a5900e053a18313ae6c70944.viewBridgeKey.hitTest(param1,param2,false) || this._a5900e053a18313ae6c70944.viewBridgeTreeCave != null && this._a5900e053a18313ae6c70944.viewBridgeTreeCave.hitTest(param1,param2,false) || this._a5900e053a18313ae6c70944.viewDoorTreeCave != null && this._a5900e053a18313ae6c70944.viewDoorTreeCave.hitTest(param1,param2);
      }
      
      override public function _7c0f8e1e99739d07d394663c(param1:Number, param2:Number) : Boolean
      {
         return this._a5900e053a18313ae6c70944.viewBridgeKey != null && this._a5900e053a18313ae6c70944.viewBridgeKey.hitTest(param1,param2) || this._a5900e053a18313ae6c70944.viewBridgeTreeCave != null && this._a5900e053a18313ae6c70944.viewBridgeTreeCave.hitTest(param1,param2);
      }
      
      override protected function _4d0a4743bd6399b976a3e47f() : void
      {
         super._4d0a4743bd6399b976a3e47f();
         this._edfd582d12fb2ad795c6ec7f._99f08fbc47a9fcd1e0bce6c6();
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         var _loc2_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_QUESTS_GAME_END_INFO_UPDATED === _loc2_ ? 0x7C9B4386 ^ -66014319 ^ 0x7D66145E ^ -34741175 : -210468198 ^ -179253189 ^ 0x6788F44D ^ 0x61ACA6ED)
         {
            case 0:
               this._edfd582d12fb2ad795c6ec7f._8d2338971c32769a254cb7d8();
               this._edfd582d12fb2ad795c6ec7f._e344ee33bb19e9f0e5ff549b();
               this._edfd582d12fb2ad795c6ec7f._d7130d4b9e70f8e4ab1d9f96();
               break;
            default:
               super.updateWithType(param1);
         }
      }
   }
}

