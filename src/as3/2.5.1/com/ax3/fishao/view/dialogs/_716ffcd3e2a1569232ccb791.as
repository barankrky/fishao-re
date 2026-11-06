package com.ax3.fishao.view.dialogs
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.display.panels._f6f12dbbfbe7f740316e0e9f;
   import com.ax3.fishao.model._d639e2c43447781c972a23b3;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl._8a201d27733cc0cf97a44b69;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import protocol.sr.DailyQuestCollectResp;
   
   public class _716ffcd3e2a1569232ccb791 extends _6f069ac69f7c38540c42cdf8
   {
      
      private var _358249a0358a4594a1148673:Object;
      
      private var _eecf90b7a3f045637230e932:int;
      
      public function _716ffcd3e2a1569232ccb791()
      {
         super();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         closeBtn.handler = this._705c44c5d8426b22bf2e97ab;
         super._935ac2966ddad68dfc449202();
      }
      
      private function _705c44c5d8426b22bf2e97ab(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function _1b54931221ba1f58900e84b7(param1:MouseEvent) : void
      {
         openPrizeButton.handler = null;
         openPrizeButton.visible = false;
         _dfa25706e58a240c1e33e5c6.dailyQuestExtension._b8cb5ec7c1ba5f343109f1cc(this._72f51742f0514544e2db0419);
         _f6f12dbbfbe7f740316e0e9f.dailyQuestsModel.prizeIsCollect = true;
         GameSwf.currentLocationDialog.dailyQuestManWidget.disable();
         this.close();
      }
      
      private function _72f51742f0514544e2db0419(param1:DailyQuestCollectResp) : void
      {
         var _loc2_:_d351f4e064d7aab830940b30 = app.dialogFactory._03e747ca5cac3bf65193b4fa();
         _loc2_.setData(param1);
         _loc2_._8e673db76dea2e6759d533e6(this._358249a0358a4594a1148673[_d639e2c43447781c972a23b3.SERIE_STEP]);
         _loc2_.show();
      }
      
      public function _3d866f07adb02a6079215c17(param1:Event = null) : void
      {
         var _loc2_:Object = null;
         if(this._358249a0358a4594a1148673 == null)
         {
            return;
         }
         this._eecf90b7a3f045637230e932 = _f6f12dbbfbe7f740316e0e9f.dailyQuestsModel._c1b997b3c5e2aaa33a678cad();
         if(this._eecf90b7a3f045637230e932 > (0x6B27D207 ^ -668064980 ^ -1486237140 ^ 0x14602307))
         {
            timerLabel.text = _c2ad9d37d7be0097d6d2e977._eeaa6c6c21a64b796b80bd46(this._eecf90b7a3f045637230e932);
         }
         else
         {
            timerLabel.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刏剘勝勴勼刌勲勣勗劒剸别勳刀剗劒劒务刖刕勯劽刼動刃剱剼剒刕勜勠勮労劦刴劂勫刹勩勔勨刻剅刉剣劵勞剝勦劧劲劤刋剏劔剬","劆刯則功勗功剜刁刘刿劃刣勹剆动剪"));
         }
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_1S)._475178699397df7592a9026e(this._216ff5c035eed9285a15470b);
         if(!this._358249a0358a4594a1148673[_d639e2c43447781c972a23b3.IS_COMPLETE])
         {
            animation.gotoAndStop(-641279838 ^ 0x6DE97D9B ^ -264406221 ^ 0x4412DE0B);
            openPrizeButton.visible = false;
            openPrizeButton.handler = null;
         }
         else
         {
            animation.play();
            openPrizeButton.visible = true;
            if(this._358249a0358a4594a1148673[_d639e2c43447781c972a23b3.PRIZE_IS_COLLECT])
            {
               openPrizeButton.handler = null;
               openPrizeButton.visible = false;
            }
            else
            {
               openPrizeButton.handler = this._1b54931221ba1f58900e84b7;
               openPrizeButton.visible = true;
            }
         }
         progressLine.gotoAndStop(this._358249a0358a4594a1148673[_d639e2c43447781c972a23b3.SERIE_STEP] + (-529340396 ^ 0x20D700A7 ^ -1893427271 ^ 0x4F817F0B));
         prizeIcon.gotoAndStop(this._358249a0358a4594a1148673[_d639e2c43447781c972a23b3.SERIE_STEP] + (-736411554 ^ 0x5B48BBC1 ^ -1172980944 ^ 0x354640AE));
         var _loc3_:Array = this._358249a0358a4594a1148673[_d639e2c43447781c972a23b3.QUESTS] as Array;
         var _loc4_:int = 0x782D692C ^ 0x47BB1A1D ^ -2004079380 ^ -1223008292;
         for each(_loc2_ in _loc3_)
         {
            _8a201d27733cc0cf97a44b69(this[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勰副勪刯剈劦刌剴勆剘劘刏列劺刪勁刍劆剧勘","勇勅副劮剨剄刖勭剿勯劘则勬劑則剢") + _loc4_]).setData(_loc2_);
            _loc4_++;
         }
      }
      
      private function _216ff5c035eed9285a15470b(param1:uint, param2:uint) : void
      {
         if(this._eecf90b7a3f045637230e932 > (-921651159 ^ -962825544 ^ 0x536E22A1 ^ 0x5CE2E830))
         {
            --this._eecf90b7a3f045637230e932;
            timerLabel.text = _c2ad9d37d7be0097d6d2e977._eeaa6c6c21a64b796b80bd46(this._eecf90b7a3f045637230e932);
         }
         else
         {
            timerLabel.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("စျႅရၟႀံჶႤლმვဥဆჴჰ၀ၦႾၵჴးၢბ၍ფ႘ဍჂၑႈ၀ၶာၹჂၼဨဢႏၒ်Ⴏფ႑შာႇၾ၁ၴၮႜჳႲჿ","ဴဢႥႠ၊ဲჇဗႨႄဎმჍ႒ါႹ"));
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this._3d866f07adb02a6079215c17();
      }
      
      public function setData(param1:Object) : void
      {
         this._358249a0358a4594a1148673 = param1;
      }
      
      override public function close() : void
      {
         closeBtn.removeEventListener(MouseEvent.CLICK,this._705c44c5d8426b22bf2e97ab);
         openPrizeButton.removeEventListener(MouseEvent.CLICK,this._1b54931221ba1f58900e84b7);
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_1S)._95b5d5379ad5d337e4cae733(this._216ff5c035eed9285a15470b);
         super.close();
      }
   }
}

