package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IItemFactory;
   
   public class FishaoDropdownProfilerWrapper extends FishaoDropdownBaseWrapper
   {
      
      public function FishaoDropdownProfilerWrapper()
      {
         super();
      }
      
      override public function setItemFactory(param1:IItemFactory) : void
      {
         super.setItemFactory(param1);
         param1.process(_child["open_list"]["item"]);
      }
   }
}

