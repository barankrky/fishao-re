package com.ax3.fishao.view.wrappers
{
   import com.ax3.fishao.view.buttons._f8cee4b5a227fbfb236a1ae8;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.utils.sound._c5aa52fca149ae6f0be6dc5b;
   
   public class _ec615a950cd1fd583101e44a extends FishaoButtonWrapper
   {
      
      public function _ec615a950cd1fd583101e44a()
      {
         super();
         _buttonCls = _f8cee4b5a227fbfb236a1ae8;
      }
      
      public function set customClickSound(param1:_c5aa52fca149ae6f0be6dc5b) : void
      {
         _button.customClickSound = param1;
      }
      
      public function set customOverSound(param1:_c5aa52fca149ae6f0be6dc5b) : void
      {
         _button.customOverSound = param1;
      }
   }
}

