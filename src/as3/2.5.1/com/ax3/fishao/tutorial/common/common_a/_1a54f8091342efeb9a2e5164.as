package com.ax3.fishao.tutorial.common.common_a
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.Config;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._a1e0e2bf54cc08cc6a7d5b7c;
   import com.ax3.fishao.display._8a5b0c698d40931e860c0aeb;
   import com.ax3.fishao.display.dialogs._eaf1c366e9817b3f7cf20d19;
   import com.ax3.fishao.display.panels._59ac9c4db8d8d1a76a4e80e6;
   import com.ax3.fishao.display.panels._af8c0db691f16dd195b14f3f;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations.base._24fc30cfc3c855ea21a231e8;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.entries._0d47696161f1136a4c3be130;
   import com.ax3.fishao.locations.entries._c9513c48978d5034cc9ff2f4;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.locations.npc.base._e42949745420bb5a55035b31;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.model.pling._f1c07aba4df28c8631391058;
   import com.ax3.fishao.resources._f5e4d158108107f1e8a3a320;
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial.common.base._c1dd3094cb2ba333147208b3;
   import com.ax3.fishao.tutorial.helpers._450aa236949c3aac4e3c79f5;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.tutorial.helpers._63a1662bfab25759f09f5245;
   import com.ax3.fishao.tutorial.helpers._e444b603a0e799e84b427ae5;
   import com.ax3.fishao.tutorial.views.dialogs.bite._72cc6d3a86c48c32c334daf6;
   import com.ax3.fishao.tutorial.views.dialogs.caught._bc882fd414165030feaf8199;
   import com.ax3.fishao.tutorial.views.dialogs.inventory._0239b4a1f957bf9e5ccfd482;
   import com.ax3.fishao.tutorial.views.dialogs.shop._62e6ad6eb7ca56c1fbbc638a;
   import com.ax3.fishao.tutorial.views.dialogs.story._4f9a84a93e73ca9d0756d9d9;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.brokenfunction.json.encodeJson;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.getTimer;
   import protocol.api.plings.receive.ResponsePlingReceive;
   
   public class _1a54f8091342efeb9a2e5164 extends _c1dd3094cb2ba333147208b3
   {
      
      private var _d01d285859b8680b418f218b:Point;
      
      private var _b481e44c07599805214595b4:Boolean;
      
      protected var _stepLeavePrivateHouse:int;
      
      protected var _stepRodSelected:int;
      
      protected var _stepWormsPurchased:int;
      
      protected var _stepBaitSelected:int;
      
      protected var _stepFishingLast:int;
      
      protected var _stepShowProfile:int;
      
      protected var _stepUserStats:int;
      
      protected var _stepChatWithUsers:int;
      
      protected var _stepFindSam:int;
      
      public function _1a54f8091342efeb9a2e5164()
      {
         super();
         this._d01d285859b8680b418f218b = new Point(0x6CCC0253 ^ 0x4C39B12C ^ -918304632 ^ -373916968,-1533404438 ^ 0x6C06A3DF ^ -1041011746 ^ 0x096FD7B4);
      }
      
      private static function get _a14d0dcd1b82b99341282855() : Point
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Point = null;
         var _loc5_:Array = [0x614B7D58 ^ -363168859 ^ -1006505245 ^ 0x4F10FD48,0x58B4D2FF ^ 0x75878278 ^ -583594786 ^ -268151371,-750729599 ^ 0x6252C6CD ^ -282720251 ^ 0x5E340235,0x51476960 ^ 0x3BAE7861 ^ -2114695739 ^ -350398654];
         var _loc6_:Array = [0x45472FFA ^ 0x760C8E6D ^ 0x6E10D1FE ^ 0x5D5B7548,0x1D11D2CB ^ 0x3B2118C3 ^ 0x5D704E2B ^ 0x7B408168,0x017B0436 ^ 0x2BF8DAA3 ^ 0x3BC39404 ^ 0x11404FE6,-231824016 ^ 0x56189053 ^ 0x092EDB94 ^ -1390876543];
         var _loc7_:int = Math.round(Math.random() * (-731149116 ^ 0x79C106B6 ^ -1579149833 ^ 0x0C4A9F86));
         var _loc8_:int = Math.round(Math.random() * (-579092048 ^ -1754014839 ^ -781977725 ^ -1687425607));
         if(_loc7_ == _loc8_)
         {
            _loc4_ = new Point(_loc5_[_loc7_],_loc6_[_loc7_]);
         }
         else
         {
            _loc1_ = (_loc6_[_loc8_] - _loc6_[_loc7_]) / (_loc5_[_loc8_] - _loc5_[_loc7_]);
            _loc2_ = (-_loc5_[_loc7_] * _loc6_[_loc8_] + _loc6_[_loc7_] * _loc5_[_loc8_]) / (_loc5_[_loc8_] - _loc5_[_loc7_]);
            _loc3_ = Math.random() * (_loc5_[_loc8_] - _loc5_[_loc7_]) + _loc5_[_loc7_];
            _loc4_ = new Point(_loc3_,_loc1_ * _loc3_ + _loc2_);
         }
         return _loc4_;
      }
      
      override public function get needHideGui() : Boolean
      {
         return this.stepCurrent == (0x11D56C98 ^ 0x4ABB7CD3 ^ -341092136 ^ -1329248110);
      }
      
      override public function get canChatWithPlayers() : Boolean
      {
         return this._b481e44c07599805214595b4;
      }
      
      override public function _544c59d9de718a31490847d4() : void
      {
         _0e1bc13a989d12a3776df86c();
      }
      
      override public function _a48e6016b46dab72868aebd1() : void
      {
         super._a48e6016b46dab72868aebd1();
         var _loc1_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         var _loc2_:int = this.stepCurrent;
         switch((0x5FCB2973 ^ 0x0A9458A4 ^ 0x1008059F ^ 0x4557744B) === _loc2_ ? 0x75F76825 ^ -1729463110 ^ -439085780 ^ 0x08C901B3 : -1145752552 ^ -445809715 ^ 0x52257DA7 ^ 0x0CFD3273)
         {
            case 0:
               if(_loc1_.locationModel.locationConfig == _24fc30cfc3c855ea21a231e8.PRIVATE_HOUSE)
               {
                  _0e1bc13a989d12a3776df86c();
               }
         }
      }
      
      override public function _2664fc44433abf9626ce63fa() : void
      {
         var _loc1_:_4f9a84a93e73ca9d0756d9d9 = null;
         super._2664fc44433abf9626ce63fa();
         var _loc2_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         var _loc3_:Boolean = true;
         switch(this.stepCurrent)
         {
            case 0x1744632A ^ -426762085 ^ 0x67D014F1 ^ -1778100415:
               §§push(0x42C83BD0 ^ -1411546386 ^ -2003872118 ^ 0x619AEFB4);
               break;
            case this._stepLeavePrivateHouse:
               §§push(0x7C7BDA0E ^ 0x76496C75 ^ 0x56A31C92 ^ 0x5C91AAE8);
               break;
            case this._stepRodSelected:
               §§push(0x2AA02CE8 ^ 0x7B26FE99 ^ -939938447 ^ -1770029310);
               break;
            case this._stepWormsPurchased:
               §§push(-93926654 ^ -428663036 ^ 0x60CC9A32 ^ 0x7CD94E37);
               break;
            case this._stepBaitSelected:
               §§push(0x44F1AA06 ^ 0x4D70E2B6 ^ 0x0F92BD11 ^ 0x0613F5A5);
               break;
            case this._stepFishingLast:
               §§push(0x4E9C83C6 ^ -1727753577 ^ -168823705 ^ 0x2277E533);
               break;
            case this._stepShowProfile:
               §§push(0x54C5D054 ^ 0x7B63E38C ^ 0x3EAA4E61 ^ 0x110C7DBF);
               break;
            case this._stepUserStats:
               §§push(-666264715 ^ 0x7B0A7577 ^ -1937977862 ^ 0x2F3F23FF);
               break;
            case this._stepChatWithUsers:
               §§push(-1413718199 ^ -475897160 ^ -1140183963 ^ -200011364);
               break;
            case this._stepFindSam:
               §§push(0x36DC13C8 ^ 0x3C748050 ^ -1734541196 ^ -1841982491);
               break;
            default:
               §§push(-162531901 ^ -1910891897 ^ -162058981 ^ -1912421803);
         }
         switch(§§pop())
         {
            case 0:
               _loc3_ = false;
               gui.visible = false;
               _91ecc890ba82e7acb012d6f4(new Point(-249235766 ^ -396660298 ^ -1727118019 ^ -2140028051,_67f8febc099eaa05c48aa41e.PRIVATE_HOUSE_GARDEN_HEIGHT + (-388596760 ^ -243348696 ^ -459505666 ^ -46871022)));
               _loc1_ = app.dialogFactory._90e141b687d83ed0b63eeaba();
               _loc1_.show();
               break;
            case 1:
               if(_loc2_.locationModel.locationConfig == _24fc30cfc3c855ea21a231e8.LOCATION_2_RIO)
               {
                  _loc3_ = false;
                  _91ecc890ba82e7acb012d6f4(new Point(-1518514117 ^ 0x755FE6DD ^ 0x76C79E62 ^ -1494932488,-1230322318 ^ 0x194C2C18 ^ -1105289793 ^ 0x11F875F9));
                  this._576e11a809d566e3574a01d6();
               }
               break;
            case 2:
               _6723a672cb0e6782ec4e6665(_a14d0dcd1b82b99341282855);
               _dbb8408a6fc0feead9d91cb2();
               break;
            case 3:
               _140ab335dcc3352af7a23f34();
               _6723a672cb0e6782ec4e6665(_a14d0dcd1b82b99341282855);
               _dbb8408a6fc0feead9d91cb2();
               break;
            case 4:
               _140ab335dcc3352af7a23f34();
               _6723a672cb0e6782ec4e6665(_a14d0dcd1b82b99341282855);
               _7d5f055ef82d414752f9a0e7();
               _dbb8408a6fc0feead9d91cb2();
               break;
            case 5:
            case 6:
            case 7:
            case 8:
               app.user.canMove = false;
               _dbb8408a6fc0feead9d91cb2();
               break;
            case 9:
               app.user.canMove = true;
               _dbb8408a6fc0feead9d91cb2();
               break;
            default:
               Cc.warn(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挅揟掞掷揦指揰持挰揙揚捯揁掭捐捼揽掬捁捓揩揙揿捅揁捰揮挜挷捑捱捊揂挟掼揞捓掃掦掀挨挷掔捙挊措挀挳掫捝挋挕揾掤捝捫揧揻揇捀揞挜揀挫挄揑挡捶掺挀捸挬捇掓挼捡揆挟掽掽捈揋揆揯掵控挡挑掤揜揸提捭揚捬挦掶揹挥挧挊掩挢指捃挵捚挌掙掼掗揸挡掴捾挛揧揅掫掻挻掖捱捺挍掾揋掝","挱挗掹捈揤控掤揰掅揷挚挳掿掆挼掟") + this.stepCurrent);
         }
         if(_loc3_)
         {
            _6bf6e74dbd194542dc723dc7();
         }
         if(this.stepCurrent < this._stepRodSelected)
         {
            _d00d9453caf68cdb6c5262dc(_a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_EMPTY);
         }
         else
         {
            _d00d9453caf68cdb6c5262dc(_a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_BAMBOO,_91aad973ddd3030366bf3e1f.BROWN);
         }
         if(this.stepCurrent < this._stepBaitSelected)
         {
            _fdb0406343aa72f7e555d70b(_a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_EMPTY);
         }
         else
         {
            _fdb0406343aa72f7e555d70b(_a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_WORMS);
         }
      }
      
      private function _ee41beb4bb380a056363ab3c() : void
      {
         var _loc1_:_4f9a84a93e73ca9d0756d9d9 = _gameSwf._4aeac9e48c0facbd15fae3ba(_4f9a84a93e73ca9d0756d9d9) as _4f9a84a93e73ca9d0756d9d9;
         if(_loc1_ != null)
         {
            _loc1_._1374d9ea563f44f5aedd5b29();
         }
      }
      
      private function _8cc34aac22a7b32457780981() : void
      {
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         _loc1_.helperMask._d6a2521748f59df463e4fb94(_loc1_.helperMask._9e4b07f267950c7f7846aa5d(),-1228960050 ^ -1433539408 ^ 0x51DFDD56 ^ 0x4DEDBF41,_450aa236949c3aac4e3c79f5._16ffa2fe2c1f35f56de92b5b(this._d01d285859b8680b418f218b));
         var _loc2_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc2_.textBig = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剚劯刓刓利刟剧剗劸劁労劣刿勡刧刁劒勛务刣刓勀劈剻劣剥労创刽勋剠刊刞刕劗勃勋刁勌劅勼劊剈分劸勂刬劫刼刭劖勠剙剈别劕剡刱","刹勥創勻刪劓刧助刼利剆劤勫剛効剃"));
         _loc2_._406b04d0c8d59430e3058ade(0x5B66785A ^ 0x6494D7E0 ^ 0x32D82445 ^ 0x0D2A8BCD);
         (_loc2_.navigation.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჱဠ႓ၰဒႫძပီွၤစ၉Ⴑ၁ဒ჉სჱၫ","თအဈჴဘၐႶ႕ဝႪბဂၨဝၝၤ")) as TextField).text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挜挲挛握捲挒揩据援掣挙掽捺掙挽挷捫捧捲挸挚据捭捓揩揔揀挭","捧掩挘掎挾插捻捀换揄捉揼捘揦挧挨"));
         _loc2_.navigation.visible = true;
      }
      
      private function _576e11a809d566e3574a01d6() : void
      {
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         _dbb8408a6fc0feead9d91cb2();
         (GameSwf.currentLocationDialog.player as _0d47696161f1136a4c3be130).searchRiver = true;
         _loc1_.helperMask._d6a2521748f59df463e4fb94(_loc1_.helperMask._9e4b07f267950c7f7846aa5d(),0x7B9A0875 ^ -598939040 ^ 0x1568FE28 ^ -1296163756,_450aa236949c3aac4e3c79f5._16ffa2fe2c1f35f56de92b5b(_a14d0dcd1b82b99341282855),null,-890685178 ^ -2129335145 ^ -1236681009 ^ -38507668);
         var _loc2_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc2_.textBig = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挬捷捹掄揕捗揑捷掌捀捷挬捏挷揰捈掓掑揰揌挫挘接掹挌掭揍捦掎捊掌指挥揽捶掔揎揄揵捋揮掄揽捛捨捂揬揗掫揭掂掌掅揾挟捓捅揞","掏握握挫掇揤捲揹捩挃揗揓挜据挴挔"));
         _loc2_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挸揆挗捼揾挚挓掍捖掜捪掰捄掕捔捈捛挐掉揌捍揩掦挀挐捦掘捫捹掐捄挬控掋捧掂採挭揤揈捈捿掤捆揬掛挓挔揶挤掮捆指捞捭掩揧捄","挋捉揺捬揭挎挕挢捧挋挜捘挴挬捵挡"));
         _loc2_._406b04d0c8d59430e3058ade(-2145043797 ^ -1531598132 ^ 0x61507FC1 ^ 0x45C0EF94);
      }
      
      private function _63822a17d46300d8dcbd6e87() : void
      {
         (GameSwf.currentLocationDialog.player as _0d47696161f1136a4c3be130).searchRiver = false;
         app.user.canMove = false;
         var _loc1_:_8a5b0c698d40931e860c0aeb = this.gui;
         var _loc2_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc3_:_59ac9c4db8d8d1a76a4e80e6 = _loc1_.informerRod;
         _loc3_.unlock();
         _loc2_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc3_),0x7C96CEFF ^ -1213720103 ^ -1329697786 ^ -2072034061);
         _loc2_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc3_),Math.sqrt(_loc3_.width * _loc3_.width + _loc3_.height * _loc3_.height) / (0x180E9A90 ^ -841905498 ^ -286805967 ^ 0x3B38A005));
         var _loc4_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc4_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挊捪揻挜掹揭捻挐按揹揆揲挜捉掺振揭挧捽揷掣挍掠揌挤揔揗掆掸掍揩捏捽捓捼掍掮揂挰捦揰挆換捎挧揪捃揜挱掎揉掽挭捼","揹挴掼揟揿揸捩揔揝掯挎掯捙揩掬捀")));
         _loc4_._406b04d0c8d59430e3058ade(0x5DE5635E ^ 0x45C42BC7 ^ -1495385635 ^ -1090555530);
      }
      
      private function _afd7e889d614371691701b23() : void
      {
         _dbb8408a6fc0feead9d91cb2();
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = _gameSwf._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         if(_loc1_ != null)
         {
            _loc1_._88d4130cae0046e040f561fd(_67282af25befe9778e5c8dd1.ROD,_a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_BAMBOO);
         }
         else
         {
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勈劁剜勤勦劀刕刾剚剒勦募勦勠劆勭务剸励勵剂勠判勢劬劀勁别剋刚务劆别剈勖則剭劜勁勑勷勱勨功势勻剭剐刚劎剓割切剼勘刀勃剘勅勱則勳刬勏劂劂別刨剑券剅劇劊劾剞劓勴勑刮剡剣勨劆勾勔勓劘刌","刦剶劋剚勀動加勅剸劏刟劐刀効刉刑"));
         }
      }
      
      private function _bf0c67a06dbef5b29cbe2606() : void
      {
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = _gameSwf._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         _loc1_._f07eab3c34375ad19df22f56();
      }
      
      private function _4c593dd1ade1dc1b75631a30() : void
      {
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc2_:_8a5b0c698d40931e860c0aeb = this.gui;
         _loc2_.mainMenu.shopIcon.enable();
         var _loc3_:Sprite = _loc2_.mainMenu.shopIcon;
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc3_,new Point(_loc3_.width / (0x2D6EEFED ^ 0x5532538C ^ -1487978667 ^ -552369354),-_loc3_.height)),0x68E2EC7D ^ 0x7B21D8E6 ^ -1297683839 ^ -1587159526);
         _loc1_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc3_),0x6DCB7B02 ^ 0x355F5E88 ^ -124843373 ^ -1608831189);
         var _loc4_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc4_.textBig = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚勃劓剳劌剩劌勄刍剉勇创劺办刣剂別劆劍刞劤刮列劑刌则勲勓劬劷刵勅刢刦勬劵刴勅剿劥剁勁劔剂劊剜刚助劝効则剌","刋勚剜劫剛劘勂劒剙剽則勴勹勓劫刺"));
         _loc4_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႒ၱႿၔჷ၃დცၲၴာႦႴၸ჻ၤၜႰვ჎ႆဵး၏ႠჵၷႜဲၖဠჄါჳზ჈჆းჍႭႪႺြဩმჿ၇ၖ","ဇჺဈჄု჊၇ူ၇ၫგၵဴუჩა"));
         _loc4_._406b04d0c8d59430e3058ade(0x7F521A64 ^ -1015432277 ^ -880283173 ^ 0x77AC5026);
      }
      
      private function _5d716ad852fb5e69509bbd37() : void
      {
         var _loc1_:_62e6ad6eb7ca56c1fbbc638a = _gameSwf._4aeac9e48c0facbd15fae3ba(_62e6ad6eb7ca56c1fbbc638a) as _62e6ad6eb7ca56c1fbbc638a;
         _loc1_._a47c8f6091b201cbbe1ee668(_eaf1c366e9817b3f7cf20d19.TAB_ID_BAIT);
      }
      
      private function _1f7702a6507a102bc44cf04e() : void
      {
         var _loc1_:_62e6ad6eb7ca56c1fbbc638a = _gameSwf._4aeac9e48c0facbd15fae3ba(_62e6ad6eb7ca56c1fbbc638a) as _62e6ad6eb7ca56c1fbbc638a;
         _loc1_._bb9cdcf48845d4be1e610727(_67282af25befe9778e5c8dd1.BAIT,_a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_WORMS);
      }
      
      private function _0c65437d92949a42f754f217() : void
      {
         var _loc1_:_8a5b0c698d40931e860c0aeb = this.gui;
         var _loc2_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc3_:_af8c0db691f16dd195b14f3f = _loc1_.baitInformer;
         _loc3_.unlock();
         _loc2_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc3_),-60116817 ^ -880870341 ^ 0x0C4C3979 ^ -995653058);
         _loc2_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc3_),Math.sqrt(_loc3_.width * _loc3_.width + _loc3_.height * _loc3_.height) / (-729162945 ^ -1062992471 ^ 0x6C46C183 ^ 0x786B1F17));
         var _loc4_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc4_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ါჍ႘Ⴡဵჺ့ႾႺႴჄယ႕჎၃ၳဤ჊ငႧၧႍဣဃႥႊႁჩႠၞႠჇჹႵနဥဧჺჹ჉ზပႵအ႟უჷჲႆუჸ၈ဓဦတძၾ႞","Ⴚဏညၜၓၓ႑Ⴢၮႎၻჳလၪ႟ု")));
         _loc4_._406b04d0c8d59430e3058ade(0x1FB23C33 ^ 0x7AFEE58C ^ -1835720604 ^ -136709655);
      }
      
      private function _1a7e681954577fc13de8a2da() : void
      {
         _dbb8408a6fc0feead9d91cb2();
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = _gameSwf._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         _loc1_._88d4130cae0046e040f561fd(_67282af25befe9778e5c8dd1.BAIT,_a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_WORMS);
      }
      
      private function _2125201ca7721d188c388e3d() : void
      {
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = _gameSwf._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         _loc1_._f07eab3c34375ad19df22f56();
      }
      
      private function _8d113cc729597f9a5da2873f() : void
      {
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc2_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc2_.textBig = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႀოႪჹႅჇၪႽႰფ჆ႀႴဝၣၑႣჷႽჶსၖၝၳျდိဖზ့ႃჶၹံဵ႙ႪဃဝာညလჵჄၜმၨႁဌ၂აႦწვტေၝფဖႹ","ვၔႷႵႰိဎၶႏუႱႣ႓პჱႨ"));
         _loc2_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剩刿勰刉劋募勐剐剁創剼勜刔務刓刪勀刪刔剹剋列勝剴劵劙勋勵勰勣劤券刉刂剦剈劘勇刿剩剧勛刭列勱刈勪割刀剅","勪刲劼削動劆劶劧刏剼剺制別刴勓剤"));
         _loc2_._406b04d0c8d59430e3058ade(0x596E9657 ^ 0x47981F86 ^ 0x5F8F2247 ^ 0x4179ABA4);
         _loc1_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._5b998b181997578708537b6a(),-1854403141 ^ 0x708E590C ^ -592596032 ^ 0x3D5BE736);
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_63a1662bfab25759f09f5245._5b998b181997578708537b6a(new Point(-382111631 ^ -991350128 ^ -1565006036 ^ 0x70985A78,0x4C1E89CF ^ 0x67B19029 ^ -1244485277 ^ 0x61824F30)),0x0C05A466 ^ 0x1291C814 ^ -1035099320 ^ 0x232630E9);
         var _loc3_:_810c4ade948afb64e9c7ee25 = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
         (_loc3_.fieldChar as _0d47696161f1136a4c3be130).disableHideRod = true;
         _7d5f055ef82d414752f9a0e7();
      }
      
      private function _77b74e53cddd504cca6a8f51() : void
      {
         var _loc1_:_810c4ade948afb64e9c7ee25 = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
         (_loc1_.fieldChar as _0d47696161f1136a4c3be130).disableHideRod = false;
         var _loc2_:_72cc6d3a86c48c32c334daf6 = app.dialogFactory._662681586a845c586dbdc00c();
         _loc2_.show();
      }
      
      private function _77dfbd42e7695252e3856036() : void
      {
         var _loc1_:_810c4ade948afb64e9c7ee25 = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
         (_loc1_.fieldChar as _c9513c48978d5034cc9ff2f4)._f5ffe8da6f85956f2b9f21fe();
      }
      
      private function _fbf7d1cc918a4cfff6619514() : void
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = null;
         _e1f82a64d03bcf00a77d2c76();
         var _loc2_:_bc882fd414165030feaf8199 = GameSwf.currentLocationDialog.caughtDialog as _bc882fd414165030feaf8199;
         if(_loc2_ != null)
         {
            _loc2_._52dc9c359546efa57faf694e();
            _loc1_ = _520ba4dbc5360c791fc5a2f0();
            _loc1_.textBig = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刮励剳剆刓剳劼勇刅勈剕刧加勃剌勉勅勆勻劣劐勑勨刀劚勇勌刲勤劻刁勀剙剱剞务剘劈刈刭刏剭勬募劑劗勪務勳勑","労勪刄動劔励势刳刹勮勜勨剑剏劕劯")).replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႕႗ႛဍဤဝဟၛႠၰ၄းႺჟჰူၑ၍ဎးႜ၆ო႙Ⴉჿဩရၵါ","჉ၱხ႕ქါႦჯჃၮၪკဋჸჹၘ"),_loc2_.fishName);
            _loc1_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勳劸刅勚劻勅剾劑则剞勑勶勑刁劽劶勐劢刟刔勷劭剢劰剻刪劖剏刕刼剄勪剶劵劖勿力剣刦列勦则劑勮勲勳刐切劰勵勽勸勨剜","勶勡勓勽勎劈功剙刣剔力剁劺剻判劲"));
            _loc1_._406b04d0c8d59430e3058ade(0x3D04C366 ^ -1998890114 ^ -844628111 ^ 0x7878675B);
         }
      }
      
      private function _0901f7b493ba71f1bb85eebf() : void
      {
         saveStep(-2069512438 ^ -1689878223 ^ 0x5F6834CF ^ 0x408B0AE7);
      }
      
      private function _96b682589f248278c5e77e0f() : void
      {
         var _loc1_:Object = {
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捧挳探揍揜揬掫捞揋掎捍捻挺挮捞揁捄捉掅掍挏捈","揇揋捨掯掓捖探揅掜挲挹揝捞揟捨挞")):_67282af25befe9778e5c8dd1.OTHER.id,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挫揶持揦捷捶挏揰揌振掄揭捱握捫挱揩捭","掽掸挃掟掽揚揞捷挲揑挎挒挹持揥捡")):_a1e0e2bf54cc08cc6a7d5b7c.ER_FISHING_LICENCE,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捣捅捲挞掦捸換描挺揎挩挰揘挟揞捘捩掘揠揣掚揝挶挙","捕捾揙掓揇挴捘挧捤掬挭揁揔挮捭捸")):0x02330A93 ^ 0x611C9CC9 ^ -700097459 ^ -1251292650
         };
         var _loc2_:ResponsePlingReceive = new ResponsePlingReceive();
         _loc2_.timestampSec = getTimer();
         _loc2_.type = _f1c07aba4df28c8631391058.RESOURCE_RECEIVED;
         _loc2_.params = encodeJson(_loc1_);
         app.plings._3166fc3d8dfa85d04fbf42a0(_loc2_);
         var _loc3_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc4_:_8a5b0c698d40931e860c0aeb = this.gui;
         _loc4_.mainMenu.inventoryIcon.enable();
         var _loc5_:Sprite = _loc4_.mainMenu.inventoryIcon;
         _loc3_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc5_,new Point(_loc5_.width / (0x2EE2A7A0 ^ 0x744EB1A6 ^ -932185604 ^ -1832652808),-_loc5_.height)),-2076830435 ^ -665441724 ^ -1563594421 ^ -22196718);
         _loc3_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc5_),-1796576051 ^ -183588332 ^ -2040746015 ^ -407344886);
         var _loc6_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc6_.textBig = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႮႡოၧ်შჯၟჲჼဨးၙႲၫლူဓၜ႖၇ყჍၪაႂဒႲႀၔ჊ဦჶ၀ႝဲဠၶႭჵဿხႥခၿჀဩ႔ႽႲჅჼၦჾာွႉၻცႹဇჀშႰ჈ჲဪ႞႒ၭၞၟဆွၣႀၦღႮဋ","၉Ⴞქႝჶဪၳၔ႙ဌႮ၃မဴ်ၒ"));
         _loc6_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剾努勽劣劑刃勹勁剻勈劂刳刄剨勶刮勎劉剉刢勓刚劶创剴勗勈勺刬劄勶势刃勈勳剻劋勔勱剅刺剘劰劌刈劏劤劢劏劭制劭劐剃劫剿勽剻办劈勚刐勂刉","劝劼刖努勿効勗刾劫刚剫刌劭勶到勑"));
         _loc6_._406b04d0c8d59430e3058ade(-1346943973 ^ -638236266 ^ -2054590437 ^ -204767836);
      }
      
      private function _5b04d2efee10dc234d8588cd() : void
      {
         _dbb8408a6fc0feead9d91cb2();
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = _gameSwf._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         if(_loc1_ != null)
         {
            _loc1_._a47c8f6091b201cbbe1ee668(_f5e4d158108107f1e8a3a320.OTHER_NAME);
         }
      }
      
      private function _1b3805d29ab34a14eb6c9ee4() : void
      {
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = _gameSwf._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         if(_loc1_ != null)
         {
            _loc1_._84829e33652a4071373c49a2();
         }
      }
      
      protected function _a9109a0eedff739434cf5be6() : void
      {
         var _loc1_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         var _loc2_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         _loc2_.helperMask._d6a2521748f59df463e4fb94(_loc2_.helperMask._9e4b07f267950c7f7846aa5d(),0x36EBB98E ^ 0x6FBC15B2 ^ -1368360532 ^ -148384263);
         _loc2_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc1_.player.graphic,new Point(-207390850 ^ 0x78ABA581 ^ 0x4F5866BB ^ -1001343932,-1539229413 ^ -547891354 ^ -1499014146 ^ 0x224FCA0B)),0x6E8F6C39 ^ -1220076567 ^ -910754819 ^ 0x107E8C2D);
         var _loc3_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc3_.textBig = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揦挤挀捝揓揞揋捎挽採掭挽揃掫捷挏挱挙捝揷揸揯挭挩挦掎捴捼揵捜掊捅掶掌持挠挻握捄捘揷捌捎挒挼捈挢掊捕掹按掠掋揹揠捨捦掳","捽捶揠揽挝捷掮捴捪挞掃指控捩挸掣"));
         _loc3_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჵ၏ၳဆၱႹ႟ჳေံၧၗჯၹႴჭ჆ႻშჀၾჂႠဉ჋Ⴑ႕ထ၄ვႁနၷი၁჊჊ၮႲჍၗဓპႂ၅ჭ၌ၞႵ჏Ⴆထრၷ၀Ⴭ႟ႾႾ჆","ႆႩဒგ၅ၷႶ჎ဪჁ၌ჲიၥ၇႙"));
         _loc3_._406b04d0c8d59430e3058ade(-753151677 ^ -2137064903 ^ 0x1726CA8A ^ 0x44A3E1C2);
         _f6b2ddd70f70e8087133ec21(app.user.username);
      }
      
      private function _ba18e07141630b60d6ea8ab5() : void
      {
         _8114af7db6760192c12f249c();
      }
      
      private function _95b7dcb3e39a23fe262a8781() : void
      {
      }
      
      protected function _57a7a6269d506cc01efc11f9() : void
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc1_._3ad38a7de668e4a8eeb93c3e();
         _loc1_.textBig = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ကႫဨძ჻ၗჸძဠ၂სဤမှლႏု၎ღ჎ၘၰႨ႑႟ნღၑာဌၡဢწႰ၆ၭ჌ၫ၏ဇქႊၵჇၗဋ၇Ⴛ჻჋ႝဠဤႝ","჻ဈိႛ၅္ჱႠქႈၥၤဍბႴ჋"));
         _loc1_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剪勉剜勆刋勏劫刈剝剶剛劙刑刻剻剟劼劢剙励剣勪刑剃勰势勌努刧勓剗功勭刋剃劯劜勾办勚則勽勈剸刦勿剗勺剷刍劋利勓劦务勷劸剨剓剾別刓剴劚勥剴劼剥刾列剘剬劊剆剙劮","刡勣剒刯刁劖分勑剩剴利到劥剂劖勺"));
         _loc1_._bd3ca576113ec97b28fb94a7(0x77F4E953 ^ 0x338883A9 ^ -220160769 ^ -1231227387);
         this._5c4d3ff7b3393ff7a7ab6476(this.gui.fishcoinsIndicator.asset);
         this._ac2342939aa2b2508befac80(this.gui.fishcoinsIndicator.asset);
      }
      
      private function _f095a8213b1c0ec23bc7b59d() : void
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc1_._3ad38a7de668e4a8eeb93c3e();
         _loc1_.textBig = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၽံ၊ဤဉႭო၏ဥჅွးႛၪၶု။ჯၙ၂ၿჺႀၳძႫဒ၉ၒဨ၀ႲီဏბჁၹჯჽ၆ၼဟႧ၊ဨႫၭძႂၘၑဇဓბ","ဳဤဴႹჇႮ჌ჾၾၓဆხႝၺႡჽ"));
         _loc1_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჎ၶ჌ჱჀ၇႖ဎဒတႭမၒျჳႊჺჟჽჳႉჶႁგစჂႵღჯႜჍეႭჃၣာၿჺဴნჳ။၇ဖ჉ဟၙႁჱၗၷဴၨၵဢေშპႷၑ႖ညဃწသჶႴ၁჋გ჏ჽჵရဗၣ","Ⴛ၎ၱეဒၒ၁ႌၗုჺႝჰႤႊႭ"));
         _loc1_._bd3ca576113ec97b28fb94a7(0x261BD80D ^ 0x739D891E ^ -1075970468 ^ -363090097);
         this._5c4d3ff7b3393ff7a7ab6476(this.gui.fishbucksIndicator.asset);
         this._ac2342939aa2b2508befac80(this.gui.fishbucksIndicator.asset);
      }
      
      private function _084e0a8e0b7fd79a90de3e14() : void
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc1_._3ad38a7de668e4a8eeb93c3e();
         _loc1_.textBig = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဒ၅ၟံဲၣქმှႪჅ႐ံ႑ჶ၂၄ოၢႈცဝიჁႵ჌ၥဇჩფၷცဩၿ့ხა႞နၞဟ჻ၜဪႧႫႏဧ","ၸიჩხကჸေႹိဨဤჶჱპ჏Ⴃ"));
         _loc1_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勅刦劌剅刀勱剰剛初刁勫勐刃剗剨勦刿効勧劳効刭勂劄勳勸劜剽刲刓勦剴則劵刊勺刍剀剿判刵勧刽勈刎劓动剡劳勌劜務勔劯剘剋刪勒刯剰刚劀劑劷劧剄剉刂刉剠","勞劕刷劺剧劭刐劲删勩劾勿刋刵劯刐"));
         _loc1_._bd3ca576113ec97b28fb94a7(0x1B28F67C ^ -261533084 ^ 0x443C3DF1 ^ -1350723095);
         this._5c4d3ff7b3393ff7a7ab6476(this.gui.energyIndicator.asset);
         this._ac2342939aa2b2508befac80(this.gui.energyIndicator.asset);
      }
      
      private function _f8be63bdc28d3b205ae49bde() : void
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc1_._3ad38a7de668e4a8eeb93c3e();
         _loc1_.textBig = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挦揄掩掑挗接揜挷掴掐揠掘揌掆挶捲捷捍挔掣挰揲插挾捔掔揃掏捛揥挃捵挔挻挻挸捦挥捵挫挬揀掛揣掏挦","揧揝揤挿挆掳捑捌排捅掆掖揇捐捡捹"));
         _loc1_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捰揫掺掍掊捦揮捋掛挊捞捈掂掝援掓掀挊掕挱掾掯挗掻捡捞掞揅捲掔挙捙掮換授挂揳掐揺揭捀揪排揪挕揮描捊挎掭捈捒掬掮揎挾捽捑按捻掄揨捎掳換捺描揽","掚揰揋挥捉捩掎捝換挮探捴捳挏挈探"));
         _loc1_._bd3ca576113ec97b28fb94a7(0x0F8895AE ^ -1112059620 ^ -1374184138 ^ 0x1C285984);
         this._5c4d3ff7b3393ff7a7ab6476(this.gui.levelIndicator.asset);
         this._ac2342939aa2b2508befac80(this.gui.levelIndicator.asset);
      }
      
      private function _d98f5f4adf90657fb5c9f021() : void
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc1_._3ad38a7de668e4a8eeb93c3e();
         _loc1_.textBig = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဥၻႫၡტႝსჟ჈ლႅ။Ⴆႃ႘႟჉ხဴ႗ჲღჴ႞Ⴆჱაა၅ၷၚဉჟჲ႞უ၍႗႟့ၣၦံႢေგၳჄხယქ჌","ဓွ჆რှ်ნအၒလმၟ჌Ⴡ၊ည"));
         _loc1_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揾挊揲捀揗指接揶插捍揎持揃採挩揲捉掬掇揩挑挃捒揗挎揹掕挸揙揶揧揞捨捇挹措揜掸掭挱掲捚揔掾挚掴挺掆捖掻揎捁换揘挀揅揸按挡捡捶掵掓揊揭揦掛插揕捰挛掸揧挩","捻捷揖揝捿掀挒掹捨掲揉提揄掜挳掰"));
         _loc1_._bd3ca576113ec97b28fb94a7(0x7ED3CC84 ^ -1143868029 ^ -529097713 ^ 0x2574A508);
         this._5c4d3ff7b3393ff7a7ab6476(this.gui.mainMenu.mapIcon);
         this._ac2342939aa2b2508befac80(this.gui.mainMenu.mapIcon,false);
      }
      
      private function _12790b067b2276f5017e8ee0() : void
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc1_._3ad38a7de668e4a8eeb93c3e();
         _loc1_.textBig = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၧ჆ကჿ၄ჾၙၸၢၰლၟჄၢၻၭဿႍჴზႝფთနჅၒေ္შဗႧႧ၃ဋၔ႐ვတყႣუႲႅသၽჁၣသၕၯၐქၺစဋႃၻႽ","႞၃Ⴧႍႋ႑ႬၱဈၽჁဂაႥေမ"));
         _loc1_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႗Ⴅၕ႟ၺႩတဠჹံზლွြგႅဒႊ჻ၔှႇႥპွზဋ။ეჭႀယჂ჋ဃၦჳႣცჇၗჂ၇ნၰႃ႗იტႄဋႚဆჁჃၦၮဉၸრჀჭႿჹဘဟႠခ၃Ⴑႊ၅ဴရ်ოဘ၊ၚၴ","ၡჼာရဇႄၧၹမ၄იီ၅ူႤჍ"));
         _loc1_._bd3ca576113ec97b28fb94a7(0x0B9F9290 ^ 0x4EA9DA2B ^ 0x23435D04 ^ 0x667515BF);
         this._5c4d3ff7b3393ff7a7ab6476(this.gui.mainMenu.tournamentIcon);
         this._ac2342939aa2b2508befac80(this.gui.mainMenu.tournamentIcon,false);
      }
      
      private function _adee4200cd19e6eabca75b85() : void
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc1_._3ad38a7de668e4a8eeb93c3e();
         _loc1_.textBig = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剳勽利剱刔勯前刃劧剺劖剉剱劭勮劤削劾务劏勛劺刲務刂劮劁削勔勣劇剷刉劝刽勱刃剩劈劙勦勺刡勴动刧判剔刔劳勩刼","動制刂刱劦勽剀剚勦到勒劢勲劅刻勖"));
         _loc1_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၯႏგဈჯၻႁၡႸ႟Ⴜჼშၪၧၹ႞ၔლႻဉ჏ၔძာჲၯუაၳဣႎქႚჾჸဵჲဪၱၟဘ၅მ჎ၸ႔အၵမრჴთႎ႑ၩိၬჳႝ၇გၴმၦ၃ဠငႻჺ჌ၗႡშ","჉ႂ჉ၺ႖ဇၭဍၬၾႢ႞Ⴒရ႒ဃ"));
         _loc1_._bd3ca576113ec97b28fb94a7(-1403224396 ^ 0x2918811F ^ -1263390241 ^ 0x31F6CE74);
         this._5c4d3ff7b3393ff7a7ab6476(this.gui.controllerButtonFishingLine.view.source);
         this._ac2342939aa2b2508befac80(this.gui.controllerButtonFishingLine.view.source,false);
      }
      
      protected function _4587e896294c8cf4f078874a() : void
      {
         var _temp_2:* = this.gui;
         var _temp_1:* = -1811843381 ^ 0x7141DB88 ^ -798298262 ^ 0x352A4229;
         _temp_2.centerToRect(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this._b481e44c07599805214595b4 = true;
         this.gui.mainMenu.chatButton.enable();
         var _loc1_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc1_._402cdc54b9a55191346943bb();
         _loc1_.textBig = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("切勋剛劾刵剡勏劊剌剉刵剈勥剂努勠判劂勣加刞剐剰刯刣剧刳勚劈劅剧刄勧剏剄剦刑剨勨剄切刁劗勀","刊勨刏剗剸利勔刹勣刽劳刦剽劕分劣"));
         _loc1_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("到剮剚勯劳剕剢劯剑刊勿劺剨勿刣剒勋刓剑办劉刲勉劽剿劓剬勶划刬劌劸勁劓刪勑劎列劶剛剞勂刾勩刺勞剔剖刁剋劰刂劅刀劕劂勈剕劈剥刔刴勉剿功剧力勱","势分剼劀勜劐务勆勀剼刨励刪剙刏勸"));
         _loc1_._bd3ca576113ec97b28fb94a7(0x1648693A ^ -268478996 ^ -1146293595 ^ 0x421BCE73);
         var _loc2_:DisplayObject = this.gui.mainMenu.chatButton.button;
         var _loc3_:Point = new Point(-_loc2_.width / (-1661137433 ^ -941920749 ^ -1017871941 ^ -1737301427),-_loc2_.height / (0x58A7D4CE ^ -88848046 ^ 0x2712BA37 ^ -2063521879));
         this.tutorialHelpers.helperMask._ff99ac71fd600b826038309c(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc2_,_loc3_),_450aa236949c3aac4e3c79f5._16ffa2fe2c1f35f56de92b5b(new Point(0x7BF18BCD ^ 0x6022D979 ^ -719558332 ^ -825279584,-2050650611 ^ -284752319 ^ 0x7E4DC8D3 ^ 0x148F40A3)));
      }
      
      private function _31b6f74cd0b468131f12e83e() : void
      {
         this._b481e44c07599805214595b4 = false;
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc2_:DisplayObject = this.gui.mainMenu.chatPanel.child;
         _loc1_.helperMask._ff99ac71fd600b826038309c(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc2_,new Point(-_loc2_.width / (0x720CDE6D ^ -802145377 ^ 0x36ECC3B7 ^ -1798298041),0x5F8D41A6 ^ -1495732942 ^ 0x34C2F804 ^ 0x3268AB25)),_450aa236949c3aac4e3c79f5._16ffa2fe2c1f35f56de92b5b(new Point(_loc2_.width,0x748B696B ^ -1156921809 ^ -201999642 ^ 0x3C741595)));
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc2_,new Point(_loc2_.width / (0x240347AF ^ -841659131 ^ 0x5A98EB5F ^ -1286675977),-1311522835 ^ 0x3330BE4B ^ 0x39288DDA ^ 0x443473C6)),-2020082780 ^ 0x17146101 ^ -107735401 ^ 0x69178C32);
         var _loc3_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc3_.textBig = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劐劊刧勗勓劔勡力勺劸勠勒刈労刉刉刟刎劻刏劙劸劧刌前勤勑剏勲励劧劕刟勲劕刓努剗分刌劇劇刋剨","剹勅剫剁刈删剶勆刮剛务勭勶劆剆刲"));
         _loc3_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჸူၕၷ်ဓခჩჿဳ႙ႏၕჇႃငဌႦႈოჱაဢჰူြႈႌ႐၊ႈხဩႢႌဧုႤန჏ၕၩဤ၂ဧၸၝွဉႎႻၯါဟႼႆၸჃနჾ၀၍Ⴌჿၫကာၺ","ဲ႙ჽჭ၉ჿႲယႏာၯဌჟბႊၚ"));
         _loc3_._406b04d0c8d59430e3058ade(0x322D883B ^ -798581563 ^ -205985549 ^ 0x11F3FC0D);
      }
      
      private function _bf0429ecbfbaaece10218cac() : void
      {
         app.user.canMove = true;
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc2_:_810c4ade948afb64e9c7ee25 = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(_e42949745420bb5a55035b31.ENN_SAM);
         _loc1_.helperMask._d6a2521748f59df463e4fb94(_loc1_.helperMask._9e4b07f267950c7f7846aa5d(),0x72502C89 ^ 0x6D4F712A ^ -48716706 ^ -502793836,_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc2_.fieldChar.graphic,null,false),_0e1bc13a989d12a3776df86c,-1701186186 ^ 0x79884B57 ^ -15387114 ^ 0x1C04886D);
         _loc1_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc2_.fieldChar.graphic,new Point(0x2D24328A ^ -112460673 ^ -942940878 ^ -329520091,0x0B1812D3 ^ -871209089 ^ -318857005 ^ -737465659)),0x2A73388C ^ -1212083363 ^ 0x10967132 ^ -1926997366);
         var _loc3_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc3_.textBig = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("换挦揤捣揝捅掾揜挺揽挚挾採捶挽挴揎掭捛挆捷捏捚描挔掁捤掯揚捋捞掻挂揘挸捃捞捒据挾掤挅捦揫捚掠挣指挽挍揘揷挽挭捘措挬揠","揇捏換掅掣捻挞挞揱揖掶挘捏挝揟挳"));
         _loc3_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揗掷揺揾揣推揟掦揝掞掐揄挨掼挲捝掀捐振揃掠捈掀揵掵捍捯挨掏掰挭揄掓掱捄掷挧掹捐掷捕捵损挠掹揇捶挒握揥掜掂揘揧捣捹捌捠掦揓揰挱掏掉捕捲","掟持挻捠捻捳挺掉挼捪挟捎持描捵挤"));
         _loc3_._7cac1e27345942ee6d70642a(0x533F920C ^ 0x51BF24F0 ^ 0x1A26B118 ^ -413534166);
      }
      
      private function _2c13afb2bb4fd0f26587d6f0() : void
      {
         _f6b2ddd70f70e8087133ec21(_e42949745420bb5a55035b31.ENN_SAM);
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc2_:_810c4ade948afb64e9c7ee25 = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(_e42949745420bb5a55035b31.ENN_SAM);
         (_loc2_.fieldChar as _ba120ae720a391732e866217).canMove = false;
         _loc1_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc2_.fieldChar.graphic,new Point(-2055312193 ^ -521448990 ^ -1274579596 ^ 0x2E6DB7CB,0x78E410DF ^ 0x0184222D ^ 0x11CF0552 ^ -1756313574)),0x7FBBBAAB ^ -428464958 ^ 0x15B318D3 ^ -1937865005);
         var _loc3_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc3_.textBig = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挲揀掵捬捞挆掏捵挛掛掏挆挮捖揃挵掓捹挍捾掓掵措捇捍挸捎挷揧挤推掔挒捠控捻掺捂挄挬捬揻持挞掄挫挲排捪揂挂捸挘掜捆掰挿捩挱捺揳授捉持捳捥掋掇","掬掽捍捵换捩捨掵捊掔振捄挮掍揧揵"));
         _loc3_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挽揧捥挶捪捺捵揉捒揯揞挺揌掹揕捲掹掩挧揺捄捩掃挥揝捜挈捞揙掋捒挱掀揧挽挱揺捊掀掇掘捏捷排揤捃挈挕挨掣揪掤掖揟捅掊掣捂捩揲掇掖掽挣捻揪","捹揇挞揪挡掴掕捲揾挮採换捔援挨揱"));
         _loc3_._7cac1e27345942ee6d70642a(0x556846E8 ^ -870712465 ^ 0x5A211961 ^ 0x3CAF5B28);
      }
      
      private function _a46cd473e8f76a9a37230a51() : void
      {
         _8114af7db6760192c12f249c();
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc2_:_810c4ade948afb64e9c7ee25 = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(_e42949745420bb5a55035b31.ENN_SAM);
         var _loc3_:_ba120ae720a391732e866217 = _loc2_.fieldChar as _ba120ae720a391732e866217;
         var _loc4_:DisplayObject = _loc3_.npcDialog;
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc4_,new Point(_loc4_.width - (0x688B6B30 ^ 0x2E8EF17C ^ -687144313 ^ -1861314347),0x159E0DDE ^ 0x0590407B ^ 0x238A86A6 ^ -864340767)),0x5696FDC2 ^ 0x1D905A90 ^ -1250851521 ^ -25746835);
         var _loc5_:_e444b603a0e799e84b427ae5 = _520ba4dbc5360c791fc5a2f0();
         _loc5_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揇掜捸掾掫挸挖揅掣掅捣挬揠捯揕揇揽捁揶捄掍掇挬揓掽掴捨提揊掏掲掣捔挋揲握揬捉揇掆掼持掲控挚挥掓捿揜挒掞掊挿掓揁揝掞捎捙据捒挵挱掿","捖揺掺措捔捦掐捻挚捽掎挝掰揷换挙")));
         _loc5_._7cac1e27345942ee6d70642a(0x52142B27 ^ 0x716A1B4F ^ 0x1A9D138A ^ -971187156);
      }
      
      private function _ef45b7deb553cc317604e6fb() : void
      {
         _4ce0dd12e4d6e2cb004181bd();
         GameSwf.currentLocationDialog.locationModel._ee50009dcc326d5678dc346f(_e42949745420bb5a55035b31.ENN_SAM);
      }
      
      override protected function _5ef0e233a5bb752efe3b3ded() : void
      {
         super._5ef0e233a5bb752efe3b3ded();
         _stepsHandlersMap[-849651042 ^ 0x3A4826D2 ^ -568670871 ^ 0x2909B924] = this._ee41beb4bb380a056363ab3c;
         _stepsHandlersMap[-1134430150 ^ -2053589071 ^ 0x156054DC ^ 0x2C991B55] = this._8cc34aac22a7b32457780981;
         _stepsHandlersMap[0x258C9D36 ^ -1045676567 ^ 0x33899746 ^ -676776038] = null;
         _stepsHandlersMap[-1569455139 ^ -1560142751 ^ 0x3AADA9B7 ^ 0x3BDBB60F] = this._63822a17d46300d8dcbd6e87;
         _stepsHandlersMap[-1980498448 ^ -419417119 ^ -271532368 ^ -2128383836] = this._afd7e889d614371691701b23;
         _stepsHandlersMap[0x4D839D0B ^ 0x1DB1E142 ^ -1018676481 ^ -1820703056] = this._bf0c67a06dbef5b29cbe2606;
         _stepsHandlersMap[-1890877819 ^ -605907937 ^ -1223251270 ^ -474005465] = this._4c593dd1ade1dc1b75631a30;
         _stepsHandlersMap[0x1AC9FA90 ^ 0x778F4E78 ^ -942442490 ^ -1433023258] = this._5d716ad852fb5e69509bbd37;
         _stepsHandlersMap[0x27AFE425 ^ 0x068DC295 ^ 0x7198B18C ^ 0x50BA9735] = this._1f7702a6507a102bc44cf04e;
         _stepsHandlersMap[0x09D94A92 ^ 0x4538854F ^ 0x1551B4BA ^ 0x59B07B6D] = this._0c65437d92949a42f754f217;
         _stepsHandlersMap[0x11DE3C46 ^ 0x0CFE3034 ^ -1788782042 ^ -2008983969] = this._1a7e681954577fc13de8a2da;
         _stepsHandlersMap[0x27C52308 ^ 0x04E6A03C ^ -1870588675 ^ -1281189947] = this._2125201ca7721d188c388e3d;
         _stepsHandlersMap[0x2CE4A633 ^ 0x77FF71CD ^ -2047926275 ^ -554383346] = this._8d113cc729597f9a5da2873f;
         _stepsHandlersMap[-1831812335 ^ -1713125631 ^ -1393864746 ^ -1478997048] = this._77b74e53cddd504cca6a8f51;
         _stepsHandlersMap[0x7E5BF7F0 ^ 0x177756D2 ^ -1910122805 ^ -418809882] = this._77dfbd42e7695252e3856036;
         _stepsHandlersMap[0xE2DBAD ^ 0x3C75F70B ^ -14572080 ^ -1011447450] = this._fbf7d1cc918a4cfff6619514;
         _stepsHandlersMap[0x3A74FE16 ^ 0x66261787 ^ 0x116836B4 ^ 0x4D3ADF34] = this._0901f7b493ba71f1bb85eebf;
         _stepsHandlersMap[0x6BF93822 ^ 0x72231EBA ^ -1832151142 ^ -1961774832] = this._96b682589f248278c5e77e0f;
         _stepsHandlersMap[0x013D4505 ^ -660797695 ^ 0x2AF00736 ^ -212843231] = this._5b04d2efee10dc234d8588cd;
         _stepsHandlersMap[0x3F1041A7 ^ -708041052 ^ -1886783197 ^ 0x65559E34] = this._1b3805d29ab34a14eb6c9ee4;
         _stepsHandlersMap[-2102358100 ^ 0x323F4E9F ^ 0x195A7809 ^ -1445611217] = this._a9109a0eedff739434cf5be6;
         _stepsHandlersMap[-1608911468 ^ 0x0E24C88A ^ -887495336 ^ 0x6524D850] = this._ba18e07141630b60d6ea8ab5;
         _stepsHandlersMap[-2118077405 ^ -1225196669 ^ 0x510B21B2 ^ 0x66336E05] = this._95b7dcb3e39a23fe262a8781;
         _stepsHandlersMap[-1098554098 ^ -1649503927 ^ -1077222620 ^ -1662969989] = this._57a7a6269d506cc01efc11f9;
         _stepsHandlersMap[-729431607 ^ -1124117639 ^ 0x448E3E3A ^ 0x2CF4AC93] = this._f095a8213b1c0ec23bc7b59d;
         _stepsHandlersMap[-1068369407 ^ 0x2E310428 ^ 0x2CD306A9 ^ -1028392806] = this._084e0a8e0b7fd79a90de3e14;
         _stepsHandlersMap[0x74233A7D ^ 0x72D4F0D6 ^ 0x4EB22C84 ^ 0x4845E634] = this._f8be63bdc28d3b205ae49bde;
         _stepsHandlersMap[0x2BF374EA ^ 0x5F1D8DC9 ^ -631031023 ^ -1366441426] = this._d98f5f4adf90657fb5c9f021;
         _stepsHandlersMap[0x49F41B97 ^ 0x2CD62DC1 ^ 0x5EBBBD26 ^ 0x3B998B6D] = this._12790b067b2276f5017e8ee0;
         _stepsHandlersMap[0x2B61CA89 ^ -417393660 ^ 0x73C2B293 ^ -1078170624] = this._adee4200cd19e6eabca75b85;
         _stepsHandlersMap[0x1CD2BB06 ^ -2127512288 ^ -142600061 ^ 0x6A621EBA] = this._4587e896294c8cf4f078874a;
         _stepsHandlersMap[-1839367376 ^ 0x16C8884F ^ -176710734 ^ 0x71E268ED] = this._31b6f74cd0b468131f12e83e;
         _stepsHandlersMap[0x3DB0D505 ^ -1225596372 ^ 0x60E44C1B ^ -341411053] = this._bf0429ecbfbaaece10218cac;
         _stepsHandlersMap[0x59615F96 ^ 0x3FE2F395 ^ 0x0A971115 ^ 0x6C14BD34] = this._2c13afb2bb4fd0f26587d6f0;
         _stepsHandlersMap[0x5C2C39A6 ^ -1640607067 ^ -1375384407 ^ 0x6C1F2789] = this._a46cd473e8f76a9a37230a51;
         _stepsHandlersMap[0x6BB86C2C ^ -1343156582 ^ 0x7979BBC2 ^ -1120872112] = this._ef45b7deb553cc317604e6fb;
      }
      
      override protected function _5c347edb17bc0b5110bf441b() : void
      {
         super._5c347edb17bc0b5110bf441b();
         this._stepLeavePrivateHouse = 0x66661911 ^ 0x603C65CF ^ -1070180141 ^ -965991415;
         this._stepRodSelected = 0x3C7CDC30 ^ 0x034C8FCF ^ -1352649219 ^ -1873779190;
         this._stepWormsPurchased = -2138552050 ^ -468611382 ^ 0x31ACEE56 ^ 0x55352999;
         this._stepBaitSelected = -1997678404 ^ -586380687 ^ 0x3205F87F ^ 0x67E4AABC;
         this._stepFishingLast = -1206641469 ^ 0x5F342823 ^ -1241738512 ^ 0x52DCA603;
         this._stepShowProfile = 0x538058D7 ^ 0x776DC777 ^ -1071680104 ^ -453842386;
         this._stepUserStats = -1520541833 ^ 0x1CD1DC11 ^ 0x1AA7281A ^ -1557615771;
         this._stepChatWithUsers = 0x52C85C2B ^ -341949507 ^ -2141345495 ^ 0x390BB69F;
         this._stepFindSam = 0x3AE86176 ^ 0x3BAC3C55 ^ -1956822296 ^ -1978064919;
         _stepsForResume.push(this._stepLeavePrivateHouse);
         _stepsForResume.push(this._stepRodSelected);
         _stepsForResume.push(this._stepWormsPurchased);
         _stepsForResume.push(this._stepBaitSelected);
         _stepsForResume.push(this._stepFishingLast);
         _stepsForResume.push(this._stepShowProfile);
         _stepsForResume.push(this._stepUserStats);
         _stepsForResume.push(this._stepChatWithUsers);
         _stepsForResume.push(this._stepFindSam);
      }
      
      override public function start() : void
      {
         var _loc1_:int = -1453994779 ^ 0x52A0D1F6 ^ -310350375 ^ 0x49ED6FFA;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x7BEFC290 ^ 0x45C03A10 ^ -59974880 ^ -1646576494))
            {
               case 0:
                  _b6941f31289625a2993aad01(_24fc30cfc3c855ea21a231e8.LOCATION_2_RIO.id);
                  _loc1_ = 0x4A1DD6C9 ^ 0x7FF74A61 ^ 0x0128A699 ^ 0x6B5A2502;
                  break;
               case 1:
                  return;
               case 2:
                  super.start();
                  if(this.stepCurrent < (0x412713DD ^ 0x72392CF0 ^ -1671995316 ^ -1354145950))
                  {
                     _loc1_ = 0x38C6E84A ^ -1426324708 ^ 0x1E504561 ^ -739069690;
                  }
                  else
                  {
                     _loc1_ = 0x053D6A72 ^ -409383251 ^ -949537503 ^ 0x7A5B0ECC;
                  }
                  break;
               case 3:
                  _gameSwf._0bcd23177a136eba1c7dbe4f(app.user.username,true);
                  _loc1_ = 0x4D175533 ^ 0x5878A453 ^ 0x2494B08D ^ 0x6E635EDE;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _ac2342939aa2b2508befac80(param1:DisplayObject, param2:Boolean = true) : void
      {
         var _loc3_:int = param2 ? 0x71257FE8 ^ 0x0C12563D ^ 0x5DE9B84A ^ 0x20DE912B : -1969214445 ^ -1713855838 ^ -986333982 ^ -699583917;
         var _loc4_:Point = param2 ? new Point(param1.width / (0x519996C0 ^ 0x20C96837 ^ 0x27FB78DD ^ 0x56AB8628),-713490622 ^ -1892799748 ^ 0x77393599 ^ 0x2D6FE043) : new Point(param1.width / (-914779603 ^ 0x6CE4217D ^ 0x56D40C2F ^ -213270659),-1072922730 ^ 0x13AB0CB7 ^ 0x65BD5E04 ^ 0x49E5D29F);
         this.tutorialHelpers.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(param1,_loc4_),_loc3_);
      }
      
      private function _5c4d3ff7b3393ff7a7ab6476(param1:DisplayObject) : void
      {
         var _loc2_:int = 0x5514A446 ^ -1208381935 ^ -814675034 ^ -204982564;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-208970109 ^ 0x3F561CE0 ^ -619811109 ^ -913884265))
            {
               case 0:
                  param1[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刺劐勾劰劖刞刵剹刂勗勏劾剰刷剖劉办劼判功判助","勌剥勩効勆刟劝勽剙剩劂剱剚劦剷勆")] = [];
                  _loc2_ = 0x0CFB1035 ^ -707667651 ^ 0x7BEA573F ^ 0x7C948919;
                  break;
               case 1:
                  return;
               case 2:
                  var _temp_2:* = this.gui;
                  var _temp_1:* = 0x2D89015A ^ 0x407C99ED ^ -187468012 ^ -1725501533;
                  _temp_2.centerToRect(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
                  this.tutorialHelpers.helperMask._5d41184a8463f29bbd19a58c(param1);
                  if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("နည၈ႥဆჰၸჃၰၯၹၝႾဆႠငჰ႓၍ႀုრ","ၙႈႨိသဈတႃဘၐၿႦჭၿჄ჻")))
                  {
                     _loc2_ = 0x640765FC ^ 0x0A90D39E ^ 0x15A0555A ^ -1520176105;
                  }
                  else
                  {
                     _loc2_ = 0x3FC189DC ^ 0x023653E7 ^ 0x125D4D3B ^ -234979282;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

