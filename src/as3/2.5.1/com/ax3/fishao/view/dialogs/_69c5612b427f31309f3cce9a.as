package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._5b4410ecf348df93b2def564;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import protocol.sr.GetDataResp;
   
   public class _69c5612b427f31309f3cce9a extends _41faa6aefa6377d1987f0fab
   {
      
      public var onApply:Function;
      
      private var _8b05b4550947d3c5a96a1139:String;
      
      private var _808c0526fc0f65df7cea2d10:int;
      
      public function _69c5612b427f31309f3cce9a()
      {
         super();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var _loc1_:_5b4410ecf348df93b2def564 = null;
         var _loc2_:int = -1250285844 ^ -1064559118 ^ -2019385518 ^ -229333940;
         title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刘劔剘勚剦劻刵刨刼劦劋刵剿剸刊募切剸剹劥加刕刽劺刷加勅刐劗勼剰刲劌別勌刻剖剏勵剢剥勬勆刌勭勼势勪剶刽","劼刅勚劍劂列加務劊剗務剖刓劬勋勦"));
         applyButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劓剃勼劇别勷剔加剣劅利劃刺勱剙刻剉剂劳労刌劽勣募勿勚別前制剏","勠刣勒刽勭剳勨刪劚别剪勂刿勦勼剏"));
         description.text = "";
         closeButton.handler = this._0d8e29e8d9afdd50420bf641;
         applyButton.handler = this._386dce9bdf1d71d473feaa93;
         var _loc3_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_5b4410ecf348df93b2def564);
         _loc3_.process(continentsList.itemTemplate);
         continentsList.gap = -70915220 ^ 0x72D4E8D3 ^ -1731641051 ^ 0x11D8429F;
         continentsList.itemFactory = _loc3_;
         placesList.itemFactory = _loc3_;
         var _loc4_:Array = app.timezones._1d9ef24ac243dae717d7b74d();
         _loc2_ = -1076471029 ^ 0x6BC450F3 ^ -1028603555 ^ 0x16A2CAA5;
         while(_loc2_ < _loc4_.length)
         {
            _loc1_ = _5b4410ecf348df93b2def564(continentsList.add(_loc4_[_loc2_]));
            _loc1_.addEventListener(MouseEvent.CLICK,this._b24caf2e549a4166570f3adc);
            _loc2_++;
         }
         applyButton.disable();
         placesList._6d5360dc76898e470b88eb2e();
         placesList._a270befba6c808194a3475ba();
         super._935ac2966ddad68dfc449202();
      }
      
      private function _b24caf2e549a4166570f3adc(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Vector.<DisplayObject> = continentsList.elements;
         for(_loc2_ in _loc4_)
         {
            _5b4410ecf348df93b2def564(_loc4_[_loc2_])._678ceacf432987771c441f34();
         }
         _5b4410ecf348df93b2def564(param1.currentTarget).select();
         _loc3_ = String(_5b4410ecf348df93b2def564(param1.currentTarget).data).replace(new RegExp(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဎჩႜ႓ၭဌဌီႻე","ცქဟာဠေီწႾ၀ႈႨ႙ၮჿႧ"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刪刈剖勛剑労刐劾劂勔","刺創剷劰勈勜剋剸剨刲刂勀勦勇刪劕")),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勜勺勑前劚剑劥勉勑刂","勽劳勺劸刧劫剦勄刽剶刾劁刖劏剋剻"));
         description.text = _loc3_;
         this._064a30389ae02d526b4efa74(_loc3_);
         clearTimeout(this._808c0526fc0f65df7cea2d10);
         applyButton.disable();
      }
      
      private function _064a30389ae02d526b4efa74(param1:String, param2:String = null) : void
      {
         var _loc3_:_5b4410ecf348df93b2def564 = null;
         var _loc4_:int = 0x25AC4CBD ^ -1506031645 ^ -1534931515 ^ 0x2715469B;
         placesList.removeAll();
         var _loc5_:Array = app.timezones._1d9ef24ac243dae717d7b74d(param1);
         _loc4_ = -234381632 ^ -623610575 ^ 0x6FB18969 ^ 0x47626298;
         while(_loc4_ < _loc5_.length)
         {
            _loc3_ = _5b4410ecf348df93b2def564(placesList.add(_loc5_[_loc4_]));
            _loc3_.addEventListener(MouseEvent.CLICK,this._3d042c94926f2032e4b46cf3);
            if(param2 != null && param2 == _loc3_.data)
            {
               _loc3_.select();
            }
            _loc4_++;
         }
      }
      
      private function _3d042c94926f2032e4b46cf3(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         clearTimeout(this._808c0526fc0f65df7cea2d10);
         var _loc6_:Vector.<DisplayObject> = placesList.elements;
         for(_loc2_ in _loc6_)
         {
            _5b4410ecf348df93b2def564(_loc6_[_loc2_])._678ceacf432987771c441f34();
         }
         _5b4410ecf348df93b2def564(param1.currentTarget).select();
         _loc3_ = String(_5b4410ecf348df93b2def564(param1.currentTarget).data);
         _loc6_ = placesList.elements;
         _loc4_ = "";
         _loc6_ = continentsList.elements;
         for(_loc2_ in _loc6_)
         {
            if(_5b4410ecf348df93b2def564(_loc6_[_loc2_]).isSelected)
            {
               _loc4_ = String(_5b4410ecf348df93b2def564(_loc6_[_loc2_]).data);
               break;
            }
         }
         _loc4_ = _loc4_.replace(new RegExp(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၼ჻ၧႣ၁့ဿၯ့Ⴃ","ၨ჌ဝဦსႮჾჼၞဲမქၖၚწხ"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刱办剧剮刔初勲剬努剖","勒刿剖劂勼剘勈勫刳劊劶勁刖刹募刲")),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၪၱၫჾၿ႙჎მႃၤ","လဘ့აძာ჻თ჈႟იჂၛფးင"));
         _loc3_ = _loc3_.replace(new RegExp(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挭掁掎掕掛揟採揎挷揚","揁指揆挩掤捙掓揵捀揓掆挟挐揕挓掤"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勘削剣劐勰剽劦刕剖剁","劵剺刔勄刴剢剛剚劈剾刖刂制勞前勦")),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剙势劶勿労劋剢剣劯务","刅勥剗势刨剪劄剽劰勹劈剸剘勘勉刉"));
         _loc5_ = app.timezones._dcc56175ccf5faa930b1794c(_loc4_,_loc3_);
         description.text = (_loc5_ != null ? _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揙揀挢捱捳捰揽掃揩挬揔接捌揅揰捅捾掴","捥揹捑掳挼掭捳捕揫掀揋挝掹挵捬挎") + _loc5_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴐႛფძရႉ჉ჺႷဒႉႫ","ေრၸၻ။ჰიႮူჟဦქႝကჿၛ") : "") + _loc4_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႀ၆ဢჰဝႈၜზ჉Ⴥ","Ⴖဢ၇ၱႷႾჽიჃ჋ჾჭၗႭၓႉ") + _loc3_;
         this._8b05b4550947d3c5a96a1139 = _loc4_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႞ႁငჂဥႥ္ၫၕჺ","ၤၠ၃ှစၩჀဲၶ႒။ဌႊႨყႦ") + _loc3_;
         applyButton.enable();
         this._677c55d448c29be3056d82be();
      }
      
      private function _2e5ce05b4d190ac0762a7f51(param1:GetDataResp) : void
      {
         currentTime.text = String(param1.data.getTimeForTimeZone);
         this._808c0526fc0f65df7cea2d10 = setTimeout(this._677c55d448c29be3056d82be,-1573651523 ^ 0x60C58859 ^ 0x25E7E35F ^ -418269269);
      }
      
      private function _677c55d448c29be3056d82be() : void
      {
         clearTimeout(this._808c0526fc0f65df7cea2d10);
         _dfa25706e58a240c1e33e5c6.locationExtension._1216f7fd628901500cc4236e(this._8b05b4550947d3c5a96a1139,this._2e5ce05b4d190ac0762a7f51);
      }
      
      private function _0d8e29e8d9afdd50420bf641(param1:MouseEvent) : void
      {
         clearTimeout(this._808c0526fc0f65df7cea2d10);
         close();
      }
      
      private function _386dce9bdf1d71d473feaa93(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x4A57408E ^ -1977338731 ^ 0x761ACDE8 ^ -1392629267;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x2C6DD7EC ^ -688580866 ^ 0x6E78C524 ^ -1904765911))
            {
               case 0:
                  this._0d8e29e8d9afdd50420bf641(param1);
                  return;
               case 1:
                  if(this.onApply != null)
                  {
                     _loc2_ = 0x08839F35 ^ 0x6C791120 ^ 0x7416EBF8 ^ 0x0A7BF5F0;
                  }
                  else
                  {
                     _loc2_ = 0x080E9714 ^ 0x165607C4 ^ -1773161160 ^ -1837058569;
                  }
                  break;
               case 2:
                  this.onApply.call(this,this._8b05b4550947d3c5a96a1139);
                  _loc2_ = 0x16D23A3D ^ 0x404D03E2 ^ -1674959141 ^ -803041509;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _058c71927c1c04d32d5b7664(param1:String) : void
      {
         var _loc2_:String = null;
         if(description == null)
         {
            setTimeout(this._058c71927c1c04d32d5b7664,-1424161889 ^ 0x32FE89D3 ^ 0x090CC303 ^ -1863366265,param1);
            return;
         }
         description.text = param1;
         var _loc3_:Array = param1.split(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挂揧授揍揢捼挹捚挥揗","揹挤捏掓揁挷揟揆掼控揼掴揃捽捜揩"));
         var _loc4_:Vector.<DisplayObject> = continentsList.elements;
         for(_loc2_ in _loc4_)
         {
            if(_5b4410ecf348df93b2def564(_loc4_[_loc2_]).data != _loc3_[-1221546770 ^ 0x60C3195B ^ 0x186E18D9 ^ -811750036])
            {
               _5b4410ecf348df93b2def564(_loc4_[_loc2_])._678ceacf432987771c441f34();
            }
            else
            {
               _5b4410ecf348df93b2def564(_loc4_[_loc2_]).select();
            }
         }
         this._064a30389ae02d526b4efa74(_loc3_[-1047537094 ^ 0x76FD50A0 ^ 0x6D341C5D ^ -632908089],_loc3_.length > (-1878594065 ^ -756232809 ^ -356950601 ^ -1470923314) ? _loc3_[0x7AF11A72 ^ 0x7E87A2CD ^ 0x6A2CC44C ^ 0x6E5A7CF2] : null);
      }
   }
}

