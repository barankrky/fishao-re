package com.ax3.fishao.view.dialogs.rankings.views
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers._67a7ec125a01811d64af4dcc;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.wrappers.impl.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class _e38eb0227ef7c4e4f6f2dd2f extends _b6f0647405eb88632e77293d
   {
      
      private var _ffa0c21d179a865e2bada77f:MovieClip;
      
      private var _499489998c3f3e46d0903693:_73899a4de8f83c8d2c26f545;
      
      public function _e38eb0227ef7c4e4f6f2dd2f()
      {
         super();
      }
      
      override public function _c5d5235acc70f20f98ab98c9(param1:_67a7ec125a01811d64af4dcc) : void
      {
         super._c5d5235acc70f20f98ab98c9(param1);
         param1.process(_child[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႈၹစၗႲႃၳ჋ဘ႗႑သყხနၓცၔგး၆ტဘႅლမ","ႹჼဏႢႝၞႷႂဣ჆ႏჵၾႢႽႢ")][_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劳剖剰刵刺剘勊到募勽劚勳剧勖切勀","刑剏切办剭勖刭勓刑刴劼劤刴刚助削")]);
      }
      
      override public function set text(param1:String) : void
      {
         this._499489998c3f3e46d0903693.text = param1;
      }
      
      public function set iconIndex(param1:int) : void
      {
         var _loc2_:int = 0x0F62FDF9 ^ -491303723 ^ 0x1EB7A44A ^ -1018093585;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1820081450 ^ 0x4DD774DD ^ -753497717 ^ 0x3D713509))
            {
               case 0:
                  if(this._ffa0c21d179a865e2bada77f != null)
                  {
                     _loc2_ = -2014233884 ^ -1511134721 ^ -1506654507 ^ -1273127099;
                  }
                  else
                  {
                     _loc2_ = -991607175 ^ -2121676226 ^ -292289395 ^ -1681161662;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._ffa0c21d179a865e2bada77f.gotoAndStop(param1);
                  _loc2_ = 0x6702E941 ^ 0x297B9992 ^ 0x3FDB153C ^ 0x41916F67;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function onItemClickHandler(param1:MouseEvent) : void
      {
         super.onItemClickHandler(param1);
         var _loc2_:_9eacfd4ff26a9d83bb66df5f = param1.currentTarget as _9eacfd4ff26a9d83bb66df5f;
         this.iconIndex = _loc2_.index + (0x7A44CCCF ^ 0x6DB0806F ^ 0x67FB9F25 ^ 0x700FD384);
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._ffa0c21d179a865e2bada77f = (_child as DisplayObjectContainer).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勘剌劜劳勜勯勦剋劗勖勰勔助勘勪刌","剢剨刑創剷勩刖刽剪劏刮刁刉剭剿刺")) as MovieClip;
         this._499489998c3f3e46d0903693 = new _73899a4de8f83c8d2c26f545(_label);
      }
   }
}

