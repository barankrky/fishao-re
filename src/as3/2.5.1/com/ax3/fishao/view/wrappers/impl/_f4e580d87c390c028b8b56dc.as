package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.impl._036b16e06d1d1ecfc4de9140;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils._510d9148470a678356a77991;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class _f4e580d87c390c028b8b56dc extends _b6f0647405eb88632e77293d implements IAssetWrapper
   {
      
      private var _f8589886045df92fa9f4b435:Sprite;
      
      public function _f4e580d87c390c028b8b56dc()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._f8589886045df92fa9f4b435 = (_child as DisplayObjectContainer).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("切刂刜勝勨剓勒劸制刵劯劋刘刮刏办剰劽","剹剫勨勾刅刦劰剑劔剖前劢刉劋剓剔")) as Sprite;
      }
      
      public function init() : void
      {
         _83bd24c6aa7145786cd32778.itemClass = this.itemClass;
         _c5d5235acc70f20f98ab98c9(new _036b16e06d1d1ecfc4de9140(Class(_a9183ad11c0a32494c998b46)));
      }
      
      public function get itemClass() : Class
      {
         return Object(_child[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捋据挍挿挢掆指援揓挑挖掟接捙揼掎捫揅挅揍掕损捸捹提捓","捾揂揢捋捧揑掫挊掇捞揦换捖掌揘掫")][_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刹刕勈刅勞务刓刃劔剀剐劘劌剭剷劓","効剆剏刨勺刍勼助劄剳刦勵劝劏勮剿")]).constructor;
      }
      
      public function set flag(param1:String) : void
      {
         _510d9148470a678356a77991._dfc01609cda83a1c4e0a9ae9(param1,this._f8589886045df92fa9f4b435,app.resourceManager,_c2ad9d37d7be0097d6d2e977.LANG_FLAG_BITMAP_WIDTH,_c2ad9d37d7be0097d6d2e977.LANG_FLAG_BITMAP_HEIGHT,_c2ad9d37d7be0097d6d2e977.LANG_FLAG_CONTAINER_WIDTH,_c2ad9d37d7be0097d6d2e977.LANG_FLAG_CONTAINER_HEIGHT);
      }
      
      public function clear() : void
      {
         var _loc1_:int = 0x1ED709D9 ^ -631448280 ^ -111214779 ^ 0x3DD52BB4;
         var _loc2_:int = 0x7FAB9AC7 ^ 0x6243C18B ^ -2117815573 ^ 0x046D9330;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5ACD8672 ^ 0x480634B5 ^ -429923945 ^ 0x6CD529C7))
            {
               case 0:
                  _loc1_ = 0x78135DAE ^ -700257448 ^ -1438426519 ^ 0x0412EC9F;
                  _loc2_ = 0x3ACC0A14 ^ 0x70345CBC ^ -529242636 ^ 0x32CD49CA;
                  break;
               case 1:
                  if(_loc1_ >= this._f8589886045df92fa9f4b435.numChildren)
                  {
                     _loc2_ = -418299857 ^ 0x04B8EE66 ^ -1419834268 ^ -793257799;
                  }
                  else
                  {
                     _loc2_ = -561981039 ^ 0x1C05A996 ^ 0x798B0197 ^ 0x234F0B05;
                  }
                  break;
               case 2:
                  this._f8589886045df92fa9f4b435.removeChildAt(_loc1_);
                  _loc1_++;
                  _loc2_ = -378489479 ^ 0x6AF18A14 ^ -614854504 ^ -1063627421;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

