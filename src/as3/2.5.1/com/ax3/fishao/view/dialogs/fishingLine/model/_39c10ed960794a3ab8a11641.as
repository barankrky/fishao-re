package com.ax3.fishao.view.dialogs.fishingLine.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.utils.Dictionary;
   import protocol.api.base.ResponseOk;
   import protocol.api.improvable.FscExtensionImprovable;
   import protocol.api.improvable.ImprovableLevelInfo;
   import protocol.api.improvable.ResponseImprovable;
   
   public class _39c10ed960794a3ab8a11641 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _5bd179b64d9317a4d9b485a5:Dictionary;
      
      private var _f7be696ad1ec80fc438dbcd5:int;
      
      private var _499b95885b38718cb5d653c7:Boolean;
      
      private var _6c1e0ab98252394bd05b52fc:_34a2ba6ad978d976b8b0f5a4;
      
      private var _2e2b31a3f0f1efd3e3f6cf43:ImprovableLevelInfo;
      
      private var _b784b25286f953da5b90fff1:FscExtensionImprovable;
      
      public function _39c10ed960794a3ab8a11641(param1:FscExtensionImprovable)
      {
         super();
         this._b784b25286f953da5b90fff1 = Debug.assertNotEqual(param1,null);
         _remoteExtension = this._b784b25286f953da5b90fff1;
         this.init();
      }
      
      public function get levelInfoMax() : ImprovableLevelInfo
      {
         return this._2e2b31a3f0f1efd3e3f6cf43;
      }
      
      public function get isNowUpgrading() : Boolean
      {
         return this._499b95885b38718cb5d653c7;
      }
      
      public function get timeLeftToNextUpgrade() : int
      {
         return this._f7be696ad1ec80fc438dbcd5;
      }
      
      protected function get updateGroup1S() : _34a2ba6ad978d976b8b0f5a4
      {
         return this._6c1e0ab98252394bd05b52fc;
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ImprovableLevelInfo = null;
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc3_:ResponseImprovable = param1 as ResponseImprovable;
         for each(_loc2_ in _loc3_.levelsInfo)
         {
            if(this._5bd179b64d9317a4d9b485a5[_loc2_.number] == null)
            {
               this._5bd179b64d9317a4d9b485a5[_loc2_.number] = _loc2_;
               if(this._2e2b31a3f0f1efd3e3f6cf43 == null)
               {
                  this._2e2b31a3f0f1efd3e3f6cf43 = _loc2_;
               }
               else
               {
                  this._2e2b31a3f0f1efd3e3f6cf43 = _loc2_.number > this._2e2b31a3f0f1efd3e3f6cf43.number ? _loc2_ : this._2e2b31a3f0f1efd3e3f6cf43;
               }
            }
         }
         this._f7be696ad1ec80fc438dbcd5 = _loc3_.timeToNextUpgrade;
      }
      
      override protected function _9bad24edda2bf4d1df6e57e3() : void
      {
         var _loc1_:int = -1061733955 ^ -766382182 ^ -871484657 ^ -450164468;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1021477367 ^ -1288904862 ^ 0x4D22EA5C ^ 0x06D0A711))
            {
               case 0:
                  return;
               case 1:
                  this._86e87b466a0d61477c4ff505();
                  _loc1_ = 0x6CDEDFE3 ^ 0x6631457D ^ -408516796 ^ -695537156;
                  break;
               case 2:
                  super._9bad24edda2bf4d1df6e57e3();
                  if(this._f7be696ad1ec80fc438dbcd5 >= (-925281852 ^ 0x14813B41 ^ -1629860165 ^ 0x4282243E))
                  {
                     _loc1_ = 0x0B56284F ^ -62692654 ^ 0x703B255A ^ -1125284896;
                  }
                  else
                  {
                     _loc1_ = -1368472045 ^ -878008568 ^ -183152438 ^ -1424826889;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _c4ca5941d1516c4093d23e7e(param1:ImprovableLevelInfo) : void
      {
         Debug.assertNotEqual(param1,null);
         this._f7be696ad1ec80fc438dbcd5 = param1.timeUpgrade;
         this._86e87b466a0d61477c4ff505();
      }
      
      public function _f4e547982d74083b0bb47c80() : void
      {
         this._aaad07d60a9eacc5cf9c4c5d();
         this._439d80393042874b6a3d501f();
      }
      
      private function _55ed9c49de6d180b6c051b25(param1:uint, param2:uint) : void
      {
         if(this._f7be696ad1ec80fc438dbcd5 == (-992539522 ^ 0x2552847A ^ -1008888051 ^ 0x22581F09))
         {
            this._aaad07d60a9eacc5cf9c4c5d();
            this._7c446794667ba7b846202e88();
         }
         else
         {
            --this._f7be696ad1ec80fc438dbcd5;
         }
      }
      
      private function init() : void
      {
         this._5bd179b64d9317a4d9b485a5 = new Dictionary(true);
         this._6c1e0ab98252394bd05b52fc = _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_1S);
      }
      
      public function _83e87e4f25c0be9a14b3a3a4(param1:uint) : *
      {
         var _loc2_:ImprovableLevelInfo = null;
         _loc2_ = this._5bd179b64d9317a4d9b485a5[param1];
         Debug.assertNotEqual(_loc2_,null);
         return _loc2_;
      }
      
      public function _dbecfebe6ff32acd9f5d6208(param1:uint) : *
      {
         var _loc2_:ImprovableLevelInfo = null;
         return this._5bd179b64d9317a4d9b485a5[param1 + (-899265748 ^ 0x73035474 ^ 0x75AAC8ED ^ -858794060)];
      }
      
      private function _86e87b466a0d61477c4ff505() : void
      {
         Debug.assert(!this._499b95885b38718cb5d653c7,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劢刧勛剅剦劄勂剦刓刮刵勫勥列勪刁刳剌劘刐剹勰勴勡別割勦剭勸勰勌刹勅删助勂劃切勌勪刺刻剴勗効勰刿别劙劽劒分剂券劯制剕剖","劃勣劎剗勖刃剏劾剞勹剤勞勖刞勔刿"));
         this._6c1e0ab98252394bd05b52fc._475178699397df7592a9026e(this._55ed9c49de6d180b6c051b25);
         this._499b95885b38718cb5d653c7 = true;
      }
      
      private function _aaad07d60a9eacc5cf9c4c5d() : void
      {
         Debug.assert(this._499b95885b38718cb5d653c7,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挡挣捪捱揍掯振揌揄捫揰揲掞捄捫掀揂挔挂捸揫揟掃挗探捩揫捤揤揱捼捰揸挔挷挩掤捼掎挪捆挚挛捓捽捻捙捕掯揶","捱掮捴挥掰挌捞捦措揫持揎捊揳捊挽"));
         this._499b95885b38718cb5d653c7 = false;
         this._6c1e0ab98252394bd05b52fc._95b5d5379ad5d337e4cae733(this._55ed9c49de6d180b6c051b25);
         this._f7be696ad1ec80fc438dbcd5 = -1750144672 ^ -583863382 ^ 0x2E343548 ^ -1688743811;
      }
      
      protected function _7c446794667ba7b846202e88() : void
      {
         this._b784b25286f953da5b90fff1.upgradeLevelByTime(function(param1:_5e1bab759fcaea6d1f84faa7):void
         {
            if(param1 is ResponseOk)
            {
               _439d80393042874b6a3d501f();
            }
         });
      }
      
      protected function _439d80393042874b6a3d501f() : void
      {
         Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捤挌挴揽挜捃揼捝揮捅掃掂捣揪挗揀挾捛揔推振提挓揅揁揗挺挻揩捞捭挪揞捰捕挤捽捫","揅捇挩捯掅挰挈揚揈捺揵揢掁挸揈掛"));
      }
   }
}

