package com.ax3.fishao.view.dialogs.club.pages.management.item
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers._67a7ec125a01811d64af4dcc;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.club.model._ece4f37c607dd0c90d333eca;
   import com.ax3.fishao.view.wrappers.impl._b6f0647405eb88632e77293d;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class _040218377c365e46d06a257c extends _b6f0647405eb88632e77293d
   {
      
      private var _d8827dd5c2a7ffee6df3fc1a:MovieClip;
      
      private var _86222dd486388f206e31b6a9:_73899a4de8f83c8d2c26f545;
      
      public function _040218377c365e46d06a257c()
      {
         super();
      }
      
      override public function _c5d5235acc70f20f98ab98c9(param1:_67a7ec125a01811d64af4dcc) : void
      {
         super._c5d5235acc70f20f98ab98c9(param1);
         param1.process(_child[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("効剩勵劔勒劅劖剞劃動刀劄劽剮勇劇労劎劊剐剧劝刣勨勬剒","剃刵刔劸劶剘加勤劍剹募前勾办勢勥")][_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၳဴ႔ႃႜიძ႔ၕჿ႔ံ၉ღစ၈","ႚၞ႘Ⴃအႊပ၇ჰၾအၜေმႧႦ")]);
      }
      
      override public function set text(param1:String) : void
      {
         this._86222dd486388f206e31b6a9.text = param1;
      }
      
      public function set iconName(param1:String) : void
      {
         var _loc2_:int = 0x2D380F08 ^ 0xA9AC8B ^ 0x68C06C78 ^ -1663125578;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x3E73DAAC ^ -1139573995 ^ -875957979 ^ -1876547373))
            {
               case 0:
                  this._d8827dd5c2a7ffee6df3fc1a.gotoAndStop(param1);
                  _loc2_ = -1907615641 ^ 0x78CF2ABA ^ 0x4DBA3F6D ^ 0x62B675FE;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._d8827dd5c2a7ffee6df3fc1a != null)
                  {
                     _loc2_ = -120930633 ^ 0x30F91AB7 ^ 0x7FF6CA73 ^ 0x6E4A163C;
                  }
                  else
                  {
                     _loc2_ = -1612965896 ^ -442179700 ^ 0x74BE6ED5 ^ -683024657;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get selectedType() : String
      {
         var _loc1_:_d785bc68c4c97e61dc7e51fc = null;
         var _loc2_:String = null;
         var _loc3_:Array = this.items;
         if(_loc3_ != null && this.selectedItemIndex < _loc3_.length && this.selectedItemIndex >= (0x06B9C4A4 ^ -1785264912 ^ -1087010442 ^ 0x2C1B4922))
         {
            _loc1_ = _loc3_[this.selectedItemIndex];
            _loc2_ = _loc1_.type;
         }
         return _loc2_;
      }
      
      public function set selectedType(param1:String) : void
      {
         this.iconName = _ece4f37c607dd0c90d333eca._ea79d0046941b11b32f2961c(param1);
         this.text = _c2ad9d37d7be0097d6d2e977.get(param1);
      }
      
      override protected function onItemClickHandler(param1:MouseEvent) : void
      {
         super.onItemClickHandler(param1);
         var _loc2_:_d785bc68c4c97e61dc7e51fc = param1.currentTarget as _d785bc68c4c97e61dc7e51fc;
         this.iconName = _ece4f37c607dd0c90d333eca._ea79d0046941b11b32f2961c(_loc2_.type);
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._d8827dd5c2a7ffee6df3fc1a = (_child as DisplayObjectContainer).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刺刕刳剌劰勂劏助剠剱勣勸刊刕刚劦","刾勭剦刚剪勏劙劌劵刢勥勐勋刅勴劅")) as MovieClip;
         this._86222dd486388f206e31b6a9 = new _73899a4de8f83c8d2c26f545(_label);
      }
   }
}

