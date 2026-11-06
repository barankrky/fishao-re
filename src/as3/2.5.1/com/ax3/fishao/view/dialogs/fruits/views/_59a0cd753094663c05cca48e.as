package com.ax3.fishao.view.dialogs.fruits.views
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _59a0cd753094663c05cca48e extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _f13ba93076664446004bfa8e:DisplayObjectContainer;
      
      private var _8a80fad6f431f5bb669064a8:MovieClip;
      
      private var _03d9d39d592a6bfcf7b44803:DisplayObjectContainer;
      
      private var _3c513204b79e724381ffc778:Point;
      
      private var _15d143c637742ea671a6787a:_04cce4e240ff9bea66c1b7f7;
      
      private var _bce2d9814c4d9a6448d4ca8d:Array;
      
      private var _1d05724891191224f56a38a6:ButtonState;
      
      protected var _buttonRemove:FishaoButtonWrapper;
      
      protected var _labelAmount:TextField;
      
      protected var _labelAmountWrapper:_73899a4de8f83c8d2c26f545;
      
      public function _59a0cd753094663c05cca48e(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._f13ba93076664446004bfa8e = param2;
         super(param1,this._f13ba93076664446004bfa8e);
         this.init();
      }
      
      public function get buttonRemove() : FishaoButtonWrapper
      {
         return this._buttonRemove;
      }
      
      public function set amount(param1:int) : void
      {
         Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劉助勵剙劉劬勁刯剟勄分剓削劜勮勥割劏劓劧剔办剀势劈剜勭勰剛勪剴刎刺努刲刓剨効剦务劳勬劯刍勪勯刞势刟剩剷劈創剡劺剻劥劌剫勧勩勠刃劚则剪勵勻刘剦剩则勼剦勓勎劁刌剜动剁創剤勯劕勠刿勳刖勆剉勬勑刀別刘勇刖勲刑勧劰剖劽勐剘劕勡勨勪勃劢募刯动劍利勇勘刣创刂刑勅剢劤勤劰初劾劑劄勀剆刉剑剅剆勛勄","刡劬勱剟剙劵劢剋刲判勩勣刋剠勤加"));
      }
      
      public function get state() : ButtonState
      {
         return this._1d05724891191224f56a38a6;
      }
      
      public function set state(param1:ButtonState) : void
      {
         var _loc2_:int = 0x57E504EB ^ 0x38906419 ^ -198077975 ^ -2034773931;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-421973032 ^ 0x71A4B141 ^ 0x54F84928 ^ -562631937))
            {
               case 0:
                  if(param1 == this._1d05724891191224f56a38a6)
                  {
                     _loc2_ = 0x3E33B15E ^ 0x2A454C09 ^ 0x034829FD ^ 0x0ACDF5E5;
                  }
                  else
                  {
                     _loc2_ = 0x2F5DF126 ^ -1222421866 ^ 0x60670A7E ^ -437614462;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._1d05724891191224f56a38a6 = param1;
                  this.updateState();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get imagePlaceholder() : DisplayObjectContainer
      {
         return this._03d9d39d592a6bfcf7b44803;
      }
      
      public function get viewTooltipHandleArea() : _04cce4e240ff9bea66c1b7f7
      {
         return this._15d143c637742ea671a6787a;
      }
      
      public function get imagePlaceholderSize() : Point
      {
         return this._3c513204b79e724381ffc778;
      }
      
      private function init() : void
      {
         this._1d05724891191224f56a38a6 = ButtonState.DEFAULT;
         this._8a80fad6f431f5bb669064a8 = Debug.assertProperty(this._f13ba93076664446004bfa8e,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刀動劌勷勸刪勞勿刪剫刭刜剙勩劼加剟勫劲助勼勖勠刀助勾労劐刍勉勗勑勉刺判剴加刀","剅判办効剨劷动勮勼则剙剈剝务刮勅"));
         this._bce2d9814c4d9a6448d4ca8d = this._8a80fad6f431f5bb669064a8.filters;
         this._8a80fad6f431f5bb669064a8.filters = [];
         this._03d9d39d592a6bfcf7b44803 = Debug.assertProperty(this._f13ba93076664446004bfa8e,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剹劅剆剸刮劸力勤劷勊剖剓劇効劜勨剧刞劾勽剫勣则刽刅刵初勆勿刎動剞創勲勊剝劇功勧剡","劢剴勐勫勎刻別勪剺剶剣刊剥刎劝刹"));
         this._3c513204b79e724381ffc778 = new Point(this._03d9d39d592a6bfcf7b44803.width,this._03d9d39d592a6bfcf7b44803.height);
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(this._f13ba93076664446004bfa8e,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剄劇剳劦刌劐刊勭劶刱刕勇刕勳刂勷分勱剬剉剺勚刋刳刊刣勬劑勛劌办勣劗初刔勿动助劎刿刋务勫刽剙刭剙刵勝剷","劒劦劂剢劓劓剿列勹劧剢劙勶劜勌勵"));
         this._15d143c637742ea671a6787a = new _04cce4e240ff9bea66c1b7f7(controller,_loc1_);
      }
      
      private function updateState() : void
      {
         if(this._1d05724891191224f56a38a6 == ButtonState.DISABLED)
         {
            return;
         }
         switch(this._1d05724891191224f56a38a6)
         {
            case ButtonState.OVER:
               §§push(0x243581CF ^ -1326922527 ^ -1097846654 ^ 0x2A4D75AC);
               break;
            case ButtonState.NORMAL:
               §§push(0x6F810698 ^ -1338239989 ^ -857702005 ^ 0x135D9319);
               break;
            default:
               §§push(0x53E7881B ^ 0x48ED420F ^ -1963924212 ^ -1845874918);
         }
         switch(§§pop())
         {
            case 0:
               this._8a80fad6f431f5bb669064a8.filters = this._bce2d9814c4d9a6448d4ca8d;
               break;
            case 1:
               this._8a80fad6f431f5bb669064a8.filters = [];
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刾刮劎劀勄勰刋务剨刲劄劓勦創勴办勂刴剾剬劭劝刅勦刧劔劫勹刼剔劮剕劚剴动剙刘劚勞剾刣剪剾劆刮剓刌劄刏勘刔办剃割功刼劙劶勚劌勷劎勌劵劸剔势刂前励劳勸勸削勣勻劀劂劧劏刹剱创勸勚剙剎勳勄刽劥剤","劰勐勺務劣剙労剁勶劸刐劚劀劼刴剎") + this._1d05724891191224f56a38a6.name);
         }
      }
   }
}

