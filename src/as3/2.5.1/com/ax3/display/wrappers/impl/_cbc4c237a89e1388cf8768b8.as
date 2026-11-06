package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.model.vo._b37fd2bf0fee2c3dcbb24252;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _cbc4c237a89e1388cf8768b8 extends Sprite implements IAssetWrapper, _5851c671824f640d4d36d175
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _a30df9071f60f24463d73a54:_b37fd2bf0fee2c3dcbb24252;
      
      private var _0169ccb2713c044b4e249c62:TextField;
      
      private var _193abe696ab03093be56127b:TextField;
      
      private var _8b2022419d41f456fb051b3d:TextField;
      
      private var _f65c1e7b2fe3b18c4ec96daa:FishaoButtonWrapper;
      
      public var buyHandler:Function;
      
      public function _cbc4c237a89e1388cf8768b8()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._0169ccb2713c044b4e249c62 = TextField(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴔჴႍ၁မႀ჉ဓოყყၽထ၇ႺဈၠჸႧအဒ၇ၷယ","ဿႰၸႡჭ၏ဏ჈၍ဨဖဍძჍ჻၍")));
         this._193abe696ab03093be56127b = TextField(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揊挨挖揼掱挙挘掱揨換掌挏掑掌提揞捎掷掩揍提挥掐挳捄捽掣挿挝捤捎揼","挈挂捓掁挂捅捇挭振掹掠揠掓揖捘捓")));
         this._8b2022419d41f456fb051b3d = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勫刟剙剀剶刟劵剘別剕剳劳剱剨刎勨劕勲劄勢勍募勛勞剞刔劚劳劷券劰勯","割刜勵刲刹勻剧剱劣劳券勮刪剙别別")));
         this._f65c1e7b2fe3b18c4ec96daa = new FishaoButtonWrapper();
         this._f65c1e7b2fe3b18c4ec96daa.process(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႷစၣဆწဂႳႌဍၥယ၍ႝჁခွ჻ၮစႃშ့ဂႛၒფ","Ⴠმ჆ၮხဋၕစႻမြၺႽჀဥႍ")));
         this._f65c1e7b2fe3b18c4ec96daa.handler = this._b20e5943da80ef2d5c880434;
         addChild(this._asset);
      }
      
      private function _b20e5943da80ef2d5c880434(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x2FE38CD7 ^ 0x76B3EBF7 ^ -1807171592 ^ 0x56D144AE;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-2066170892 ^ -938857891 ^ 0x5D447AB1 ^ -1973454993))
            {
               case 0:
                  this.buyHandler(this._a30df9071f60f24463d73a54);
                  _loc2_ = -1918743813 ^ 0x5EF634AA ^ -1397458373 ^ -467036129;
                  break;
               case 1:
                  if(this.buyHandler != null)
                  {
                     _loc2_ = 0x6F28AC75 ^ -1831835130 ^ 0x1311EFAB ^ 0x7520B5AF;
                  }
                  else
                  {
                     _loc2_ = 0x62301046 ^ 0x6D985D11 ^ 0x21B2EB28 ^ -1244448246;
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
      
      public function set data(param1:Object) : void
      {
         var _loc2_:int = -2040788214 ^ 0x52750756 ^ 0x3E177C01 ^ -106927652;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1795773075 ^ -415875686 ^ 0x0167C667 ^ 0x61394F13))
            {
               case 0:
                  return;
               case 1:
                  this._f65c1e7b2fe3b18c4ec96daa.disable();
                  _loc2_ = 0x32270C8F ^ -1042575316 ^ 0x769FC7A5 ^ -1761787259;
                  break;
               case 2:
                  this._a30df9071f60f24463d73a54 = _b37fd2bf0fee2c3dcbb24252(param1);
                  this._0169ccb2713c044b4e249c62.text = this._a30df9071f60f24463d73a54.friendName;
                  this._8b2022419d41f456fb051b3d.text = this._a30df9071f60f24463d73a54.visitorsAmount.toString() + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剅劊劄删剠券刴劃分別券刵劵勂","勆勾刘勶剚剺刳利劆剺刣勠刢剘刳劶");
                  this._193abe696ab03093be56127b.text = this._a30df9071f60f24463d73a54.homePoints.toString();
                  this._f65c1e7b2fe3b18c4ec96daa.label = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჭစႨჾთၸჁი႕ქၦၣხჽႳႼႆၯႛႦႈႈႻႻ်႙ჽၸၽყဃၫဉႵၨჼႾ჊ဂ၎ၨဤეၩႁჺၙၧႆၞ်ၫ႖჊ဥဘုဪე။ဠဢ","်၆ၲါ္ჲႳყၖၴႯჼႠၷჲႚ"));
                  if(this._a30df9071f60f24463d73a54.visitorsAmount > (0x2F9AA25C ^ 0x678680A8 ^ -540599174 ^ -1747239289))
                  {
                     _loc2_ = -328763116 ^ -941038555 ^ -1036064654 ^ -97555263;
                  }
                  else
                  {
                     _loc2_ = -1128931277 ^ -1052515486 ^ -1247193746 ^ -608088132;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get data() : Object
      {
         return this._a30df9071f60f24463d73a54;
      }
      
      public function _6d5360dc76898e470b88eb2e() : void
      {
         this.data = this._a30df9071f60f24463d73a54;
      }
   }
}

