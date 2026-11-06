package com.ax3.fishao.tutorial.common.common_b
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._a1e0e2bf54cc08cc6a7d5b7c;
   import com.ax3.fishao.display._8a5b0c698d40931e860c0aeb;
   import com.ax3.fishao.display.dialogs._eaf1c366e9817b3f7cf20d19;
   import com.ax3.fishao.display.panels._59ac9c4db8d8d1a76a4e80e6;
   import com.ax3.fishao.display.panels._af8c0db691f16dd195b14f3f;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations.base._24fc30cfc3c855ea21a231e8;
   import com.ax3.fishao.locations.entries._0d47696161f1136a4c3be130;
   import com.ax3.fishao.locations.entries._c9513c48978d5034cc9ff2f4;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial.common.base._c1dd3094cb2ba333147208b3;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.tutorial.helpers._63a1662bfab25759f09f5245;
   import com.ax3.fishao.tutorial.helpers._e444b603a0e799e84b427ae5;
   import com.ax3.fishao.tutorial.views.dialogs.bite._72cc6d3a86c48c32c334daf6;
   import com.ax3.fishao.tutorial.views.dialogs.caught._bc882fd414165030feaf8199;
   import com.ax3.fishao.tutorial.views.dialogs.inventory._0239b4a1f957bf9e5ccfd482;
   import com.ax3.fishao.tutorial.views.dialogs.shop._62e6ad6eb7ca56c1fbbc638a;
   import com.ax3.fishao.utils._9c52777792d76fde110d23c0;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.junkbyte.console.Cc;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class _28be777f65a00e019ab2f9ac extends _c1dd3094cb2ba333147208b3
   {
      
      private var _f5e50913f16b177033189343:int;
      
      private var _7d81487e05c5b936fdec1551:int;
      
      private var _6999c680be86d1091de4a4e1:int;
      
      public function _28be777f65a00e019ab2f9ac()
      {
         super();
      }
      
      private static function get _2d826f20c3c201fc1e62a912() : Point
      {
         var _loc1_:int = _9c52777792d76fde110d23c0._60f3e8587e4103019e85c82e(0x1F8745A5 ^ 0x1B0AF485 ^ 0x0C4CCD14 ^ 0x08C17878,0x29190164 ^ -1199249443 ^ -1942223438 ^ 0x1DA1E761);
         var _loc2_:int = _9c52777792d76fde110d23c0._60f3e8587e4103019e85c82e(-1637683097 ^ -1785218592 ^ 0x3429A5D2 ^ 0x3FDCEF57,-921973264 ^ -699661191 ^ -1205914041 ^ -1487340670);
         return new Point(_loc1_,_loc2_);
      }
      
      override public function _2664fc44433abf9626ce63fa() : void
      {
         super._2664fc44433abf9626ce63fa();
         _6723a672cb0e6782ec4e6665(_2d826f20c3c201fc1e62a912);
         var _loc1_:Boolean = true;
         switch(stepCurrent)
         {
            case -1594881881 ^ 0x3DEBFEA3 ^ 0x62B5C7DD ^ -5361192:
               §§push(0x2C188BFD ^ -556548362 ^ -134001237 ^ 0x0AC878A0);
               break;
            case this._f5e50913f16b177033189343:
               §§push(-1864103301 ^ 0x1CACD275 ^ -1946311729 ^ 0x07B57BC0);
               break;
            case this._7d81487e05c5b936fdec1551:
               §§push(0x706042B5 ^ 0x7842A36C ^ -39810930 ^ -176002731);
               break;
            case this._6999c680be86d1091de4a4e1:
               §§push(0x14F2BEA6 ^ 0x7ACE3207 ^ -985449777 ^ -1417693587);
               break;
            default:
               §§push(-1755947756 ^ 0x3BAA3CE3 ^ -1580064488 ^ 0x0D2E40EB);
         }
         switch(§§pop())
         {
            case 0:
               _loc1_ = false;
               _0e1bc13a989d12a3776df86c();
               break;
            case 1:
               _dbb8408a6fc0feead9d91cb2();
               break;
            case 2:
               _dbb8408a6fc0feead9d91cb2();
               break;
            case 3:
               _dbb8408a6fc0feead9d91cb2();
               _140ab335dcc3352af7a23f34();
               break;
            default:
               Cc.warn(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挸掉掄掎捖挶揃捉掖捄挥揌掣揉捨捃挧挑挦捀揹掺挍挭捒挞挒挢掻掳揃挰挠掀揀掺挳掁捛掵揥捛掝捖措掠掻掼挘掇揹捇揭捺捺挀掺掳挩揣揉捓挰挋挸捏捑揥揓挴挘捯挨捰掚換揋捨掩挓揖捥掠捴挨揾揣揃揊揻掏掇換捞按持揿捬揾挚挮掌挤掦捧挼揌捵捍揇捑掋揥挧揆挔捉捥挕揄捄换掎掳揻掔挤掹","揻揗揼捃掔掎捀揎揇揷接据挓揱捰捜") + this.stepCurrent);
         }
         if(this.stepCurrent < this._f5e50913f16b177033189343 || this.stepCurrent >= this._7d81487e05c5b936fdec1551)
         {
            _d00d9453caf68cdb6c5262dc(_a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_BAMBOO,_91aad973ddd3030366bf3e1f.BROWN);
         }
         else
         {
            _d00d9453caf68cdb6c5262dc(_a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_EMPTY);
         }
         if(this.stepCurrent < this._f5e50913f16b177033189343)
         {
            _fdb0406343aa72f7e555d70b(_a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_DOUGH);
         }
         else
         {
            _fdb0406343aa72f7e555d70b(_a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_EMPTY);
         }
         if(this.stepCurrent >= this._7d81487e05c5b936fdec1551)
         {
            _e1f82a64d03bcf00a77d2c76();
         }
         if(_loc1_)
         {
            _6bf6e74dbd194542dc723dc7();
         }
      }
      
      override protected function _b723bc06d3f1e5904f08fae8() : void
      {
         super._b723bc06d3f1e5904f08fae8();
         GameSwf.settings.music = true;
      }
      
      private function _ead304d5186de46730ebc921() : void
      {
         _dbb8408a6fc0feead9d91cb2();
         app.user.canMove = false;
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc2_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc2_.textBig = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勁剖勸勺劫剁勥勵刌刿努刅刳勾勋剟劤劝刵勈刮初刓刔刐勅别劭刦劋劚制勐创刭劽刄勏勢劽勣剽勊劇勏勚刏划劖勾別剘刨剬力劫剓剑刡剮","創勹剨利剩勢劯励券刜剝劧剻勭勞勆"));
         _loc2_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚刣刞别劂勴務刬労剌勜刐剱劔券勥剖剥刿勑刹剜剟労勖削劼别劗剩劳割刱刲勤功剶剀剜勮劘劉劶初剤劲効勂剿刑","勳勢剄切制劆劾刔剑別別勫勐勁刽勉"));
         _loc2_._406b04d0c8d59430e3058ade(0x50CBCCF1 ^ 0x560E1A55 ^ 0x15BF084E ^ 0x137ADED8);
         _loc1_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._5b998b181997578708537b6a(),0x73EF811E ^ -1898020885 ^ 0x39BB5BC0 ^ -997546636);
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_63a1662bfab25759f09f5245._5b998b181997578708537b6a(new Point(0x72DEE17A ^ 0x0FCA979D ^ -1658602206 ^ 0x1FC83470,-1264904755 ^ -736207059 ^ -2103707584 ^ 0x1DE14D15)),-501641833 ^ 0x6B4CFD8B ^ 0x56F75A62 ^ 0x205DD5AD);
         var _loc3_:_810c4ade948afb64e9c7ee25 = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
         var _loc4_:_0d47696161f1136a4c3be130 = _loc3_.fieldChar as _0d47696161f1136a4c3be130;
         var _loc5_:Point = _loc4_._5b998b181997578708537b6a();
         _loc4_._14fd2868d3710a33e01faa02(_loc5_.x - _loc3_.fieldChar.position.x,_loc5_.y - _loc3_.fieldChar.position.y);
         _loc4_.disableHideRod = true;
         _7d5f055ef82d414752f9a0e7();
      }
      
      private function _7de5249a4f493f69b820f907() : void
      {
         var _loc1_:_810c4ade948afb64e9c7ee25 = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
         var _loc2_:_0d47696161f1136a4c3be130 = _loc1_.fieldChar as _0d47696161f1136a4c3be130;
         _loc2_.disableHideRod = false;
         var _loc3_:_72cc6d3a86c48c32c334daf6 = app.dialogFactory._662681586a845c586dbdc00c();
         _loc3_.show();
      }
      
      private function _6166a0f97d7b98937351a9ea() : void
      {
         var _loc1_:_810c4ade948afb64e9c7ee25 = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
         (_loc1_.fieldChar as _c9513c48978d5034cc9ff2f4)._f5ffe8da6f85956f2b9f21fe();
      }
      
      private function _79572b64a69bc12f4e564d4a() : void
      {
         _e1f82a64d03bcf00a77d2c76();
         var _loc1_:_bc882fd414165030feaf8199 = GameSwf.currentLocationDialog.caughtDialog as _bc882fd414165030feaf8199;
         if(_loc1_ != null)
         {
            _loc1_._84829e33652a4071373c49a2();
         }
      }
      
      private function _64a4ab9cbc05533f35611765() : void
      {
         _d00d9453caf68cdb6c5262dc(_a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_EMPTY);
         _fdb0406343aa72f7e555d70b(_a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_EMPTY);
         var _loc1_:_8a5b0c698d40931e860c0aeb = this.gui;
         var _loc2_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc3_:_59ac9c4db8d8d1a76a4e80e6 = _loc1_.informerRod;
         _loc3_.unlock();
         _loc2_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc3_),-1515038990 ^ 0x1E05202F ^ -1052948694 ^ -2055877084);
         _loc2_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc3_),Math.sqrt(_loc3_.width * _loc3_.width + _loc3_.height * _loc3_.height) / (0x1F3B792B ^ 0x188667C9 ^ 0x69E39520 ^ 0x6E5E8BC0));
         var _loc4_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc4_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掆捦捯掃捕授捆挓捒捠挖捚掵挣掉捲掴掣捤挟揤掆揇挷掃揓揬挂掾挲捴揱捀揘挧揞捀揢掂揙捝掄揨捪揦揽捕捷挛掄排捹捫捍","揽授掐捂掌捘捩捨捨揥捉掿挙接授掕")));
         _loc4_._406b04d0c8d59430e3058ade(-864750625 ^ 0x3E8D7AD1 ^ 0x7E2B014E ^ -1932359566);
      }
      
      private function _2f0303d8536bf12b4e861d33() : void
      {
         _dbb8408a6fc0feead9d91cb2();
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = _gameSwf._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         _loc1_._88d4130cae0046e040f561fd(_67282af25befe9778e5c8dd1.ROD,_a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_BAMBOO);
      }
      
      private function _ca200545a8c8b27968338f12() : void
      {
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = _gameSwf._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         _loc1_._f07eab3c34375ad19df22f56();
      }
      
      private function _24f23929a6ebf0ee1a470a61() : void
      {
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc2_:_8a5b0c698d40931e860c0aeb = this.gui;
         _loc2_.mainMenu.shopIcon.enable();
         var _loc3_:Sprite = _loc2_.mainMenu.shopIcon;
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc3_,new Point(_loc3_.width / (-1752759866 ^ 0x40358456 ^ -1506905271 ^ 0x719CF6DB),-_loc3_.height)),0x1E813F12 ^ -1118486446 ^ 0x33067E21 ^ -1865285279);
         _loc1_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc3_),-1634656331 ^ -476373625 ^ -516480328 ^ -1673715528);
         var _loc4_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc4_.textBig = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刳劶劰劺勬剹剔勢剀勗刷勲剼剕劻剉劕剴劑則刿勉劮势勷劚削労勽劍剰刉刱劦劧勀剭勦劻剾劅剻勧劈刓剻刈功劼刣勎劁","分劢动刉勸剺剤勂剂创削制劥勔劧勞"));
         _loc4_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ც၅႓ၫიႠံုႰၕჀှწპლოႁჇჾნძငცჷနႼၢယ႘ၳုၱၵၷ၏ႜနၴႻံჶ႖ကီဳဃဎჅ","ჱႋ႙ჱკႎဴწნჿ႖ၫდႴ။Ⴠ"));
         _loc4_._406b04d0c8d59430e3058ade(0x71BE766B ^ -2132355435 ^ -2098002237 ^ 0x73ABA60F);
      }
      
      private function _6cb0767250b3bf2d619b5deb() : void
      {
         var _loc1_:_62e6ad6eb7ca56c1fbbc638a = _gameSwf._4aeac9e48c0facbd15fae3ba(_62e6ad6eb7ca56c1fbbc638a) as _62e6ad6eb7ca56c1fbbc638a;
         _loc1_._a47c8f6091b201cbbe1ee668(_eaf1c366e9817b3f7cf20d19.TAB_ID_BAIT);
      }
      
      private function _a4b873682749615307e36360() : void
      {
         var _loc1_:_62e6ad6eb7ca56c1fbbc638a = _gameSwf._4aeac9e48c0facbd15fae3ba(_62e6ad6eb7ca56c1fbbc638a) as _62e6ad6eb7ca56c1fbbc638a;
         _loc1_._bb9cdcf48845d4be1e610727(_67282af25befe9778e5c8dd1.BAIT,_a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_WORMS);
      }
      
      private function _c86273eae503ba51068a61a9() : void
      {
         var _loc1_:_8a5b0c698d40931e860c0aeb = this.gui;
         var _loc2_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc3_:_af8c0db691f16dd195b14f3f = _loc1_.baitInformer;
         _loc3_.unlock();
         _loc2_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc3_),0x6D19DFBA ^ -1089930279 ^ -1360078092 ^ -2097151676);
         _loc2_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc3_),Math.sqrt(_loc3_.width * _loc3_.width + _loc3_.height * _loc3_.height) / (0x1D641A9C ^ 0x1CA133CB ^ 0x75970AF9 ^ 0x745223AC));
         var _loc4_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc4_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("指掤捰揙掳揱掁捓掑挧揽掱换揰掬掅挔捱揼揅振掷揘捄揾挡捕挝捨捑捬插掸揾掿掇捥挏挥掓挕揉捏揖捣揺揗挌換掙掁掄捥挢捀捳揱挆","揉挓挡揍揥掽揊掋揀揫揾捞握挥挅揹")));
         _loc4_._406b04d0c8d59430e3058ade(0x77434223 ^ -1641582423 ^ -2013413666 ^ 0x6E998C66);
      }
      
      private function _2d2551464f8a64cfbc2a219f() : void
      {
         _dbb8408a6fc0feead9d91cb2();
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = _gameSwf._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         _loc1_._88d4130cae0046e040f561fd(_67282af25befe9778e5c8dd1.BAIT,_a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_WORMS);
      }
      
      private function _8077fa964546eebfe0f8b142() : void
      {
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = _gameSwf._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         _loc1_._f07eab3c34375ad19df22f56();
      }
      
      private function _e26ab4a8beb194fe94681435() : void
      {
         app.user.canMove = true;
         _4ce0dd12e4d6e2cb004181bd();
      }
      
      override protected function _5ef0e233a5bb752efe3b3ded() : void
      {
         super._5ef0e233a5bb752efe3b3ded();
         _stepsHandlersMap[-1763820791 ^ -407178749 ^ -541024289 ^ -1364961580] = this._ead304d5186de46730ebc921;
         _stepsHandlersMap[-32555667 ^ -66982776 ^ 0x4C9EA91D ^ 0x4E9078FA] = this._7de5249a4f493f69b820f907;
         _stepsHandlersMap[0x235F958A ^ 0x0F6EBD7B ^ -539170708 ^ -202522466] = this._6166a0f97d7b98937351a9ea;
         _stepsHandlersMap[0x52763BA2 ^ -191988299 ^ 0x5EF07E9D ^ -133678962] = this._79572b64a69bc12f4e564d4a;
         _stepsHandlersMap[-1949883197 ^ -412179176 ^ 0x5067C5DA ^ 0x3CCE4404] = this._64a4ab9cbc05533f35611765;
         _stepsHandlersMap[0x0B02BD2B ^ 0x3DEE7D69 ^ -1843293945 ^ -1530048189] = this._2f0303d8536bf12b4e861d33;
         _stepsHandlersMap[-927327835 ^ 0x140837D6 ^ -1478593656 ^ 0x7B6C5DFC] = this._ca200545a8c8b27968338f12;
         _stepsHandlersMap[-202764379 ^ -1272339069 ^ 0x492CA86F ^ 0x0EEF0241] = this._24f23929a6ebf0ee1a470a61;
         _stepsHandlersMap[-586113701 ^ 0x07262589 ^ 0x2B290197 ^ -249579188] = this._6cb0767250b3bf2d619b5deb;
         _stepsHandlersMap[0x3F07CBC9 ^ -523010161 ^ 0x036AE0E8 ^ -591506268] = this._a4b873682749615307e36360;
         _stepsHandlersMap[0x6AA314D7 ^ 0x2589A9DC ^ -1134835960 ^ -210667000] = this._c86273eae503ba51068a61a9;
         _stepsHandlersMap[-341260274 ^ -1627375213 ^ 0x4A3E8BC6 ^ 0x3E967A57] = this._2d2551464f8a64cfbc2a219f;
         _stepsHandlersMap[0x1782889F ^ -403614192 ^ -1163853466 ^ 0x4AD2DFE4] = this._8077fa964546eebfe0f8b142;
         _stepsHandlersMap[0x50590565 ^ -756311833 ^ 0x5CA40877 ^ -568945157] = this._e26ab4a8beb194fe94681435;
      }
      
      override protected function _5c347edb17bc0b5110bf441b() : void
      {
         super._5c347edb17bc0b5110bf441b();
         this._f5e50913f16b177033189343 = -248447238 ^ 0x72DB478C ^ -1062669273 ^ 0x43434D57;
         this._7d81487e05c5b936fdec1551 = -1256943636 ^ -1920271811 ^ 0x593A3BFB ^ 0x61A44E23;
         this._6999c680be86d1091de4a4e1 = -912453863 ^ -441435703 ^ -174850689 ^ -641807453;
         _stepsForResume.push(this._f5e50913f16b177033189343);
         _stepsForResume.push(this._7d81487e05c5b936fdec1551);
         _stepsForResume.push(this._6999c680be86d1091de4a4e1);
      }
      
      override public function start() : void
      {
         super.start();
         GameSwf.settings.music = false;
         _b6941f31289625a2993aad01(_24fc30cfc3c855ea21a231e8.LOCATION_1_LAKETOWN.id);
      }
   }
}

