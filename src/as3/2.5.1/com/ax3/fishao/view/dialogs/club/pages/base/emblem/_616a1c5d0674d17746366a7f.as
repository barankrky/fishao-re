package com.ax3.fishao.view.dialogs.club.pages.base.emblem
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.utils.Dictionary;
   
   public class _616a1c5d0674d17746366a7f extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _03ed31a6f8741394f0595c96:Dictionary;
      
      public function _616a1c5d0674d17746366a7f(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set imageURL(param1:String) : void
      {
         var _loc2_:int = 0x4ADE2A09 ^ -1248511622 ^ -1200739555 ^ -1625343117;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-613251291 ^ -1852951730 ^ 0x118ACED9 ^ -2092140115))
            {
               case 0:
                  this._03ed31a6f8741394f0595c96[param1] = _3b0c83955f875982aead2f14._cb9c41bc51cbdb8484760a4e(param1,source);
                  _loc2_ = 0x4ECD02B7 ^ 0x51D5A293 ^ -1296422175 ^ 0x759889DB;
                  break;
               case 1:
                  this._cb0c63529955eedc132816c2(param1);
                  return;
               case 2:
                  if(!(param1 in this._03ed31a6f8741394f0595c96))
                  {
                     _loc2_ = -1720001851 ^ 0x67DC3CA9 ^ -687493018 ^ -241609451;
                  }
                  else
                  {
                     _loc2_ = -950412456 ^ 0x4FE168DF ^ -713395604 ^ -2047294731;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set filters(param1:Array) : void
      {
         var _loc2_:String = null;
         var _loc3_:DisplayObject = null;
         for(_loc2_ in this._03ed31a6f8741394f0595c96)
         {
            _loc3_ = this._03ed31a6f8741394f0595c96[_loc2_];
            _loc3_.filters = param1;
         }
      }
      
      private function init() : void
      {
         this._03ed31a6f8741394f0595c96 = new Dictionary(true);
         this.source.alpha = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჾဲဤცႶဧჇႽဲသ႟ႆၲၚဉჲဂჅႍၚႢၽႂၲ","ဤႤထჶ჉ဝჟ့ჇၣქႮ္႕ၮန");
      }
      
      private function _cb0c63529955eedc132816c2(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:DisplayObject = null;
         for(_loc2_ in this._03ed31a6f8741394f0595c96)
         {
            _loc3_ = this._03ed31a6f8741394f0595c96[_loc2_];
            _loc3_.visible = _loc2_ == param1;
         }
      }
   }
}

