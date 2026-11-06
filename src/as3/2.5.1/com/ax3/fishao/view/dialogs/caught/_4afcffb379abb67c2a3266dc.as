package com.ax3.fishao.view.dialogs.caught
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._0b976607cb271dfc280e2be1;
   import com.ax3.display.wrappers.IAssetWrappersProcessor;
   import com.ax3.display.wrappers.impl._e0cc9389efe17fa064758292;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.display.panels._29f22a0f3291b172753f3231;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.model._c47e82e5d235217beb5f9566;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._095f74ed3dbeaa01adf720f9;
   import com.ax3.fishao.view.dialogs._16e26a611afe5208717ab607;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl._5af8e4f295f27d17ff5d7de4;
   import com.ax3.fishao.view.wrappers.impl._89027603939c39853027fd04;
   import com.ax3.fishao.view.wrappers.impl._90153a6362ca40011f20bcff;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils._ca7f6ba7d3c4ef15c37fa46b;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class _4afcffb379abb67c2a3266dc extends _095f74ed3dbeaa01adf720f9
   {
      
      private var _asset:gDialogCaught = new gDialogCaught();
      
      private var _1a6dfd18ebc2aa173fdbad0d:_ca7f6ba7d3c4ef15c37fa46b = new _ca7f6ba7d3c4ef15c37fa46b({
         (0x2D28993A ^ -1422532378 ^ -555526380 ^ 0x58FE2ED1):-295219450 ^ 0x5AE1B2E9 ^ -299073343 ^ 0x5AAA7D53,
         (-478062975 ^ -1720268185 ^ -268286459 ^ -1963599151):-1859504167 ^ 0x1328D5C6 ^ -1512423146 ^ 0x27D8A3E8,
         (-286483394 ^ 0x58445965 ^ 0x3D0F0D15 ^ -1951938518):0x51520508 ^ 0x419B8C5F ^ 0x0B2A8B26 ^ 0x1BE30334,
         (0x304410B1 ^ 0x044202C6 ^ -1958049767 ^ -1085498714):0x062C1646 ^ -1307005396 ^ -1533915482 ^ 0x10A6F765,
         (0x4C088969 ^ -1449265207 ^ 0x03BAD859 ^ -433084459):0x1C593807 ^ -739028806 ^ 0x0FEEF26B ^ -1069246245,
         (0x3784108A ^ 0x7BC9D5F1 ^ 0x7E1F3764 ^ 0x3252F3EB):0x072A7F83 ^ -854026966 ^ 0x42004788 ^ -2009944219,
         (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挛揝掘捪揱揦掜掔掍揕挵据捭捇掞挹掩揜揅揢捤挕挒揠","挾挆捱损掘挥掸挲挮挱捭捇掿控挢揂")):0x6464978F ^ 0x641BD5CC ^ 0x4A160695 ^ 0x4A6946A0
      });
      
      protected var _fishId:int = 0;
      
      public var title:TextField;
      
      public var description:TextField;
      
      public var descriptionAutofit:_73899a4de8f83c8d2c26f545;
      
      public var expValue:TextField;
      
      public var fishSize:TextField;
      
      public var newRecord:_e0cc9389efe17fa064758292;
      
      public var shareTitle:TextField;
      
      public var rulerFishSize:TextField;
      
      public var closeButton:MovieClip;
      
      public var shareButton:MovieClip;
      
      public var buttonShare:FishaoButtonWrapper;
      
      public var labelShareProgress:TextField;
      
      public var checkShareProgress:_5af8e4f295f27d17ff5d7de4;
      
      public var labelShareProgressWrapper:_73899a4de8f83c8d2c26f545;
      
      public var expBoosterIcon:MovieClip;
      
      public var viewInFishdexButton:FrameButtonWrapper;
      
      public var stars:_90153a6362ca40011f20bcff;
      
      public var fishName:String;
      
      public var expBoosterTooltip:_eb2314ffc37429732989b460;
      
      protected var _needDispatchClose:Boolean = true;
      
      protected var _fishInfo:_c47e82e5d235217beb5f9566;
      
      public function _4afcffb379abb67c2a3266dc()
      {
         super();
         this.init(app.dialogManager.assetWrappersProcessor);
         this.closeButton.buttonMode = true;
         this.closeButton.useHandCursor = true;
         this.closeButton.addEventListener(MouseEvent.CLICK,this._d6b22cbb525de1a39214ed4c);
         this.shareButton.addEventListener(MouseEvent.CLICK,this._4f48b145acd8dabdf5940c23);
         this.shareButton.buttonMode = true;
         this.viewInFishdexButton.handler = this._9905b0991336c7a648355d73;
         this.labelShareProgressWrapper = new _73899a4de8f83c8d2c26f545(this.labelShareProgress);
         this.shareTitle.visible = false;
         this.shareButton.visible = false;
         this.labelShareProgress.visible = false;
         this.checkShareProgress.visible = false;
         this.buttonShare.visible = false;
         this.checkShareProgress.state = _89027603939c39853027fd04.UNSELECTED;
         this.viewInFishdexButton.x = -2042277904 ^ 0x33A075D4 ^ -579865675 ^ 0x688AC88B;
         this.viewInFishdexButton.y = 0x24D8A493 ^ -260531233 ^ 0x6E2A2928 ^ -1165355066;
         tabChildren = false;
      }
      
      private function _4f48b145acd8dabdf5940c23(param1:MouseEvent) : void
      {
      }
      
      protected function _9905b0991336c7a648355d73(param1:MouseEvent) : void
      {
         this.viewInFishdexButton.disable();
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_051_UI_Open_menu);
         this._needDispatchClose = false;
         this.close();
         if(GameSwf._d3e1b275b210647ff7fe10f6())
         {
            return;
         }
         var _loc2_:_16e26a611afe5208717ab607 = app.dialogFactory._9767b769c57d09fd948af0f0();
         _16e26a611afe5208717ab607.showFishId = this._fishId;
         _loc2_.show();
      }
      
      override protected function _d6b22cbb525de1a39214ed4c(param1:Event) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_052_UI_Close_menu);
         this.close();
      }
      
      override public function get canClosedByEsc() : Boolean
      {
         return true;
      }
      
      private function _6300d210925d62d2738616f5(param1:int) : void
      {
         var _loc2_:int = 0x278A7862 ^ -1894130466 ^ -1216819525 ^ 0x1FEB6A07;
         var _loc3_:Array = null;
         var _loc4_:_29f22a0f3291b172753f3231 = null;
         var _loc5_:_eb2314ffc37429732989b460 = null;
         if(app.user.isInfluencedOfExpBooster)
         {
            _loc3_ = GameSwf.currentLocationDialog.gui.influencingItemWidgets;
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.itemId == _67282af25befe9778e5c8dd1.ID_EXP_BOOSTER_X2)
               {
                  this.expBoosterIcon.gotoAndStop(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刼劰劔勪刪剜刎劂剛剐剝刃勘前剫劻刖勿动勞勊勄劳勚勔劶勥办勇刿列刻勑剚務刻","勎勼務劶刷劮制刌剩勼勹勠剴剦刿刟"));
                  _loc2_ = -625999354 ^ -770338662 ^ -31080530 ^ -159371984;
                  break;
               }
               if(_loc4_.itemId == _67282af25befe9778e5c8dd1.ID_EXP_BOOSTER_X4)
               {
                  this.expBoosterIcon.gotoAndStop(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挲捲捶挱振掐揔掅捙掃掔掿挺挿揋挵推揩揠捔挣挕挣揎揲掤挿捿揅揅掌揜揷掹捷捴","掠捦揆揼捳挷捂掿挿掸探捻掿掷捞挅"));
                  _loc2_ = 0x48399D8A ^ -777071985 ^ -164426717 ^ 0x6FA44322;
                  break;
               }
            }
            _loc5_ = new _eb2314ffc37429732989b460();
            _loc5_.x = 0x634920A2 ^ -1216968373 ^ 0x114C36DA ^ -982278349;
            _loc5_.y = 0x0A159C1A ^ -1403062236 ^ -703826155 ^ 0x7047132B;
            _loc5_.graphics.beginFill(-1505158153 ^ -14548262 ^ -464941769 ^ -1112345462,-1028509315 ^ -1983953207 ^ 0x57286CAA ^ 0x1C251B1E);
            _loc5_.graphics.drawRect(-1474147126 ^ -2123420442 ^ 0x6A4CE356 ^ -1124172665,-2063921884 ^ 0x50A53CC3 ^ 0x14B294D3 ^ 0x3F135AC9,this.expBoosterIcon.width + (-114844066 ^ -745989349 ^ -1262863693 ^ -1642807312),this.expBoosterIcon.height + (0x2501B8EE ^ 0x4723B6AF ^ -1342253129 ^ -841164304));
            _loc5_.graphics.endFill();
            _loc5_.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剬剨勊勏分劳剓削剪剋剮剰剮剰勮剫","勨募勐勌刞刁剎分劜剗勷勆剡劏剩勁")):int(param1 / _loc2_).toString() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴟဠ჈ၐ။ჁႾ၍Ⴏၤ","ဩဍჲჳႾႤဒჯ႔၄ယၭၲႢၧႫ") + _loc2_.toString() + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掍揙掖挥掍捝挴揘捾捔","揇挢揇揆掕挽挑挿挙掰捬揇捿挨捡捤") + param1.toString()};
            this.expBoosterIcon.addChild(_loc5_);
            this.expBoosterTooltip = _loc5_;
         }
         this.expBoosterIcon.visible = app.user.isInfluencedOfExpBooster;
      }
      
      public function init(param1:IAssetWrappersProcessor) : void
      {
         addChild(this._asset);
         param1.process(this._asset,this);
         this._c92d1979185dcef168783ae7();
      }
      
      private function _c92d1979185dcef168783ae7() : void
      {
         this.newRecord.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捶掟捾掦掽揷捙捆捀掶捊捾揔捜捬揟捑捝掂掤掀掺挗掔掜揘","挟揰挠揻揝挑挕掂捕捗措挮排提揁揂"));
         this.fishSize.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၻიၝၰအ႓ႋဎღႚှက","ჿခၒშႀჭდထႃႌ၅ၔპႈხვ"));
         this.shareTitle.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴎგჟ၏ဝცၜဌၚႛႯ჈Ⴘဌჷါ၍ဍ","ო႓჆ႂჳနჂქဪဘံဣ၅ဂვს"));
         this.viewInFishdexButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劑勳勁剋勱剁初劫初勁剂勃劰刟刭勊刑分剏勞刦刱剧削刮勉劑刾前勱剁勬劋勯","剂勓刈劍勯剋劍勴刎劬势劧刅刹助刜"));
         this.descriptionAutofit = new _73899a4de8f83c8d2c26f545(this.description);
      }
      
      override public function close() : void
      {
         var _loc1_:int = -2095979565 ^ 0x5F3C2B6F ^ -1184446036 ^ 0x3D34CE76;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1911663232 ^ 0x527245AF ^ 0x4CAADAF5 ^ -928447044))
            {
               case 0:
                  this.closeButton.removeEventListener(MouseEvent.CLICK,this._d6b22cbb525de1a39214ed4c);
                  this.shareButton.removeEventListener(MouseEvent.CLICK,this._4f48b145acd8dabdf5940c23);
                  if(this._needDispatchClose)
                  {
                     _loc1_ = -427955769 ^ 0x5A956585 ^ -769707822 ^ 0x368873F4;
                  }
                  else
                  {
                     _loc1_ = 0x1FE4E83C ^ 0x42F954FC ^ 0x766A0F16 ^ 0x73087CB1;
                  }
                  break;
               case 1:
                  super.close();
                  return;
               case 2:
                  dispatchEvent(new Event(_67f8febc099eaa05c48aa41e.CLOSED_CAUGHT_DIALOG));
                  _loc1_ = -287275031 ^ 0x52FD4F8A ^ 0x5D549856 ^ -1187602606;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _b3a35344555fb4adad8a8342(param1:_c47e82e5d235217beb5f9566, param2:int, param3:Boolean, param4:Boolean) : void
      {
         var _loc5_:Array = null;
         var _loc6_:ColorMatrix = null;
         var _loc7_:ColorMatrixFilter = null;
         this._fishInfo = param1;
         var _loc8_:int = 0x236E12AB ^ 0x76BFC332 ^ -808388747 ^ -1711201126;
         var _loc9_:int = -1670015809 ^ -477617170 ^ 0x19D69A53 ^ 0x662B2DE4;
         this._fishId = param1.id;
         this.newRecord.visible = param3;
         this.fishName = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捼挴损掃挓挞掫揫挦掫接挸挚掗捨揓挆揁","揜挔换挊揔揃揯掷揬掟捤挋挟捃掖揱") + this._fishId);
         this.rulerFishSize.text = _c2ad9d37d7be0097d6d2e977._7f50078d287d104c5652744a(param1.length);
         this.fishSize.text = _c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(param1.length);
         this.descriptionAutofit.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႯးကႡეၺႳပႼე჆ჟၫიႅჽძၕဃშၒဩဢ႞ႌႶ჎ဉဧဘႿႵႌၔႌယჲဂၒႚၣၥ","ၩပၢၝႣ჋ზၷႇဍဇၮာဉსစ"));
         this.expValue.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ცၔქპ჌Ⴜ့დဌၓဵႢჴႵဣႽႳიၙၶცႾႼြၢႢ၉ဋဆသ჊Ⴚ၊ၧ၆Ⴄ","ဘဖ၅ညრ၇ှၛဖၺ჉ჾ၌ဉႂၡ")).replace(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揼掁捈捆捡捠揠換捯掽捻挓挮揮揌挆捑揺","揈挾挙捣挍插挎揊捨掭挧掳掾挤捵捹"),param2.toString());
         var _loc10_:_0b976607cb271dfc280e2be1 = new _0b976607cb271dfc280e2be1();
         var _loc11_:Number = this._1a6dfd18ebc2aa173fdbad0d._af8c58b343e7de991a098dfb(param1.length);
         _loc10_.width = _loc11_;
         _loc10_.height = _loc9_;
         app.resourceManager.replaceBitmapDataFromURL(_loc10_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ვჴჂဘႋဌ၊ჭႊႃႸၜဒဗჵဟ႒ဇ၄၏Ⴍ။ს႙ჃဉႴဆၴჀံႬ","၅႗ბၢၾ႖ဠဒჩჱჅსၹၛუჄ") + int(_loc11_) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挿揓掻挤捲掸捌挡掌掏掫捺揺挗","振掦揽捩捳挚持握揼揸挷挶捻掘揩捩") + this._fishId));
         _loc10_.x = (_loc8_ - _loc10_.width) * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၬၜၹဧႹქჅိာ၆႓သၰი္Ⴉღႀ။၆ბူေႰ","ႉႂჁ႞ထၞႊဓူჲၬဋჼ჌ၱၲ") + (-1777927676 ^ 0x52F8674E ^ -2039641286 ^ 0x4293166E);
         _loc10_.y = (_loc9_ - _loc10_.height) * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劺劆励励劷刌刞努劑劉刬剸勯副剱到劁初効劤力劢到勎","刦勧办劼刓勤刺劷刕劲務刹刢劵勋刜") + (-1717555094 ^ -1308657439 ^ 0x0584A7AA ^ 0x2DDBEF67);
         _loc10_.smoothing = true;
         this._6300d210925d62d2738616f5(param2);
         if(param1.isShiny)
         {
            this.title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捉挰挷挸挃指揚挘掌揵捻挪揆捳捵挪揆挸掦揥捤挃指握挒掘掦振掤挐捘揗掯揓挐揇捬授掓捱捼挂挐挦","掑挀揼掀挫掄挸挅揩捧提据捉探揗掰")).replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჀႹဴჹჱႚხ჊ჸႣှၭဏჁ္ჺႵႱ၀ႄკႅႋၨ၇ၴီႭဣႭ","၊ၐၚრူပႦႷဍ႘ဩရႍფႿო"),this.fishName);
            this._asset.viewRainbow.visible = true;
            this._asset.viewRainbow.gotoAndPlay(0x7E1FCC37 ^ -1089437290 ^ 0x614B66EB ^ -1606145205);
            _loc5_ = [];
            _loc6_ = new ColorMatrix();
            _loc6_.adjustHue(param1.hueShiftOfShiny);
            _loc7_ = new ColorMatrixFilter(_loc6_.matrix);
            _loc5_.push(_loc7_);
            _loc10_.filters = _loc5_;
         }
         else
         {
            this.title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挘挻描揣揍捎捳掅捧捥换挄挿捲揼挆捽挻掕挓揹捲捄捑揊措揞捳挑掖","捉挢提掮挱捯挿授捱揪挲握掶揨挂挩")).replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勖劽刀劂刷势刡勚刈切刍刓剴剪勝剩劙劚劓勀勠初効勻動创刚勻刄刜","剥剸勾勴劔刷勾剫刭勐剫劬勩刈加刡"),this.fishName);
            this._asset.viewRainbow.visible = false;
            this._asset.viewRainbow.gotoAndStop(-113569635 ^ -1588713506 ^ -1361876995 ^ -156872513);
            _loc10_.filters = [];
         }
         addChild(_loc10_);
         this.stars._5423e95666ef5077a898c118(param1.rarity);
         this._01b26a0a5017e802861e20fc();
         show();
      }
      
      private function _01b26a0a5017e802861e20fc() : void
      {
         var _loc1_:Array = [];
         var _loc2_:int = GameSwf.currentLocationDialog.locationModel.locationConfig.waterColorHueShift;
         var _loc3_:ColorMatrix = new ColorMatrix();
         _loc3_.adjustHue(_loc2_);
         var _loc4_:ColorMatrixFilter = new ColorMatrixFilter(_loc3_.matrix);
         _loc1_.push(_loc4_);
         this._asset.viewWaterAnimation.filters = _loc1_;
      }
   }
}

