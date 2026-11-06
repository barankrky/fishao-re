package com.ax3.fishao.view.wrappers.impl
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils._510d9148470a678356a77991;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class _a9183ad11c0a32494c998b46 extends _83bd24c6aa7145786cd32778
   {
      
      private var _62fc0d7d6d5deb4a657d9508:Sprite;
      
      public function _a9183ad11c0a32494c998b46()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._62fc0d7d6d5deb4a657d9508 = (_asset as DisplayObjectContainer).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴣ၈ლ჏ၸႯဲၒ၅ၐჴႮအၼႹၾ၈၌","ღფძ႗ၼჱთၷႋႌၖၦဨာႳი")) as Sprite;
      }
      
      public function set flag(param1:String) : void
      {
         _510d9148470a678356a77991._dfc01609cda83a1c4e0a9ae9(param1,this._62fc0d7d6d5deb4a657d9508,app.resourceManager,_c2ad9d37d7be0097d6d2e977.LANG_FLAG_BITMAP_WIDTH,_c2ad9d37d7be0097d6d2e977.LANG_FLAG_BITMAP_HEIGHT,_c2ad9d37d7be0097d6d2e977.LANG_FLAG_CONTAINER_WIDTH,_c2ad9d37d7be0097d6d2e977.LANG_FLAG_CONTAINER_HEIGHT);
      }
      
      public function clear() : void
      {
         var _loc1_:int = 0x7A313B50 ^ 0x462CF49A ^ -1133422165 ^ -2140367263;
         var _loc2_:int = 0x2D12C480 ^ -1409479424 ^ 0x2A4259DC ^ 0x0AD44629;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1868491984 ^ -251670535 ^ 0x2D7BA0C8 ^ -346248588))
            {
               case 0:
                  _loc1_ = -888180033 ^ -1574947193 ^ -1287152937 ^ -630661393;
                  _loc2_ = 0x6851D6A6 ^ -294636294 ^ -360738273 ^ -903371212;
                  break;
               case 1:
                  this._62fc0d7d6d5deb4a657d9508.removeChildAt(_loc1_);
                  _loc1_++;
                  _loc2_ = -1689145438 ^ 0x6B005C68 ^ 0x7AE7D24E ^ 0x2CCFF7F3;
                  break;
               case 2:
                  if(_loc1_ >= this._62fc0d7d6d5deb4a657d9508.numChildren)
                  {
                     _loc2_ = 0x3B347B06 ^ 0x26B1EAF3 ^ -1238429332 ^ 0x0DD356EF;
                  }
                  else
                  {
                     _loc2_ = 0x25F9E991 ^ -1872162365 ^ -926418475 ^ -617687053;
                  }
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

