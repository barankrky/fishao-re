package com.ax3.fishao.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._6361b2c3a5d7e31e21223d27;
   import com.ax3.display.autoscalable._759432fb62268c6ba2923d88;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.fishao.Config;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.vars.app;
   import com.ax3.net._63e4212395d78ab7048a8301;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   
   public class _3b0c83955f875982aead2f14 extends _63e4212395d78ab7048a8301
   {
      
      private static const _279fccd9ee33495a6337d3c9:String = Config.ASSET_SERVER + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揋捖掐揙揳捌捠挏捱捻捅挽捾挎挹揟捳捭捣掇揊挲換揠捓掀挫捣捂挈","揪揵捻挪掎挓揚捱捿揫換揾揜挸捉挜");
      
      public function _3b0c83955f875982aead2f14()
      {
         super();
      }
      
      public static function _cb9c41bc51cbdb8484760a4e(param1:String, param2:DisplayObject) : _a4e47350c89a50d87a148c28
      {
         var _loc3_:_a4e47350c89a50d87a148c28 = null;
         _loc3_ = null;
         _loc3_ = new _a4e47350c89a50d87a148c28(null);
         param2.parent.addChild(_loc3_);
         _loc3_.x = param2.x;
         _loc3_.y = param2.y;
         _loc3_.width = param2.width;
         _loc3_.height = param2.height;
         _loc3_.filters = param2.filters;
         app.resourceManager.replaceBitmapDataFromURL(_loc3_,param1);
         return _loc3_;
      }
      
      public static function _c28db4f07d43f2dc8f1ec5b4(param1:String) : String
      {
         if(param1.lastIndexOf(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揆掰掔掰捵掰捐挒探掠捍挳揍掂揄捩","揫捭挅捲捤挍掉掑挈挕提揽掍挷揬掵")) >= (-439499657 ^ -1202112426 ^ 0x530AFAA7 ^ 0x0E9E0686) || param1.lastIndexOf(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဦၙჃႰსძဩၣိၣညၜႯ႖ဟ၉","႑ံၞၛ႑ჅვဍဂႫဏႵဒჿტဗ")) >= (0x75C5A5A9 ^ -2006589540 ^ -743744647 ^ 0x2E0B214C))
         {
            return _279fccd9ee33495a6337d3c9 + param1;
         }
         return _279fccd9ee33495a6337d3c9 + param1 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捇揤捘捦捩捛揩揿掁掲挵掱掱揣挴捀","揼描揰揘揝掵挕挄掐掓挸掻揥揞捗捋");
      }
      
      public static function _81b8d50af9d50ae6f297af99(param1:String, param2:int) : String
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:_67282af25befe9778e5c8dd1 = _67282af25befe9778e5c8dd1._4f0abf31624ad8d39f1e1bfd(param1);
         if(_loc5_ != null)
         {
            _loc3_ = _loc5_.mediumImageFilenameTemplate;
            if(_loc3_ != null)
            {
               _loc3_ = _loc3_.split(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႡဍၸဵშჺႼၥဌჴႭ်ညဩ၍ჸ","။ဖၺჶူი၆ჽႆဟဉၹႶჃႨၳ")).join(param2);
               _loc4_ = _loc3_;
            }
         }
         return _loc4_;
      }
      
      public static function _e7b1d6c337d38ad01dfdd310(param1:String, param2:int) : String
      {
         var _loc3_:String = null;
         var _loc4_:_67282af25befe9778e5c8dd1 = _67282af25befe9778e5c8dd1._4f0abf31624ad8d39f1e1bfd(param1);
         if(_loc4_ != null)
         {
            _loc3_ = _loc4_.iconFilenameTemplate;
            if(_loc3_ != null)
            {
               return _loc3_.split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剭劳割刀劮勭劵剄勁刽刼勦力劶剬刯","剩剒剈剡刮勍刃剠刈刀勯剢制勳動劳")).join(param2);
            }
         }
         return null;
      }
      
      public static function _91ebc674b1c847663ee04172(param1:String) : String
      {
         if(param1 == null)
         {
            param1 = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("提挶掃掴插接捝揉挝掙揥捐","措捾挼掵捐措挖揄挂掰揇捴控掴挱揣");
         }
         return Config.SERVER + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揘持掘挢换捛插挋掼掯推捻掋挾挖揔挍掦捃握掌捼挴掳挆揈掝挓掋揯挭捨揻掠挿揈捃捍揿揗挣挮挀捁揼挳掏捁捶挮","挣揶挎揷掌挭措挒捍掫挴挱揄掻捔捑") + param1.toLowerCase() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჰၹეკჴဲၤဈჍႳယၼႚჇၾ႞","ၓၾႽიჹჩထცခၳၳႾညဝြၱ");
      }
      
      public static function _97987dfee7211061a40bea76(param1:String) : String
      {
         return Config.SERVER + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挭挑捎揊掁採揕揳掕揂挖掊掏掻捲揙揰掵捾挢捫捴捫揍挚揢捒挿","揼捝揨损揶掼捾挴揁挽捇捲掂掺捜挢") + param1.toUpperCase() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ოၔ႗Ⴠ၀ၳჾၗဘၗ၊ၑဋႂဈၵ","ჃႬႶႱჵგ၀႗ცჟ၇Ⴐႁၰၔჷ");
      }
      
      public static function _b92861b7f152eb67f031e3a0(param1:int) : String
      {
         return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劘勑劐刬勐勔刣劥剿剌刲劄劝勒勥刈功勩刯刋剓劒勦剐勸劀剃勄刵办劎勴分劝剄勷剙劙刂剥劽勛刵勗剴列","别劸剔剙勖剧剓劒动劓勋劽劥剹刋剖") + param1.toString() + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刚創劧刨刂勶勷劸刮勗勛刌剮劾剃劎","刿劖剜剥勏划剾劥剺剂副刿剛別勒制");
      }
      
      public static function _ccd1149a2314a10a099d633e(param1:String) : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揥持採掣捤换捐挎揹挥揵挷捛挏揭捉授振揺捔振挻挳揑","揲掃揂揳捒掱掹掏揙挜挮揃掫捿掔揭") + param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჌ჼ၄ျ႕Ⴗဌဒဨဣ႘კၜႇჳ჆","၊ၭ႔კညႳၺႯ့ႾဠჽၻბႷၾ");
      }
      
      public static function _0615c43b3c2382dfeb7de7cc(param1:String) : String
      {
         return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႼႷ႘ვဍჭႚდဏၼၧခ၇ႲႭၱ႒ၨဌჁအ႕ჲნႣဲოႅႮჯრီჍႬ჎ფფႴღႌၸၸႿ႓","ၪဓ႔ၖၸိჹဖჅဈထფႷၵ၄Ⴇ") + param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၴუჶဥေေႮჂმჟႵႾၗ჋ထဌ","ჅႽဋဉၵႀჶေခჼႰၹႅဧဩფ");
      }
      
      public static function _066ccd69f10566f4f4917db5(param1:int) : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掊掚持揼挠挆挬挲掣採捱捘掷揢捠挩掚捣挿捥捐排揱揁掫据掉握捺握掄掭揔揅揎揿挧捭挌振掏捵挻挠捊挠揊揬掹挶挪挦捭援捣掲掆挌","揔捇捡换揔捯揮掘捰掔捁捻掋掘捥援") + param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴈ႐ျჼႽგჵၑჄჼဈ႖ჩႄဇ႞","ာთႴნဠრၸႬၹမႈႂ႕ႀဿဆ");
      }
      
      public function _6e36eb040d442dcb53edce6b(param1:String) : Bitmap
      {
         return _08c18c947d384aa7d43d7964(_c28db4f07d43f2dc8f1ec5b4(param1));
      }
      
      public function _7bcdb2b6cb3748ef1afd788c(param1:String) : _6361b2c3a5d7e31e21223d27
      {
         return _e7ce7b9b2628cc4b263f2d04(_c28db4f07d43f2dc8f1ec5b4(param1));
      }
      
      public function _9054970c48220676cfefa6d7(param1:String) : _a4e47350c89a50d87a148c28
      {
         return _aa5b089a4b49e59ddb184361(_c28db4f07d43f2dc8f1ec5b4(param1));
      }
      
      public function _3b69cfaed42e96be82cd5ffc(param1:String) : _759432fb62268c6ba2923d88
      {
         return _a2b92b8d62050cf0233bb624(_c28db4f07d43f2dc8f1ec5b4(param1));
      }
      
      public function _d422dc4c68fb6bfefd7a5121(param1:Bitmap, param2:String) : Bitmap
      {
         return replaceBitmapDataFromURL(param1,param2);
      }
      
      public function _234a9e759f26b2d1b12e70b1(param1:String) : BitmapData
      {
         return _c30a64381e6c9120309eac4b(_c28db4f07d43f2dc8f1ec5b4(param1));
      }
      
      override public function _9e29dc7dbad77786ef84201a(param1:Function, param2:String, param3:*) : void
      {
         var _loc4_:String = _c28db4f07d43f2dc8f1ec5b4(param2);
         super._9e29dc7dbad77786ef84201a(param1,_loc4_,param3);
      }
      
      public function _cf3c988256c040ac6e4263cf(param1:String) : Boolean
      {
         return _0f101b3e7ff226b9a0880c82(_c28db4f07d43f2dc8f1ec5b4(param1));
      }
   }
}

