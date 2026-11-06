package com.ax3.fishao.view.dialogs.furniture_factory
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.furniture_factory.model._935e7027b6b8e98015af572a;
   import com.ax3.fishao.view.dialogs.furniture_factory.model._f76461b7f0dd15fea1326a0d;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.utils.getTimer;
   import protocol.api.furniture_factory.FscExtensionFurnitureFactory;
   import protocol.api.furniture_factory.base.ResponseFurnitureFactoryBase;
   import protocol.api.furniture_factory.get_reward.ResponseFurnitureFactoryGetReward;
   
   public class _c77d525b20bc5f754c3cac44 extends _9d4645de4f8d7c9a1a570db1 implements _69eec7d2f73604da25ccda04
   {
      
      private var _48fed81690979fc50dbacc4b:int;
      
      private var _e8e34f498867c6ca3c536d6c:int;
      
      private var _9610351c91deff64c9ad310f:int;
      
      private var _ec57b513f0f3e6211f2324e7:int;
      
      private var _c7263028d0644f4649c46ae8:_935e7027b6b8e98015af572a;
      
      private var _66c2cfde0c679ea072cafca2:FscExtensionFurnitureFactory;
      
      private var _548f64ab0c4c7704902bf59f:Boolean;
      
      public function _c77d525b20bc5f754c3cac44()
      {
         super();
         this._66c2cfde0c679ea072cafca2 = _dfa25706e58a240c1e33e5c6.fscModel.extensionFurnitureFactory;
         _remoteExtension = this._66c2cfde0c679ea072cafca2;
      }
      
      public function get rewardTimeLeft() : int
      {
         return this._48fed81690979fc50dbacc4b;
      }
      
      public function get skipTimePriceFishcoins() : int
      {
         return this._ec57b513f0f3e6211f2324e7;
      }
      
      public function get reward() : _935e7027b6b8e98015af572a
      {
         return this._c7263028d0644f4649c46ae8;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = int((param1 - this._9610351c91deff64c9ad310f) / (0x1282FE1C ^ -1391541765 ^ 0x028651C9 ^ -1123390010));
         var _loc4_:int = limit(this._e8e34f498867c6ca3c536d6c - _loc3_,-396393056 ^ 0xB2F378 ^ -643766668 ^ 0x314D90AC,int.MAX_VALUE);
         if(_loc4_ == (0x77C3D526 ^ 0x38F27989 ^ -612613332 ^ -1806831741) && this._48fed81690979fc50dbacc4b != _loc4_)
         {
            this._a2274ce864a659668f73ffff();
            this.getInfo(false);
         }
         this._48fed81690979fc50dbacc4b = _loc4_;
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._fcd2ab11aa6496ff709ec1ea(param1);
         this._f665d53c3cde74cfed668fdd(param1);
      }
      
      private function _f665d53c3cde74cfed668fdd(param1:_5e1bab759fcaea6d1f84faa7) : Boolean
      {
         var _loc2_:Boolean = false;
         if(_8d417bde99754424b1a285c5(param1))
         {
            return _loc2_;
         }
         var _loc3_:ResponseFurnitureFactoryBase = param1 as ResponseFurnitureFactoryBase;
         this._ec57b513f0f3e6211f2324e7 = _loc3_.skip_time_price_fishcoins;
         this._e8e34f498867c6ca3c536d6c = this._48fed81690979fc50dbacc4b = _loc3_.reward_time_left;
         if(this._48fed81690979fc50dbacc4b > (0x626AC412 ^ 0x60FA76F9 ^ 0x648FE97E ^ 0x661F5B95))
         {
            this._5b82f365930e905c09909920();
         }
         var _loc4_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc4_ != null)
         {
            _loc4_.updateWithType(_6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_UPDATE);
         }
         return true;
      }
      
      private function _b26869efb5b652c27fcb9f0b(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:_f76461b7f0dd15fea1326a0d = null;
         if(!this._f665d53c3cde74cfed668fdd(param1))
         {
            return;
         }
         var _loc3_:Boolean = _0737efdbd5337ba3fbc64b2e.getInstance()._f42ac7342cf11c48018af906() is _f76461b7f0dd15fea1326a0d;
         if(_loc3_)
         {
            _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_UPDATE,_22437dfd77f65dbf9dbc4281.EDT_FURNITURE_FACTORY);
         }
         else if(this._548f64ab0c4c7704902bf59f)
         {
            _loc2_ = app.dialogFactory._a0d214350fb42da9f32557e6(_f76461b7f0dd15fea1326a0d);
            _loc2_.show();
            this._548f64ab0c4c7704902bf59f = false;
         }
      }
      
      private function _33f662c8512d53a0d9313363(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:int = -1484775119 ^ 0x6291A998 ^ 0x6A4750AF ^ 0x6144BD71;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x42F5171E ^ -1383511767 ^ -624672147 ^ -72713937))
            {
               case 0:
                  _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_UPDATE,_22437dfd77f65dbf9dbc4281.EDT_FURNITURE_FACTORY);
                  return;
               case 1:
                  return;
               case 2:
                  if(!this._f665d53c3cde74cfed668fdd(param1))
                  {
                     _loc2_ = 0x74EF8D6E ^ 0x58427367 ^ -1806401267 ^ 0x76EB1A70;
                  }
                  else
                  {
                     _loc2_ = -1897050960 ^ -1715126347 ^ -719511914 ^ 0x0C2708E6;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _808938351f012457cf196626(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(!this._f665d53c3cde74cfed668fdd(param1))
         {
            return;
         }
         var _loc2_:ResponseFurnitureFactoryGetReward = param1 as ResponseFurnitureFactoryGetReward;
         this._c7263028d0644f4649c46ae8 = new _935e7027b6b8e98015af572a();
         this._c7263028d0644f4649c46ae8.deserialize(_loc2_.rewardData);
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_REWARD_GOT,_22437dfd77f65dbf9dbc4281.EDT_FURNITURE_FACTORY);
      }
      
      private function _5b82f365930e905c09909920() : void
      {
         this._655796789c93153623dd2092();
         this._9610351c91deff64c9ad310f = getTimer();
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).add(this);
      }
      
      public function _a2274ce864a659668f73ffff() : void
      {
         this._655796789c93153623dd2092();
      }
      
      private function _655796789c93153623dd2092() : void
      {
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).remove(this);
      }
      
      public function getInfo(param1:Boolean = true) : void
      {
         this._548f64ab0c4c7704902bf59f = param1;
         this._66c2cfde0c679ea072cafca2.getInfo(this._b26869efb5b652c27fcb9f0b);
      }
      
      public function skipTime() : void
      {
         this._66c2cfde0c679ea072cafca2.skipTime(this._33f662c8512d53a0d9313363);
      }
      
      public function getReward() : void
      {
         this._66c2cfde0c679ea072cafca2.getReward(this._808938351f012457cf196626);
      }
   }
}

