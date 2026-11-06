package com.ax3.fishao.utils
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class _d05691e68e00eacb6c602986
   {
      
      public function _d05691e68e00eacb6c602986()
      {
         super();
      }
      
      public static function merge(param1:BitmapData, param2:BitmapData, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:int = 0x081D0873 ^ 0x70B934BB ^ -84782882 ^ -2108265450;
         var _loc6_:uint = uint(-324600154 ^ -77812828 ^ 0x56511B6E ^ 0x41AB4E6C);
         var _loc7_:int = 0x41CA3235 ^ 0x0500932F ^ -2026427651 ^ -1006793753;
         var _loc8_:uint = uint(-586038134 ^ 0x3DBC9DFD ^ 0x5E53E385 ^ -1090602254);
         var _loc9_:uint = uint(0x4E468A7B ^ -343470892 ^ 0x67A9EA50 ^ -1033343745);
         param1.unlock();
         var _loc10_:int = 0x1077D4ED ^ -541544789 ^ -1282765883 ^ 0x7C45F183;
         while(_loc10_ < param2.width)
         {
            _loc5_ = -1186977012 ^ -943348613 ^ 0x7C12CBC3 ^ 0x029744B4;
            while(_loc5_ < param2.height)
            {
               _loc6_ = param2.getPixel32(_loc10_,_loc5_);
               _loc7_ = _loc6_ >> (0x1BD6E4DC ^ 0x40D8336B ^ 0x36F5AD03 ^ 0x6DFB7AAC) & (0x072DDF79 ^ 0x559CF1CF ^ -588476123 ^ -1906458772);
               _loc8_ = param1.getPixel32(param3 + _loc10_,param4 + _loc5_);
               _loc9_ = uint(_loc8_ >> (-807002207 ^ 0x0D8FE374 ^ -2104207476 ^ 0x40FDAB41) & (0x58273282 ^ -1971705162 ^ 0x09DFA560 ^ -612188757));
               if(_loc7_ != (-664394129 ^ -235668708 ^ 0x46E3F5E8 ^ 0x6F76289B) && _loc9_ == (-1304638053 ^ -1319021880 ^ 0x0435B40B ^ 0x07682B58))
               {
                  param1.setPixel32(param3 + _loc10_,param4 + _loc5_,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("努剀勉刂刮刨劬勜勚剐劃勾勽剐劝勶刺刵勩勻刯剣剛剝","剙刁劖刪勦剭刎刊切勼勿剺勉刱务劒"));
               }
               _loc5_++;
            }
            _loc10_++;
         }
      }
      
      public static function _00f63d3b0895f2a8039d6ae9(param1:Bitmap) : Sprite
      {
         var _loc2_:int = 0x64FEDE8F ^ -814247633 ^ -1645667498 ^ 0x366054F6;
         var _loc3_:uint = uint(0x47E5EB9B ^ -1829437751 ^ 0x38A24D03 ^ -307013551);
         var _loc4_:int = 0x1CE05E80 ^ -950425294 ^ 0x4D8D6EF1 ^ -1774937789;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:Number = param1.width;
         var _loc7_:Number = param1.height;
         var _loc8_:BitmapData = param1.bitmapData;
         var _loc9_:int = 0x51FF621F ^ -1265724857 ^ 0x25D19348 ^ -1063230704;
         while(_loc9_ < _loc6_)
         {
            _loc2_ = -829329846 ^ -1058343526 ^ 0x38896AA5 ^ 0x36F2F175;
            while(_loc2_ < _loc7_)
            {
               _loc3_ = _loc8_.getPixel32(_loc9_,_loc2_);
               _loc4_ = _loc3_ >>> (0x6F349F42 ^ -310050157 ^ 0x2ECADB2A ^ -1401207069);
               if(_loc4_ != (-1699194236 ^ 0x5D652BC5 ^ 0x3892570D ^ -11590068))
               {
                  _loc5_.graphics.beginFill(_loc3_ & (0x7619965C ^ 0x106423EC ^ -1033309799 ^ -1528120362),_loc4_ / (-741093342 ^ 0x3FEBF415 ^ 0x1A15916C ^ -164776540));
                  var _temp_4:* = _loc5_.graphics;
                  var _temp_3:* = _loc9_;
                  var _temp_2:* = _loc2_;
                  var _temp_1:* = -112717466 ^ 0x19C5F85F ^ 0x156E72B8 ^ -169632896;
                  _temp_4.drawRect(_temp_3,_temp_2,_temp_1,_temp_1);
                  _loc5_.graphics.endFill();
               }
               _loc2_++;
            }
            _loc9_++;
         }
         return _loc5_;
      }
   }
}

