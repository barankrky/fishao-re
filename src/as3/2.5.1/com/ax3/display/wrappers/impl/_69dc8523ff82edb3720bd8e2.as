package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.display.dialogs._477aae31689d8cc1711fcd75;
   import com.ax3.fishao.model.vo._849cfb7e3d3f1f15ce0c680a;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class _69dc8523ff82edb3720bd8e2 extends Sprite implements IAssetWrapper, _5851c671824f640d4d36d175
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _9337e5e06e8685f7bb9b02cf:MovieClip;
      
      private var _a2b5d5799dc01aa18dad55e0:Rectangle;
      
      private var _e7977e5da362242018070a4a:TextField;
      
      private var _b0be9b7d95902ae1c058b580:TextField;
      
      private var _6344cd4b3e94ab3486e1c127:TextField;
      
      private var _f5c840ebe563250d107ab699:FrameButtonWrapper;
      
      private var _549890f17b0d8f1f70d0a3ca:FrameButtonWrapper;
      
      public var buyHandler:Function;
      
      private var _8f3858d6d5d15fe856000957:_477aae31689d8cc1711fcd75;
      
      private var _eea6e187fbd721564654b356:_849cfb7e3d3f1f15ce0c680a;
      
      public function _69dc8523ff82edb3720bd8e2()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._9337e5e06e8685f7bb9b02cf = new MovieClip();
         this._9337e5e06e8685f7bb9b02cf.x = this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႜႱ჏႐ၯႷႨვჇ჻႔ၪ၂Ⴢဂკည჆","ၿ႘ჲ჻ပဓဤრႾစၩၢუဍჼၛ")).x;
         this._9337e5e06e8685f7bb9b02cf.y = this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("္႓ძႧ႔თღ႑ၧႂჶႠှ჊ეჸၲဏ","ႵယႃၨဵჼႼႼဢဠპစႚၭခႁ")).y;
         this._a2b5d5799dc01aa18dad55e0 = new Rectangle();
         this._a2b5d5799dc01aa18dad55e0.width = int(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勳劘刓勭剀剟劇剶労剾劊劌劚勄剫勤劻勍","劓刔励劑剜利劵剉勸刱刣勺劼劚勃勗")).width);
         this._a2b5d5799dc01aa18dad55e0.height = int(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刯勴剼剹勲勯勺勥勵剿劚則剂勻助剉勸剑","判勃剌前勾剚勸勛勹别剉劽剄劎勂刟")).height);
         ShiftWrapper.shiftDisplayObject(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("募刨劜刺剑刱勊刘劗刅劵剜勠勨剀别刯勭","剄勏劝効勴勑剡剗剾势刀删剛劀勵刍")),this._9337e5e06e8685f7bb9b02cf);
         this._e7977e5da362242018070a4a = TextField(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掅挾捖揚掼掭掠探捋挃掤掜挴掬掤掞掟捨","揊挥掾挏握挴掼掖捁捒揤掗挢揣捞揶")));
         this._b0be9b7d95902ae1c058b580 = TextField(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဍ၏ႥႮၧ၆ၧ၏ဌႯლႺႚႛႚძტႏႩ႟တၥဌျၺჲၾდႉွဲჾႿ့","ႋလၒႅဖფჴ႘ံ၆ႄႈၽჷႊႤ")));
         this._6344cd4b3e94ab3486e1c127 = TextField(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挽揕挘捀揔挦揔掟捋掝损掋捡挜捝捕捋揃捩挍掅揺描掂挣捓掼揀捐挟换握挜捠","揧捫揕掏捓按挏捵揱挀揪挕振挓揀捬")));
         this._8f3858d6d5d15fe856000957 = new _477aae31689d8cc1711fcd75(this._b0be9b7d95902ae1c058b580,this._6344cd4b3e94ab3486e1c127);
         this._8f3858d6d5d15fe856000957.setValue(-937016923 ^ 0x2A69F0E9 ^ 0x35A89AF1 ^ -672715843,_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捞掜挆挻揈控挅掻掐揚揧插捔捩揶挈掷揷捐掯捔掑揬挖捁捙捲掞捞捴提揁挟捈挈捌捸揁挡掾揧揯捥掃捴掆捼插捗挛掹掋揤捪揶捩挨挱揔捨挗捥揪掐捈捖捺掝插掮捪捋揚掜挅挽","掉推挗持掝挤捗掯捥挽掄挆挴揆捉捪")));
         this._f5c840ebe563250d107ab699 = new FrameButtonWrapper();
         this._f5c840ebe563250d107ab699.process(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捛挊揗挦捉掅掁提捉揾掾掮挍援捫挿掖挨揥挚揕揶掃掸挥掦挢掠挛捿揪掽挧掼揆捠揩掵掂揊掰捣揓掹捹揿捕掅揉揎捩挶捓掦","捦捨揕捥捛採揍挏掅挫挚揨掏揿揂掮")));
         this._f5c840ebe563250d107ab699.handler = this._3bc2141e277cc92859751967;
         this._549890f17b0d8f1f70d0a3ca = new FrameButtonWrapper();
         this._549890f17b0d8f1f70d0a3ca.process(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ါ၏ჅဿဪႂႡသႋჺၺၳႷႉႴဴ႞ဃၾာ႔ၧ၃႟ႥၳჀციႳၿჶၚၖ႞ဘႂ၀მႱဨဃ၆ၤပခၩၐအဝ჌თႚႰ","ძီဩၹ၆အၗဢვ჎Ⴇმჟအჵი")));
         this._549890f17b0d8f1f70d0a3ca.handler = this._27778e2406d20120ca89b114;
         addChild(this._asset);
      }
      
      private function _aab96f0cdde751ed803c7b85(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x7C690C02 ^ 0x7D66AF14 ^ 0x7130579D ^ -153813091;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x7D3DD6E0 ^ -1160386147 ^ 0x5A047211 ^ 0x1B074678))
            {
               case 0:
                  return;
               case 1:
                  this.buyHandler(this._eea6e187fbd721564654b356);
                  _loc2_ = 0x6870C459 ^ -142153497 ^ -1411197851 ^ -1291848753;
                  break;
               case 2:
                  if(this.buyHandler != null)
                  {
                     _loc2_ = 0x4744CB22 ^ -1313391206 ^ -179053916 ^ -2058672375;
                  }
                  else
                  {
                     _loc2_ = -2000953497 ^ -1678302656 ^ -297250144 ^ 0x7BEFA493;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _3bc2141e277cc92859751967(param1:MouseEvent) : void
      {
         var _loc2_:int = -396890786 ^ 0x5BC15CE5 ^ 0x6DB04BB6 ^ -1265691228;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-224966889 ^ -605296155 ^ 0x0BFCCAB1 ^ 0x48298BEB))
            {
               case 0:
                  this.buyHandler(this._eea6e187fbd721564654b356,_67282af25befe9778e5c8dd1.FISHCOINS.id);
                  _loc2_ = 0x4559CF99 ^ -1289611459 ^ -1450694545 ^ 0x355A1F61;
                  break;
               case 1:
                  if(this.buyHandler != null)
                  {
                     _loc2_ = -1631597464 ^ -138766821 ^ 0x2497F67D ^ 0x273B43A6;
                  }
                  else
                  {
                     _loc2_ = -1806590381 ^ 0x73F62656 ^ -797982213 ^ 0x5D619654;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _27778e2406d20120ca89b114(param1:MouseEvent) : void
      {
         var _loc2_:int = -1671728800 ^ -161434742 ^ -2128528683 ^ -1324639444;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-188162769 ^ -205575051 ^ 0x7B19BFAA ^ 0x267F2DE1))
            {
               case 0:
                  this.buyHandler(this._eea6e187fbd721564654b356,_67282af25befe9778e5c8dd1.FISHBUCKS.id);
                  _loc2_ = 0x3DAD37A8 ^ 0x30BA6765 ^ 0x11D660D6 ^ 0x46D0530B;
                  break;
               case 1:
                  return;
               case 2:
                  if(this.buyHandler != null)
                  {
                     _loc2_ = -2144767401 ^ 0x0ADECBF1 ^ 0x42B3431F ^ -1839883864;
                  }
                  else
                  {
                     _loc2_ = 0x35A2F58F ^ -1739613497 ^ -8679753 ^ 0x088782EF;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _99a627da99e1f6ff01887e8d(param1:_849cfb7e3d3f1f15ce0c680a) : void
      {
         if(param1.priceFishbucks >= (0x0A73ED98 ^ 0x43BD010E ^ -345246270 ^ -1566238380) && param1.priceFishcoins >= (-619865251 ^ 0x6B4A6791 ^ 0x015A9B6E ^ -1323472990))
         {
            this._f5c840ebe563250d107ab699.x = 0x7C2E14CE ^ -377769814 ^ 0x3BDE92BE ^ -1366608703;
            this._f5c840ebe563250d107ab699.y = 0x313F383F ^ -65247545 ^ 0x620BFEC4 ^ -1356292046;
            this._549890f17b0d8f1f70d0a3ca.x = -205648819 ^ 0x680E2FD0 ^ 0x2544182A ^ -1091290708;
            this._549890f17b0d8f1f70d0a3ca.y = -819117549 ^ 0x2F7F30BF ^ -2046072833 ^ 0x6659151F;
         }
         else if(param1.priceFishbucks >= (0x22A0D0A0 ^ 0x6B92E221 ^ -170893159 ^ -1126018536) && param1.priceFishcoins < (-1029621642 ^ -2142713235 ^ -1696683699 ^ -667460778))
         {
            this._f5c840ebe563250d107ab699.visible = false;
            this._549890f17b0d8f1f70d0a3ca.x = -823134532 ^ 0x6789FDA9 ^ -1278314396 ^ 0x1AA8716A;
            this._549890f17b0d8f1f70d0a3ca.y = -1250603813 ^ 0x4C6ECE54 ^ -2092924760 ^ 0x7A5B020A;
         }
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:_a4e47350c89a50d87a148c28 = null;
         this._eea6e187fbd721564654b356 = _849cfb7e3d3f1f15ce0c680a(param1);
         this._e7977e5da362242018070a4a.text = this._eea6e187fbd721564654b356.title;
         this._6344cd4b3e94ab3486e1c127.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挳揋掳挱挏捰捠揓挐揤挍掋描捒掃挝捶揗捖揰揾挳援掙揝採捯挔揋按掇挸掹挴揅掷揆挡推揅挩指捳捔挫揝","掗掩揣揖捂挻掏挹掛挆挆掚揆授插捞") + this._eea6e187fbd721564654b356.type);
         this._f5c840ebe563250d107ab699.label = String(this._eea6e187fbd721564654b356.priceFishcoins);
         this._549890f17b0d8f1f70d0a3ca.label = String(this._eea6e187fbd721564654b356.priceFishbucks);
         this._99a627da99e1f6ff01887e8d(this._eea6e187fbd721564654b356);
         removeAllChildren(this._9337e5e06e8685f7bb9b02cf);
         if(this._eea6e187fbd721564654b356.imageURL != null)
         {
            _loc2_ = new _a4e47350c89a50d87a148c28(null);
            _loc2_.width = this._a2b5d5799dc01aa18dad55e0.width;
            _loc2_.height = this._a2b5d5799dc01aa18dad55e0.height;
            app.resourceManager.replaceBitmapDataFromURL(_loc2_,this._eea6e187fbd721564654b356.imageURL);
            this._9337e5e06e8685f7bb9b02cf.addChild(_loc2_);
         }
      }
      
      public function get data() : Object
      {
         return this._eea6e187fbd721564654b356;
      }
      
      public function _6d5360dc76898e470b88eb2e() : void
      {
         this.data = this._eea6e187fbd721564654b356;
      }
   }
}

