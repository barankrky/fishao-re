package com.ax3.fishao.view.wrappers.impl
{
   import flash.events.MouseEvent;
   
   public class _56e4c27d5004e52ae446ebbb
   {
      
      private var _adc0dfdbca39dbaeaad53428:Vector.<_4a306accb768c5f549bf6c1f> = new Vector.<_4a306accb768c5f549bf6c1f>();
      
      private var _3969441ecaf79d2d66b903dc:int;
      
      public function _56e4c27d5004e52ae446ebbb(... rest)
      {
         var _loc2_:Object = null;
         var _loc3_:_4a306accb768c5f549bf6c1f = null;
         var _loc4_:Object = null;
         super();
         for each(_loc2_ in rest)
         {
            if(_loc2_ is _4a306accb768c5f549bf6c1f)
            {
               _loc3_ = _4a306accb768c5f549bf6c1f(_loc2_);
               this._adc0dfdbca39dbaeaad53428.push(_loc3_);
               _loc3_.addEventListener(MouseEvent.CLICK,this._50a5543d29af7fab21d6c38d);
            }
            else if(_loc2_ is Vector.<_4a306accb768c5f549bf6c1f>)
            {
               for each(_loc4_ in _loc2_)
               {
                  this._adc0dfdbca39dbaeaad53428.push(_loc4_);
                  _loc4_.addEventListener(MouseEvent.CLICK,this._50a5543d29af7fab21d6c38d);
               }
            }
         }
         this._3969441ecaf79d2d66b903dc = this._adc0dfdbca39dbaeaad53428.length;
      }
      
      private function _50a5543d29af7fab21d6c38d(param1:MouseEvent) : void
      {
         var _loc2_:_4a306accb768c5f549bf6c1f = _4a306accb768c5f549bf6c1f(param1.target);
         if(_loc2_.isEnabled)
         {
            this._ecba9d91ca2826190b796efd(_loc2_,true);
         }
      }
      
      public function _ecba9d91ca2826190b796efd(param1:_4a306accb768c5f549bf6c1f, param2:Boolean = false) : void
      {
         if(param2)
         {
            param1.state = _89027603939c39853027fd04.SELECTED_OVER;
         }
         else
         {
            param1.state = _89027603939c39853027fd04.SELECTED;
         }
         var _loc3_:int = 0x624E9924 ^ -1499256937 ^ -1585295386 ^ 0x656FF155;
         while(_loc3_ < this._3969441ecaf79d2d66b903dc)
         {
            if(this._adc0dfdbca39dbaeaad53428[_loc3_] != param1)
            {
               this._adc0dfdbca39dbaeaad53428[_loc3_].state = _89027603939c39853027fd04.UNSELECTED;
            }
            _loc3_++;
         }
      }
      
      public function get currentOption() : _4a306accb768c5f549bf6c1f
      {
         var _loc1_:_4a306accb768c5f549bf6c1f = null;
         var _loc2_:int = -1281498352 ^ 0x21551F25 ^ 0x281650E6 ^ -1159811885;
         while(_loc2_ < this._3969441ecaf79d2d66b903dc)
         {
            if(this._adc0dfdbca39dbaeaad53428[_loc2_].isSelected)
            {
               _loc1_ = this._adc0dfdbca39dbaeaad53428[_loc2_];
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get amountOptions() : int
      {
         return this._3969441ecaf79d2d66b903dc;
      }
   }
}

