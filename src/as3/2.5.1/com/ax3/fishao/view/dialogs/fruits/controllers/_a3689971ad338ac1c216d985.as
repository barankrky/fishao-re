package com.ax3.fishao.view.dialogs.fruits.controllers
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.info._c4d45de32d45523b37ad0cdf;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.fruits._a98277cf6d130b0c84f83078;
   import com.ax3.fishao.view.dialogs.fruits.model._273a0e8d279da2c95b553430;
   import com.ax3.fishao.view.dialogs.fruits.model._85e520cd64b9acef6dc31a91;
   import com.ax3.fishao.view.dialogs.fruits.views._ccb4e4f9c95c5b9aadd2c60e;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _a3689971ad338ac1c216d985 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _53cfbb09faaea61f69bb2bad:_ccb4e4f9c95c5b9aadd2c60e;
      
      private var _f6bbee52a609088725d59be5:Array;
      
      private var _3eaca6266d75897cf3c94c3b:_a98277cf6d130b0c84f83078;
      
      public function _a3689971ad338ac1c216d985(param1:DisplayObjectContainer)
      {
         this._53cfbb09faaea61f69bb2bad = new _ccb4e4f9c95c5b9aadd2c60e(this,param1);
         super(this._53cfbb09faaea61f69bb2bad);
         this.init();
      }
      
      private function init() : void
      {
         this._3eaca6266d75897cf3c94c3b = GameSwf.instance.managerFruits;
         this._f6bbee52a609088725d59be5 = [];
         this._1793c0912f8e933541944187();
         this._8b41566f6c7991770f348df2();
         this._ff89a222a4112fb473bab991();
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:_d7cdd43343fb4d5ffaa1ab2f = null;
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_UPDATE:
               §§push(-1373505780 ^ -524458525 ^ -1535637115 ^ -354116758);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_STARTED:
               §§push(-997540527 ^ -626697345 ^ -1608309327 ^ -1106459746);
               break;
            default:
               §§push(-1674856337 ^ 0x57815211 ^ 0x5EF91C5D ^ -1789659615);
         }
         switch(§§pop())
         {
            case 0:
               this._8b41566f6c7991770f348df2();
               break;
            case 1:
               for each(_loc2_ in this._f6bbee52a609088725d59be5)
               {
                  _loc2_.disable();
               }
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႍၰၮါႍႏთငდၹါ။ო႞ဏၿဧთრႠၝ၈ၑტၠႚ၃ဿၞႤးဪဳၘၓႨဪႺ၇ၞ႐ၼჿႽိဉ၊ႩეးპုႎႪြႇၦဖႀႆႥ჉ႉႍქၞၞဤၰ႓ჿၮ်ၑၒၗႉ၃ძ႒ქႄၼფკჍၴ႞ၕဖ჋Ⴝၪ႖ၛ႖ၧြႝ႕ၽႂქၴჽႉဖရၭ၏ဍၶႿဟၕစ၅ႉ၁ჃႪႀ္჋႟ဟြႚ၌ညၱႡႸ႒Ⴢဲ","ႢၚაႝႬဪ၂ဌამဨၰႍჀၰზ") + param1);
         }
      }
      
      private function _1793c0912f8e933541944187() : void
      {
         var _loc1_:Object = null;
         var _loc2_:_273a0e8d279da2c95b553430 = null;
         var _loc3_:_d7cdd43343fb4d5ffaa1ab2f = null;
         var _loc4_:Vector.<Object> = app.fruits.getAll();
         for each(_loc1_ in _loc4_)
         {
            _loc2_ = new _273a0e8d279da2c95b553430(_loc1_.resource_id,-1585126131 ^ 0x05D0E170 ^ 0x0C591DF4 ^ -1475536503);
            _loc3_ = new _d7cdd43343fb4d5ffaa1ab2f(_loc2_,_85e520cd64b9acef6dc31a91.EFIT_INVENTORY);
            this._f6bbee52a609088725d59be5.push(_loc3_);
         }
      }
      
      private function _8b41566f6c7991770f348df2() : void
      {
         var _loc1_:_c4d45de32d45523b37ad0cdf = null;
         for each(_loc1_ in app.user.inventory.other)
         {
            if(_loc1_.type == _67282af25befe9778e5c8dd1.FRUIT.id)
            {
               this._e3edb96d90ef6eb84a4bad19(_loc1_.id,_loc1_.quantity);
            }
         }
         this._979d9a1d02559664ce8ecaf3();
      }
      
      private function _979d9a1d02559664ce8ecaf3() : void
      {
         var _loc1_:_273a0e8d279da2c95b553430 = null;
         var _loc2_:_d7cdd43343fb4d5ffaa1ab2f = null;
         for each(_loc1_ in this._3eaca6266d75897cf3c94c3b.selectedFruits)
         {
            for each(_loc2_ in this._f6bbee52a609088725d59be5)
            {
               if(_loc2_.entity.id == _loc1_.id)
               {
                  --_loc2_.amount;
                  break;
               }
            }
         }
      }
      
      private function _e3edb96d90ef6eb84a4bad19(param1:int, param2:int) : void
      {
         var _loc3_:_d7cdd43343fb4d5ffaa1ab2f = null;
         for each(_loc3_ in this._f6bbee52a609088725d59be5)
         {
            if(_loc3_.entity.id == param1)
            {
               _loc3_.amount = param2;
               break;
            }
         }
      }
      
      private function _ff89a222a4112fb473bab991() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:Array = [];
         var _loc3_:int = -1555919338 ^ -854968567 ^ 0x5C445D1D ^ 0x320CE402;
         while(_loc3_ < this._f6bbee52a609088725d59be5.length && _loc3_ < this._53cfbb09faaea61f69bb2bad.itemsOnPage)
         {
            _loc1_ = (this._f6bbee52a609088725d59be5[_loc3_] as _d7cdd43343fb4d5ffaa1ab2f).view.source;
            _loc2_.push(_loc1_);
            _loc3_++;
         }
         this._53cfbb09faaea61f69bb2bad.items = _loc2_;
      }
      
      private function _5179a82bb81f071d9672234c() : void
      {
         var _loc1_:_d7cdd43343fb4d5ffaa1ab2f = null;
         for each(_loc1_ in this._f6bbee52a609088725d59be5)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
            _loc1_ = null;
         }
         this._f6bbee52a609088725d59be5 = [];
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._5179a82bb81f071d9672234c();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

