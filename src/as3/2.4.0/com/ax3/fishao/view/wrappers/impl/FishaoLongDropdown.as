package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.impl.StaticClassFactoryWrapper;
   
   public class FishaoLongDropdown extends FishaoDropdownBaseWrapper implements IAssetWrapper
   {
      
      public function FishaoLongDropdown()
      {
         super();
      }
      
      public function init() : void
      {
         FishaoDropdownListLongItem.itemClass = this.itemClass;
         setItemFactory(new StaticClassFactoryWrapper(Class(FishaoDropdownListLongItem)));
      }
      
      public function get itemClass() : Class
      {
         return Object(_child["open_list"]["item"]).constructor;
      }
   }
}

