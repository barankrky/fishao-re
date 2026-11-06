package com.ax3.fishao.view.wrappers.impl
{
   public class CheckBoxState
   {
      
      public static const SELECTED:CheckBoxState = new CheckBoxState("selected",true,true);
      
      public static const SELECTED_OVER:CheckBoxState = new CheckBoxState("selected_over",true,true);
      
      public static const UNSELECTED:CheckBoxState = new CheckBoxState("unselected",false,true);
      
      public static const UNSELECTED_OVER:CheckBoxState = new CheckBoxState("unselected_over",false,true);
      
      public var name:String;
      
      public var isSelected:Boolean;
      
      public var isEnabled:Boolean;
      
      public function CheckBoxState(param1:String, param2:Boolean, param3:Boolean)
      {
         super();
         this.name = param1;
         this.isSelected = param2;
         this.isEnabled = param3;
      }
   }
}

