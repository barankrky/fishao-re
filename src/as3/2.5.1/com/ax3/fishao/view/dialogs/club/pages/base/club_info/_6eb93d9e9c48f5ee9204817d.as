package com.ax3.fishao.view.dialogs.club.pages.base.club_info
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem._1c73633a6a4f4f6050258c2a;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   
   public class _6eb93d9e9c48f5ee9204817d extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _4ee913326011de347d26d330:FrameButtonWrapper;
      
      private var _367dc9388b6aa84de6a05fe4:FrameButtonWrapper;
      
      private var _85bf84fc7282cc1fcad50d68:FrameButtonWrapper;
      
      private var _4cebe0feb914dd4083160b1c:_1c73633a6a4f4f6050258c2a;
      
      private var _0dc4b506b7fad2d1df0e629d:_73899a4de8f83c8d2c26f545;
      
      private var _4649ed662f7bcc47bd6bc130:_73899a4de8f83c8d2c26f545;
      
      private var _3d234c3009d464c7e26a243b:_73899a4de8f83c8d2c26f545;
      
      private var _83eb56a1499d93ad485b1485:_73899a4de8f83c8d2c26f545;
      
      public function _6eb93d9e9c48f5ee9204817d(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set points(param1:int) : void
      {
         this._4649ed662f7bcc47bd6bc130.text = param1.toString();
      }
      
      public function _c0a6069f4ff1c2614a320633(param1:int, param2:int) : void
      {
         this._3d234c3009d464c7e26a243b.text = param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၐჹၬြႆბအ႘ვႋ","ხ႑ဠၫၾოკჽ႘ၮႹႴၚဳၮႬ") + param2;
      }
      
      public function _72c7f1aaab919ce7dbbedabc(param1:int, param2:int) : void
      {
         this._83eb56a1499d93ad485b1485.text = param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("စႰဗႺႬှრ၆ჺၜ","႕ნ၃Ⴁဢ၉ဠჾႤႮဥჳဣნქႤ") + param2;
      }
      
      public function set emblemID(param1:int) : void
      {
         this._4cebe0feb914dd4083160b1c.emblemID = param1;
      }
      
      public function get buttonLeave() : FrameButtonWrapper
      {
         return this._4ee913326011de347d26d330;
      }
      
      public function get buttonJoin() : FrameButtonWrapper
      {
         return this._367dc9388b6aa84de6a05fe4;
      }
      
      public function get buttonUpgrade() : FrameButtonWrapper
      {
         return this._85bf84fc7282cc1fcad50d68;
      }
      
      public function get labelUpgrade() : _73899a4de8f83c8d2c26f545
      {
         return this._0dc4b506b7fad2d1df0e629d;
      }
      
      private function init() : void
      {
         this._8c4b4806e91a0df60548215e();
         this._b34399dd42993c2a83e33437();
         this._4cebe0feb914dd4083160b1c = new _1c73633a6a4f4f6050258c2a(controller,Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揟掵挧挓挗捒掌捛掍捒授挶掠揇揋挎捍掁","揲揋挾掍捪挧捧揶揱掞揲捿揹揿揸捚")));
      }
      
      private function _b34399dd42993c2a83e33437() : void
      {
         _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揆挏挠指捏掬捆掁掯掑揀捴挥捳掶捃捿揟揜捰揍捾掊按挩掣掗挸揨捂","掋捵揠捋捠捯揑捣挷揁挤挤捧挕揬掍"),_85b2141a2303f6545d411d7a.EST_CLUB_LABEL_POINTS);
         _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჲჷဲ။ံႡၴჹႵႊႄ჊၄၀ၿმဈ၆ၲၥိၵၠးႍဎၡႏ჻ျ႑ၙ","၉ဦၟႻဪ႔჊ဗ၂ႢဢၘႾ჊ႆ၍"),_85b2141a2303f6545d411d7a.EST_CLUB_LABEL_MEMBERS);
         _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剨勈刬刾勫刊劧刢劳刡劓劷労勱剞利刓努勅勠勄刑勧剴勬初勇刻剪勥","剟剄刾制勁勦勲刔劤删勚剱别刕助勪"),_85b2141a2303f6545d411d7a.EST_CLUB_LABEL_FISHES);
         this._0dc4b506b7fad2d1df0e629d = _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ီၼိႯჳဴ႟ၗၺႸ၊႙ၪ჏ဋჽဓჍႴရ႗ဟႊ၆ဥၧၴဧၭႳယဴ","ၜရၻၚႎႡჄႁၞჾႀဠၐაဲႰ"),_85b2141a2303f6545d411d7a.EST_CLUB_LABEL_UPGRADE_LEVEL);
         this._4649ed662f7bcc47bd6bc130 = _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剖刃刯勥劐刳劳劲刧剔劽剦剙劬割劦勠刯勇劆力勽勪刭勗労剋勗努剡勿剔剔剛劳勒刹務勮勋","刼助剞剂刧刴刼剿勅劭務割勓刃劤劎"),null);
         this._3d234c3009d464c7e26a243b = _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဖ჉ဴြბიჹჂქ၀ႏႍჼၦႧვႱზჁႍၠၦႫာႱဍ၆ေ჊ც႕ႊဩၳခჁႄမခႌ၅ွ","ၙႱ႑ဋႬႽႢၰၡႫသၛႆპၶ၌"),null);
         this._83eb56a1499d93ad485b1485 = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掙揅挦挝掴掆捹挸掝揟揚挅挝揅挨掖挛捿掼掞挦揬挀掰掐挰掭挲挑捐揲捴捈挞掌掉挸掆插捑","捃捗挘挰指捿捩捗据挒掩揲描捁捄捫"),null);
      }
      
      private function _8c4b4806e91a0df60548215e() : void
      {
         this._4ee913326011de347d26d330 = _092050566a3adcf2725382ab(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勳剮劋刨劇剢劾劈劷刐剮劈創刮剐列劆剣劏勦勰刬勶劆勑势剚勀劥剰","刋劍劷勛劘刈剺前剬劮力剒刽勜剾劌"));
         this._4ee913326011de347d26d330.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_BUTTON_LEAVE);
         this._367dc9388b6aa84de6a05fe4 = _092050566a3adcf2725382ab(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捇掊揣损揹挓控捤掜捿掯揈捸揲捷掛揯掰揉捓挤捶挑揟捒捎揃捁","掝掱捉掠挼掵揌捽揓据挮据挹挧捉掤"));
         this._367dc9388b6aa84de6a05fe4.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_BUTTON_JOIN);
         this._85bf84fc7282cc1fcad50d68 = _092050566a3adcf2725382ab(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挶挻掻挤掉揺振捬挍挳揱挺掵掰挙揮掝捂掅掺捼捚捤挧挡掸揝挕挅挾挗捌挷掆","挍捷挋掹捣挮挟捁挷挔授挜挋捙捩掌"));
      }
   }
}

