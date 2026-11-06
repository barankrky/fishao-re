package com.ax3.fishao.view.wrappers.impl
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class DropDownItemWithIcon extends FishaoDropdownListBaseItem
   {
      
      protected var _icon:MovieClip;
      
      public function DropDownItemWithIcon()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._icon = _asset.getChildByName("icon") as MovieClip;
      }
      
      public function set icon(param1:int) : void
      {
         this._icon.gotoAndStop(param1 + 1);
      }
   }
}

