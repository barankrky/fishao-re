package com.ax3.fishao.view.wrappers.impl
{
   import flash.events.MouseEvent;
   
   public class FishaoOptListMediator
   {
      
      private var _options:Vector.<FishaoOptButtonWrapper> = new Vector.<FishaoOptButtonWrapper>();
      
      private var _amountOptions:int;
      
      public function FishaoOptListMediator(... rest)
      {
         var _loc2_:Object = null;
         var _loc3_:FishaoOptButtonWrapper = null;
         var _loc4_:Object = null;
         super();
         for each(_loc2_ in rest)
         {
            if(_loc2_ is FishaoOptButtonWrapper)
            {
               _loc3_ = FishaoOptButtonWrapper(_loc2_);
               this._options.push(_loc3_);
               _loc3_.addEventListener(MouseEvent.CLICK,this.onClick);
            }
            else if(_loc2_ is Vector.<FishaoOptButtonWrapper>)
            {
               for each(_loc4_ in _loc2_)
               {
                  this._options.push(_loc4_);
                  _loc4_.addEventListener(MouseEvent.CLICK,this.onClick);
               }
            }
         }
         this._amountOptions = this._options.length;
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         var _loc2_:FishaoOptButtonWrapper = FishaoOptButtonWrapper(param1.target);
         if(_loc2_.isEnabled)
         {
            this.selectOption(_loc2_,true);
         }
      }
      
      public function selectOption(param1:FishaoOptButtonWrapper, param2:Boolean = false) : void
      {
         if(param2)
         {
            param1.state = CheckBoxState.SELECTED_OVER;
         }
         else
         {
            param1.state = CheckBoxState.SELECTED;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this._amountOptions)
         {
            if(this._options[_loc3_] != param1)
            {
               this._options[_loc3_].state = CheckBoxState.UNSELECTED;
            }
            _loc3_++;
         }
      }
      
      public function get currentOption() : FishaoOptButtonWrapper
      {
         var _loc1_:FishaoOptButtonWrapper = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._amountOptions)
         {
            if(this._options[_loc2_].isSelected)
            {
               _loc1_ = this._options[_loc2_];
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get amountOptions() : int
      {
         return this._amountOptions;
      }
   }
}

