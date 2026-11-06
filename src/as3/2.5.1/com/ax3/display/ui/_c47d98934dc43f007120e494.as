package com.ax3.display.ui
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.tfs._bb16db8e79db6c61890c313e;
   import com.ax3.text._d558598039de84ad6ceee8db;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.GradientType;
   import flash.display.SpreadMethod;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class _c47d98934dc43f007120e494
   {
      
      private static const _53b1a563dbc3fe478c5296f6:int = 0x4281F38F ^ 0x20532E91 ^ -792479554 ^ -1307482715;
      
      public function _c47d98934dc43f007120e494()
      {
         super();
      }
      
      public static function _69e3ba2b7ebdbb58d0b26c75(param1:String, param2:Array, param3:Object = null, param4:int = 0, param5:int = 0) : TextField
      {
         var _loc6_:TextField = null;
         _loc6_ = new TextField();
         _loc6_.x = param4;
         _loc6_.y = param5;
         _loc6_.text = param1;
         _bb16db8e79db6c61890c313e._e6de6d06892c6eda16267d9c(_loc6_,param2);
         _loc6_.x = param4;
         _loc6_.y = param5;
         if(param3 != null)
         {
            param3.addChild(_loc6_);
         }
         return _loc6_;
      }
      
      public static function _df5d20686d147c0ceed22305(param1:String, param2:Array, param3:Object = null, param4:int = 0, param5:int = 0, param6:Boolean = true) : _d558598039de84ad6ceee8db
      {
         var _loc7_:_d558598039de84ad6ceee8db = null;
         _loc7_ = new _d558598039de84ad6ceee8db(param6);
         _loc7_.x = param4;
         _loc7_.y = param5;
         _loc7_.text = param1;
         _bb16db8e79db6c61890c313e._e6de6d06892c6eda16267d9c(_loc7_,param2);
         if(param3 != null)
         {
            param3.addChild(_loc7_);
         }
         return _loc7_;
      }
      
      public static function _11873088d7988176cb7d4afd(param1:String, param2:int, param3:int, param4:Object, param5:Object = null, param6:Boolean = true, param7:Object = null) : TextField
      {
         var _loc8_:* = undefined;
         var _loc9_:TextFormat = null;
         var _loc10_:Object = null;
         if(!param5)
         {
            param5 = new Object();
         }
         var _loc11_:TextField = new TextField();
         _loc11_.x = param2;
         _loc11_.y = param3;
         if(param4 is TextFormat)
         {
            _loc11_.defaultTextFormat = param4 as TextFormat;
         }
         else
         {
            _loc9_ = new TextFormat(param4.font);
            for(_loc8_ in param4)
            {
               if(_loc9_.hasOwnProperty(_loc8_))
               {
                  _loc9_[_loc8_] = param4[_loc8_];
               }
            }
            if(param4.fauxbold)
            {
               _loc11_.filters = [new GlowFilter(param4.color,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刢划剸剾制勹劅劢剼剔勭刢刼劸勬刞勷剢刽勤勾剎刳剺","務剸勑刕勐刏刣刴劦划勀剛剔勯剕勚"),_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捫掤揙揹挗捼捯捦挜掃捖揨捀捚捔揻捖挲揜挊捪揔捞掷","挑掑挄揽掲揲挒揟揟揕挑挆挅捗掊掠"),_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("接捫挕捥掆揄挼挹揮捏掍捓挲捵掙挜掿掲捪捲捎掘挍挞","控捛捏捕挕掙捬掑掜挑挲据挛挄挣掰"),-52350425 ^ -1100874396 ^ -402430081 ^ -1434212290)];
            }
            _loc11_.defaultTextFormat = _loc9_;
         }
         _loc11_.text = param1;
         if(param6)
         {
            _loc10_ = {
               (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勍勥勿労勑剻劮剝删办剄剉勎剥劤剢勞勿初勷刾剩刦劀剢删劬劵","労募勑勼劧剴劣勪剔劅劮切刲剺刡刁")):false,
               (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揦掄挆捙掶挎捫掶揄描揾捌捩揕捻捝描掃揠揝揳掙掎揓掭揟握掉挾据捚捊","掿捄揓挗捫揷捠揯揬揶挙捴掅挆捙揗")):false
            };
            if(!param5.autoSize)
            {
               param5.autoSize = TextFieldAutoSize.NONE;
            }
            for(_loc8_ in _loc10_)
            {
               if(_loc11_.hasOwnProperty(_loc8_))
               {
                  _loc11_[_loc8_] = _loc10_[_loc8_];
               }
            }
         }
         for(_loc8_ in param5)
         {
            if(_loc11_.hasOwnProperty(_loc8_))
            {
               _loc11_[_loc8_] = param5[_loc8_];
            }
         }
         _loc11_.height = _loc11_.textHeight + (-974919913 ^ 0x401E1DA1 ^ 0x2FEB67C0 ^ -1441358477);
         _loc11_.x = param2;
         if(param7)
         {
            param7.addChild(_loc11_);
         }
         return _loc11_;
      }
      
      public static function _934b08e5efd28928fb81e379(param1:TextField, param2:Array) : Sprite
      {
         param1.cacheAsBitmap = true;
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Rectangle = _ad3587635b57f4230b2e8ea5(param1);
         _465dc8e9d7cd144a78baec4a(param1);
         _loc4_.x += param1.x;
         _loc4_.y += param1.y;
         var _loc5_:Sprite = _3a5617737c3015b4605f321d(_loc4_.width + _53b1a563dbc3fe478c5296f6 * (0x0B15648A ^ 0x12DB8E6C ^ -1850721399 ^ -2004954771),_loc4_.height + _53b1a563dbc3fe478c5296f6 * (-1599289059 ^ 0x67A1C707 ^ -220413674 ^ 0x35D1CF0E),param2);
         _loc5_.x = _loc4_.x - _53b1a563dbc3fe478c5296f6;
         _loc5_.y = _loc4_.y - _53b1a563dbc3fe478c5296f6;
         _loc5_.cacheAsBitmap = true;
         _loc3_.addChild(_loc5_);
         _loc3_.addChild(param1);
         _loc5_.mask = param1;
         return _loc3_;
      }
      
      private static function _465dc8e9d7cd144a78baec4a(param1:TextField) : Bitmap
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,true);
         _loc2_.draw(param1);
         return new Bitmap(_loc2_);
      }
      
      private static function _3a5617737c3015b4605f321d(param1:int, param2:int, param3:Array) : Sprite
      {
         var _loc4_:Sprite = new Sprite();
         _loc4_.x = -param1 / (-358427470 ^ -2014526144 ^ 0x712EBAA8 ^ 0x1C60AB58);
         _loc4_.y = -param2 / (0x39853363 ^ -810903386 ^ -1247850474 ^ 0x43B0FBD1);
         var _loc5_:String = GradientType.LINEAR;
         var _temp_1:* = -1138396085 ^ 0x0571DDC1 ^ 0x1A7BDA6B ^ -1557171232;
         var _loc6_:Array = [_temp_1,_temp_1];
         var _loc7_:Array = [0x546A1EEA ^ 0x01A2AAC7 ^ 0x576CA52D ^ 0x02A41100,0x6D10D6FC ^ 0x22175F4B ^ 0x382E47CB ^ 0x7729CE83];
         var _loc8_:Matrix = new Matrix();
         _loc8_.createGradientBox(param1 * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ပဪოၴუ၁Ⴥ၌၅ဤှჅုბဌၮ၃ძაჅ၅ნႉႣ","ჀၷဲႈႠဖჃညႿႬ჎၍ၵ။ၶლ"),param2 * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勜勺勞刹勭劭刴初剝剧剴刅刢劉刔刈剏勓劌划刓勨剈勵","勖务功勶勩労勫勦勓劽刜劯劣勋勹删"),-Math.PI / (-1845051847 ^ -28535634 ^ -425024461 ^ -1964994906),param1 * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掚挎揶捫掽控挟揕揽揸挜捵捪掉捦掹挠推掽掅捳捽捠掕","掜捭掞措揇挖揊掜揚掁捂掞挷揞揖挎"),param2 * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ံლဍ၀ံႷႾႰႿျႠსჹဓ჏ဨႂသႸ့ყမမჩ","Ⴘဏထთဈဩჶ၊ဃၘ႘႒ၸთ၈ႃ"));
         var _loc9_:String = SpreadMethod.PAD;
         _loc4_.graphics.beginGradientFill(_loc5_,param3,_loc6_,_loc7_,_loc8_,_loc9_);
         var _temp_3:* = _loc4_.graphics;
         var _temp_2:* = 0x794D7FF5 ^ 0x0DC037FA ^ -1552815318 ^ -671309019;
         _temp_3.drawRect(_temp_2,_temp_2,param1,param2);
         return _loc4_;
      }
      
      public static function _ad3587635b57f4230b2e8ea5(param1:DisplayObject) : Rectangle
      {
         var _loc2_:BitmapData = _3edcf34dd160795088e9c07b(param1);
         var _loc3_:Rectangle = _loc2_.getColorBoundsRect(_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剞劷剅勑勒勓勝刽剡删勃刅剥剸刖劮劄刨刳劃剮劍刻劶","劏刑劅劜剴勰剋勓勾剫剮刣别勩刌刍"),-747989431 ^ 0x3625BCE2 ^ -1252223685 ^ 0x5013BF90,false);
         _loc2_.dispose();
         return _loc3_;
      }
      
      private static function _3edcf34dd160795088e9c07b(param1:DisplayObject) : BitmapData
      {
         var _loc2_:Matrix = new Matrix();
         _loc2_.tx = -param1.getBounds(null).x;
         _loc2_.ty = -param1.getBounds(null).y;
         var _loc3_:BitmapData = new BitmapData(param1.width,param1.height,true,-978543899 ^ 0x461E2C2E ^ 0x2090031E ^ -1558006315);
         _loc3_.draw(param1,_loc2_);
         return _loc3_;
      }
      
      public static function _dfd6b83158cb868462f4a4c4(param1:int, param2:int, param3:int, param4:Number, param5:Number) : Number
      {
         var _loc6_:int = param3 - param2;
         var _loc7_:Number = (_loc6_ - (param1 - param2)) / _loc6_;
         _loc7_ = Math.max(Math.min(0x232E1745 ^ -1827307737 ^ -887568742 ^ 0x7B23AEF9,_loc7_),-1443101783 ^ 0x1F758786 ^ 0x14FBCAB5 ^ -1569567078);
         return param4 + (param5 - param4) * _loc7_;
      }
      
      public static function _f66a95369223c89889c193a5(param1:TextField, param2:String) : void
      {
         param1.autoSize = param2;
         var _loc3_:TextFormat = param1.defaultTextFormat;
         _loc3_.underline = true;
         param1.defaultTextFormat = _loc3_;
      }
   }
}

