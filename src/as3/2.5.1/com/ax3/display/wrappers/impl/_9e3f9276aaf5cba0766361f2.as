package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.core.IMovieListElement;
   import com.ax3.fishao.model.info._3aaebb69caa0055ca844b9f3;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils._510d9148470a678356a77991;
   import com.ax3.utils.removeAllChildren;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class _9e3f9276aaf5cba0766361f2 extends Sprite implements IAssetWrapper, IMovieListElement
   {
      
      public static const TYPE_LOCATION:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႬၘၩჀႹာၝဇმဴရ႒ხလკჵႯლၹ჉ჾშၽၝ","ႎူဉ჈႐ၙႆဍဏ၊နႢბူဋေ");
      
      public static const TYPE_ENERGY:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劇刋刘剱割剞剣利劮刐助剋剌募刢刭刉劚勯劃","刪刋剫努劂勅劑剽务剄劰刂势刕劝剔");
      
      public static const TYPE_TRADING:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႀၑყၮႧႨၸဇႏဌႮ၎ၪႳ့ၼႹႺၡჳၕဂ","ၴၒ၄၈၃က႘ႉႲ္၌ჭႍှဆჄ");
      
      public static const TYPE_LEVEL_UP:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၢဲ႑჎ჸၛထ၍်လႁဇჸ႐၅Ⴟსႌ၂Ⴕႅჯဢရ","႓ႃ၍ეၭဵၠးံၵჍၙၞၹၙ္");
      
      public static const TYPE_ENERGY_PRIZE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႄჭဨႦၳ႙ၞჅჅაှၣပႾႼၙဗထဋရႚၐႃၚစဳီႄဟဵႎ၈","ၩ၁აၟႸჽႨဈႁჟႧႪၴჽ႙Ⴏ");
      
      public static const TYPE_LEVEL_UP_PRIZE:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挟掝捂揷挟揞揾挬挴掂掫掄揽挎捩捤揚挻掃捴捽捤掛掺挓掜捈捕揻掠掹捹捲揆揪揷","挗揦揹挝掙排掻捓挷揬揞挌揀挺掬掳");
      
      private static const _fe1f4745f334216f2d5193dc:int = 0x4352BE65 ^ 0x469D9A55 ^ -1436303294 ^ -1347623884;
      
      private static const _20fcb02de9cb79b7397c43c9:int = -490371245 ^ 0x46AAC068 ^ -857560953 ^ 0x688DEFFA;
      
      private static const _ca053e7f57175c7df9417c6b:int = 0x2463E023 ^ -138534926 ^ 0x18E29262 ^ -885035531;
      
      private static const _6f7b29fe5e5d6fd4c8dcbabe:int = -146813318 ^ 0x167287D9 ^ -2120750537 ^ 0x60DAA3D2;
      
      private var _9ff79204f8f96d0306afe0d3:TextField;
      
      private var _89ffeade5f3e6c6d69178155:Sprite;
      
      private var _49ddf9e983f60a569a081233:Sprite;
      
      private var _5c228174d1f3c0fcf6a5c78b:_3aaebb69caa0055ca844b9f3;
      
      public function _9e3f9276aaf5cba0766361f2()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:int = -1891816491 ^ 0x3A266C59 ^ -448053799 ^ -502618793;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-500566916 ^ 0x0EFC1968 ^ 0x0919E397 ^ 0x5796D181))
            {
               case 0:
                  this._89ffeade5f3e6c6d69178155 = Sprite(param1);
                  this._49ddf9e983f60a569a081233 = Sprite(this._89ffeade5f3e6c6d69178155.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捱捉捙捪揁捔捓掤捌揄揢挧揽掘","捣挱揷揣挤挚揯掑挵揦揋掼捱捏捼捾")));
                  this._9ff79204f8f96d0306afe0d3 = TextField(this._89ffeade5f3e6c6d69178155.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捭挠掞捠掯掭捤捜揯换挥挫掃揘捳掟掆揊","挰掌揮捔挣挢损掊捭掹挿挭揧插揰挳")));
                  if(this._89ffeade5f3e6c6d69178155.parent != null)
                  {
                     _loc2_ = -93879765 ^ -664951168 ^ -1297848288 ^ 0x22C4938B;
                  }
                  else
                  {
                     _loc2_ = 0x2B186C62 ^ 0x10A8EB5D ^ 0x1AC5765E ^ -1825624478;
                  }
                  break;
               case 1:
                  addChild(this._89ffeade5f3e6c6d69178155);
                  return;
               case 2:
                  this._89ffeade5f3e6c6d69178155.parent.addChild(this);
                  _loc2_ = -323357633 ^ -2052549649 ^ -1105426572 ^ 0x65573FA7;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set elementData(param1:Object) : void
      {
         var _loc2_:_a4e47350c89a50d87a148c28 = null;
         switch(param1.type)
         {
            case TYPE_LOCATION:
               §§push(-1964983741 ^ -2062313737 ^ -339409106 ^ -466211942);
               break;
            case _67282af25befe9778e5c8dd1.CLOTHE.id:
               §§push(0x1D5CF88A ^ 0x04253255 ^ 0x7BAAD770 ^ 0x62D31DAE);
               break;
            case TYPE_ENERGY:
               §§push(0x7A519023 ^ 0x2425966B ^ 0x4A96365F ^ 0x14E23015);
               break;
            case TYPE_TRADING:
               §§push(0x221EF1FF ^ -1505178070 ^ -1271944742 ^ 0x3079960C);
               break;
            case TYPE_ENERGY_PRIZE:
               §§push(-535439980 ^ 0x7ED21846 ^ -623103782 ^ 0x441BFD0C);
               break;
            case TYPE_LEVEL_UP_PRIZE:
               §§push(-2022712227 ^ -1208570471 ^ -628841796 ^ -367144067);
               break;
            default:
               §§push(-52926271 ^ -416138467 ^ 0x681295B7 ^ 0x73F8C66D);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = new _a4e47350c89a50d87a148c28();
               _loc2_.width = _fe1f4745f334216f2d5193dc;
               _loc2_.height = _20fcb02de9cb79b7397c43c9;
               app.resourceManager.replaceBitmapDataFromURL(_loc2_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._b92861b7f152eb67f031e3a0(param1.id)));
               this.itemBitmap = _loc2_;
               this._9ff79204f8f96d0306afe0d3.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揋掵捣掅捂掚挹挕揗捕掾捆掲授掻挅挦揧捊控挳挐掱挊捉掲","揍插捨揳提揌挙掼捉捕掼揍挽揑挓捙") + param1.id);
               break;
            case 1:
               if(param1.id > (-1493923483 ^ -1087011892 ^ -244198628 ^ -391063087))
               {
                  this._a4787aecc6a593fe7c94f839 = _3aaebb69caa0055ca844b9f3._02b7323f3cae6a46e3f50428(param1.id,param1.type);
                  this._9ff79204f8f96d0306afe0d3.text = _c2ad9d37d7be0097d6d2e977.get(_67282af25befe9778e5c8dd1._5a1d463095ae522df1081124(param1.type) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("။Ⴡ၌ဥါ჏ႛၬၝ႘","ၖႠဴჟႦაჯႚပკჵႃႁၓჩႤ") + param1.id);
               }
               else
               {
                  _loc2_ = new _a4e47350c89a50d87a148c28();
                  _loc2_.width = _fe1f4745f334216f2d5193dc;
                  _loc2_.height = _20fcb02de9cb79b7397c43c9;
                  app.resourceManager.replaceBitmapDataFromURL(_loc2_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._ccd1149a2314a10a099d633e(param1.id)));
                  this.itemBitmap = _loc2_;
                  this._9ff79204f8f96d0306afe0d3.text = _c2ad9d37d7be0097d6d2e977.get(param1.id + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挜掩捄捵掙掏揾掫捯挖持掤揱挵捬掏揫揪","捼挟挹揆掄捥捨挙挪掄挆揆揘換捎掣"));
               }
               break;
            case 2:
            case 3:
               _loc2_ = new _a4e47350c89a50d87a148c28();
               _loc2_.width = _fe1f4745f334216f2d5193dc;
               _loc2_.height = _20fcb02de9cb79b7397c43c9;
               app.resourceManager.replaceBitmapDataFromURL(_loc2_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._0615c43b3c2382dfeb7de7cc(param1.type)));
               this.itemBitmap = _loc2_;
               this._9ff79204f8f96d0306afe0d3.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("控捹捅推揿捕揶挩掸据挺挈掂挟捑捕挍揅挎揻按捜揕揹捪掛挾揪","捘振捁揾挩揵损捍推挺掦指揉挚揑掇") + param1.type);
               break;
            case 4:
            case 5:
               _loc2_ = new _a4e47350c89a50d87a148c28();
               _loc2_.width = _fe1f4745f334216f2d5193dc;
               _loc2_.height = _20fcb02de9cb79b7397c43c9;
               app.resourceManager.replaceBitmapDataFromURL(_loc2_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._0615c43b3c2382dfeb7de7cc(param1.type)));
               this.itemBitmap = _loc2_;
               this._9ff79204f8f96d0306afe0d3.text = _c2ad9d37d7be0097d6d2e977.get(param1.type).replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႃ႒ၾၜძႫႲဝၮၷဝ၃჎ၐ၍რზფ႐Ⴎၛ႟ႬჂ","ဂၵၦႨႡၼუ႓ၼၩდႴႤၲႛძ"),param1.quantity);
               break;
            default:
               this._a4787aecc6a593fe7c94f839 = _3aaebb69caa0055ca844b9f3._02b7323f3cae6a46e3f50428(param1.id,param1.type);
               this._9ff79204f8f96d0306afe0d3.text = _c2ad9d37d7be0097d6d2e977.get(_67282af25befe9778e5c8dd1._5a1d463095ae522df1081124(param1.type) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴇၤအဘၱ႕၌ၨე၂","ဓႎၑၣჇရႋეခჁဨ჏Ⴤ၂ဈဖ") + param1.id);
         }
      }
      
      private function set _a4787aecc6a593fe7c94f839(param1:String) : void
      {
         _510d9148470a678356a77991._dfc01609cda83a1c4e0a9ae9(param1,this._49ddf9e983f60a569a081233,app.resourceManager,_fe1f4745f334216f2d5193dc,_20fcb02de9cb79b7397c43c9,_ca053e7f57175c7df9417c6b,_6f7b29fe5e5d6fd4c8dcbabe);
      }
      
      public function set text(param1:String) : void
      {
         this._9ff79204f8f96d0306afe0d3.text = param1;
      }
      
      public function getCurrentElementIdex() : int
      {
         return 0x5085F288 ^ 0x7CBADC8D ^ -1217971405 ^ 0x64A7EAC9;
      }
      
      public function set itemBitmap(param1:Bitmap) : void
      {
         removeAllChildren(this._49ddf9e983f60a569a081233);
         this._49ddf9e983f60a569a081233.addChild(param1);
         param1.x = (_fe1f4745f334216f2d5193dc - param1.width) / (0x4EA2ADDF ^ -561290539 ^ -518142620 ^ 0x71340A6C);
         param1.y = (_20fcb02de9cb79b7397c43c9 - param1.height) / (0x70CFB488 ^ 0x401AB28B ^ 0x14EAEA4B ^ 0x243FEC4A);
      }
   }
}

