package com.ax3.fishao.view.dialogs.periodicFeatures
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   import flash.utils.Dictionary;
   import protocol.api.periodicFeatures.init.ResponsePeriodicFeaturesInit;
   import protocol.api.periodicFeatures.update.ResponsePeriodicFeatureUpdate;
   
   public class _ba6c47609da4d1f0e53303f9 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _9bc19420e2f3fa29940729a1:Dictionary;
      
      public function _ba6c47609da4d1f0e53303f9()
      {
         super();
         this.init();
      }
      
      public function _8bb0ac0fa6a0e4076a4fed15(param1:String) : _8135ed6dd5e1e5392891fb21
      {
         return this._9bc19420e2f3fa29940729a1[param1];
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_8135ed6dd5e1e5392891fb21 = null;
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         if(!this.isDataLoaded)
         {
            super._fcd2ab11aa6496ff709ec1ea(param1);
         }
         var _loc4_:ResponsePeriodicFeaturesInit = param1 as ResponsePeriodicFeaturesInit;
         var _loc5_:Array = decodeJson(_loc4_.data) as Array;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = _17ddfd0c42d8292798ec9e02._bc65e270da7734eae45a1c1b(_loc2_.type);
            _loc3_.deserialize(_loc2_);
            this._9bc19420e2f3fa29940729a1[_loc3_.type] = _loc3_;
         }
      }
      
      private function _a931dace30d928cb3136ffce(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(!this.isDataLoaded)
         {
            return;
         }
         var _loc2_:ResponsePeriodicFeatureUpdate = param1 as ResponsePeriodicFeatureUpdate;
         var _loc3_:_8135ed6dd5e1e5392891fb21 = this._9bc19420e2f3fa29940729a1[_loc2_.type];
         Debug.assertNotEqual(_loc3_,null,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႘გ჉ဃႾရြၳჃႠႀ႒რჾၜႂ჈ဩႷ၈ჴჴဉၨၤဏှၔჾႌႎყေ჌ႄ၄ၗၿხဉჍႱႌဖၚၙဩြႸႝျმၰ႔ဟ჏Ⴄဃိွ၏ჩဴၖႩရဘიႪႋ჋ღဨ၍ၻႷაჇ၆႗ჟႧႭპ჏ၪကႅၱ჉ႺჇႵჟ႗ჭၢ႐ნၟჹႬჂလ჊ၥၨႹ჉ჽ჌჊ၜႧ႕ဌႶႲ჈ჁႝၓႬဧჳၐၛႹႪ჈ၴဗ္Ⴣ၉ჾၬၿဠუჟႢၞဩၔာ၀ီ၂ၛႹႎ့Ⴖ႞ღ჌გွხျႱႾ႕ၕ႑Ⴤ၏ၺႧၟၥႵၒဵႁႼ჋ဍၵႚႻဦၺးჂჹၼၲ၏Ⴘဣ၈ဈၐ၃ႢႧၨၥႫဝ჏პეც჌ღწႰ჻ჩြဝႴ႙","ზႜ၃პဠხၥლၮჵၴნီၽဏთ") + _loc2_.type);
         _loc3_.state = _loc2_.state;
      }
      
      private function init() : void
      {
         this._9bc19420e2f3fa29940729a1 = new Dictionary(true);
         _remoteExtension = _dfa25706e58a240c1e33e5c6.fscModel.extensionPeriodicFeatures;
         _4575c3ec15103b43cbf2be04(ResponsePeriodicFeatureUpdate,this._a931dace30d928cb3136ffce);
      }
      
      override public function loadInitData(param1:Function) : void
      {
         super.loadInitData(param1);
      }
   }
}

