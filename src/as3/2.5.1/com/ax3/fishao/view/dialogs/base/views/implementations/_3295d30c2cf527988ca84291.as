package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.display._b61f883bdc804cf4115fe314;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   
   public class _3295d30c2cf527988ca84291 extends _04cce4e240ff9bea66c1b7f7
   {
      
      protected var _isEnabled:Boolean;
      
      private var _cbc86c5736be9dccbbdda276:DisplayObjectContainer;
      
      public function _3295d30c2cf527988ca84291(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._cbc86c5736be9dccbbdda276 = param2;
         super(param1,this._cbc86c5736be9dccbbdda276);
         this.init();
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         if(this._isEnabled == param1)
         {
            return;
         }
         this._isEnabled = param1;
         this._cbc86c5736be9dccbbdda276.filters = param1 ? _b61f883bdc804cf4115fe314.NORMAL_FILTERS : _b61f883bdc804cf4115fe314.DISABLE_FILTERS;
      }
      
      override protected function onMouseClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x293353B9 ^ 0x5FA0DE8B ^ -441767041 ^ -2078446837;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x7B580F02 ^ 0x6222072F ^ -2094172272 ^ -1921862919))
            {
               case 0:
                  this._3f9bafe0e6f5429d56eb11c1();
                  super.onMouseClick(param1);
                  return;
               case 1:
                  return;
               case 2:
                  if(!this._isEnabled)
                  {
                     _loc2_ = 0x247B2B00 ^ -773097511 ^ -1340115467 ^ 0x52AAE469;
                  }
                  else
                  {
                     _loc2_ = 0x670F5C71 ^ 0x393369E9 ^ 0x1359246F ^ 0x5A40DCB3;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._cbc86c5736be9dccbbdda276[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၕၳၷჍဓႢ၄ჶၺဥဩ႒၄Ⴥჟၚဓ၏ၯ჻ိဇႢဆႴა၃ႂ","ႌႶჸჺႪနဍჲს႑ၴႦပჾ႒င")] = true;
         this._cbc86c5736be9dccbbdda276.mouseChildren = false;
         this.isEnabled = true;
         _fc17178734ae7cc816dbcc2f(true,false,false,false,false,true,true);
      }
      
      protected function _3f9bafe0e6f5429d56eb11c1() : void
      {
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._cbc86c5736be9dccbbdda276 = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

