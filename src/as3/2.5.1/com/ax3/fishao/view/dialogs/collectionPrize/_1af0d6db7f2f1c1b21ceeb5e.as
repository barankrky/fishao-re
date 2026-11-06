package com.ax3.fishao.view.dialogs.collectionPrize
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl._bb650418615bc8eb382e5586;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.collections.model._a9131e6257bb33cc49417f53;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   
   public class _1af0d6db7f2f1c1b21ceeb5e extends _c922e394d82fa09f96b0d89e
   {
      
      private var _aa4c132625e9894727646a2b:_bb650418615bc8eb382e5586;
      
      private var _7ab6b19e5d94dbaca78861b4:_a9131e6257bb33cc49417f53;
      
      public function _1af0d6db7f2f1c1b21ceeb5e()
      {
         super();
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_COLLECTION_PRIZE;
      }
      
      public function set entity(param1:_a9131e6257bb33cc49417f53) : void
      {
         this._7ab6b19e5d94dbaca78861b4 = param1;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:TextField = Debug.assertProperty(_asset,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掼揫揄捚揝挵掄捸挌挕捌掍捐捬捜揊挛捆挋揢揢揳揔挷掏捴挞揹","揪揵揔揩挲揂挆揦握捴挨揪挌捇捪捾"),TextField);
         var _loc6_:_73899a4de8f83c8d2c26f545 = new _73899a4de8f83c8d2c26f545(Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("券剡勱勏刄劑劵剅勋勐利勉勣勥劐勉創劼别劁刘勹勰別到勅勭刯劮勑剫劎勌剧利刽劭刪刯剜勡剆劰劺劋力勐劎","刴剦刏别劳前劀剕劗勯勞删动剉動勿"),TextField));
         switch(this._7ab6b19e5d94dbaca78861b4.reward.resourceType)
         {
            case _67282af25befe9778e5c8dd1.BADGE.id:
               §§push(-1972347160 ^ -816533967 ^ -26713835 ^ -1152609844);
               break;
            case _67282af25befe9778e5c8dd1.FISH.id:
               §§push(0x23CA9E01 ^ 0x6CE417A4 ^ 0x4C72730F ^ 0x035CFAAB);
               break;
            default:
               §§push(0x27ACE2B1 ^ 0x630E4142 ^ 0x7C80CF47 ^ 0x38226CB6);
         }
         switch(§§pop())
         {
            case 0:
               _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTION_PRIZE_CONGRATULATIONS);
               _loc1_ = _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_COLLECTION_NAME,_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揇挎挦捴揮挄揉挏捥捩揌挠揢挒捭掅捝挂捇挓掵挸捋揉挒挕捡掵捼挱揊捥挵揊掾揷揢揮掛挊捞挪","揆掮掄挝掚掌揩揪挂挙掞揫掅揕揊握") + this._7ab6b19e5d94dbaca78861b4.id));
               _loc2_ = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႙၃ဲჀစၙၣ႕გၔၨၵႺჹဘ၄ၰၿဒჇထၫკ჎აၘဗၿၕၼႠძნဩပသဈဓၕၥႽჴ","ၚტဠჅငႚႧႌႤႩუႺၬჼဲခ") + this._7ab6b19e5d94dbaca78861b4.id);
               _loc4_ = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勷刕劃刐刄勰剏勒刾劾剹刅刞前刡創劦劆剥劓勳劀剹勯刡勶効剗刂剧劖勗刅劔劫加劶刚券勺勅剚剳剞勶刧刊剹剅刵加刹剴勵","劌剦刘勶劖利劯刬刲刲別則剨勵列勃") + this._7ab6b19e5d94dbaca78861b4.id + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揥捽捊捖掶挟揍挡捳挛掫捡捾掾掬捈","揃掏掔提捈掝措揍控指挫挎揁掐据掍"));
               break;
            case 1:
               _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTION_PRIZE_CONGRATULATIONS_FISH_UNLOCKED);
               _loc1_ = _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_COLLECTION_NAME,_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ქဋჲဂၸဳႝွჳႌძზဇြ၂ეႹဇჂၾဇჄငჭ္႓ხჽဂმျ၀ჴქფၕႳჯ၂჉ၐၴ","ဠႅၸၴဪၤၶႹွဤၾးტჄႅ၆") + this._7ab6b19e5d94dbaca78861b4.id));
               _loc2_ = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挶掁掶掅挍捺挑捉揀插挬掦掚挛挱揳挶挼","掙掋揔揍捤挔揗挏掔捓揢捋接捝排挹") + this._7ab6b19e5d94dbaca78861b4.reward.resourceId);
               _loc4_ = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挟振掿揵掗揬捕掬捙掯捥捔揵掻挵挥挪捥挀掏挳挃捸掭掎捕揬揙揼揥捨挊换掩揭揬掬提掊挦掊掿掂掼挨捴","掯揘掑揁捗採揵掱捽揂掿挢揰挐掜揶") + this._7ab6b19e5d94dbaca78861b4.reward.resourceId + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剩勪勰刨别剳劆勽劮刯勃刣刊勫刦剳","劬刻勳刔劎劽刻刎勑勌剂刹剢劏勞剆"));
         }
         _loc6_.text = _loc1_;
         _loc5_.text = _loc2_;
         var _loc7_:String = _67282af25befe9778e5c8dd1._5a1d463095ae522df1081124(this._7ab6b19e5d94dbaca78861b4.reward.resourceType);
         var _loc8_:String = _3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_loc7_,this._7ab6b19e5d94dbaca78861b4.reward.resourceId);
         _loc3_ = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_loc8_);
         this._aa4c132625e9894727646a2b = new _bb650418615bc8eb382e5586();
         this._aa4c132625e9894727646a2b.process(Debug.assertProperty(_asset,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("控揊捧掖掙揲捁挐揬掾揝捰捆挖揕掲挠揽揦援掟掜挩挜","揨捦揽挾揉掆揶揍掏掩挎掫描挎挸挷")));
         this._aa4c132625e9894727646a2b.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTION_PRIZE_BUTTON_OK);
         this._aa4c132625e9894727646a2b.handler = _ba7fe333230ac51496d90cb8;
         var _loc9_:DisplayObject = Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刉勠勫刺勀努刘勘刁勾劘刡剆劒勮勲勒劇勅剩劲剌办劙募刔勲勿勫刪勱剁","劷劕劲勸劕勌勃剢劝剨剻勝勈劒劃刡"));
         var _loc10_:_a4e47350c89a50d87a148c28 = new _a4e47350c89a50d87a148c28(null);
         _loc10_.width = _loc9_.width;
         _loc10_.height = _loc9_.height;
         app.resourceManager.replaceBitmapDataFromURL(_loc10_,_loc4_);
         ShiftWrapper.shiftDisplayObject(_loc9_,_loc10_);
         var _loc11_:DisplayObject = Debug.assertProperty(_asset,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႆႸ၀ၾၓၵჭဒဎჸဃႳ႔ၯ჎ცဃၕ၊ဥႋၸတ၃ၕၧၓჍတဠფၛႈჂၘპ","ჟლၧဩჺ၌ဳ႟ၝპ၊ၒၖၔტပ"));
         var _loc12_:_a4e47350c89a50d87a148c28 = new _a4e47350c89a50d87a148c28();
         _loc12_.width = _loc11_.width;
         _loc12_.height = _loc11_.height;
         app.resourceManager.replaceBitmapDataFromURL(_loc12_,_loc3_);
         ShiftWrapper.shiftDisplayObject(_loc11_,_loc12_);
         super._935ac2966ddad68dfc449202();
      }
      
      override public function close() : void
      {
         this._aa4c132625e9894727646a2b.handler = null;
         super.close();
      }
   }
}

