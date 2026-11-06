package com.ax3.fishao.view.dialogs.rankings.views
{
   import com.ax3.display.wrappers.IItemFactory;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.wrappers.impl.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class DropDownRankings extends FishaoDropdownBaseWrapper
   {
      
      private var _icon:MovieClip;
      
      private var _labelWrapper:TextFieldAutofitWrapper;
      
      public function DropDownRankings()
      {
         super();
      }
      
      override public function setItemFactory(param1:IItemFactory) : void
      {
         super.setItemFactory(param1);
         param1.process(_child["open_list"]["item"]);
      }
      
      override public function set text(param1:String) : void
      {
         this._labelWrapper.text = param1;
      }
      
      public function set iconIndex(param1:int) : void
      {
         if(this._icon != null)
         {
            this._icon.gotoAndStop(param1);
         }
      }
      
      override protected function onItemClickHandler(param1:MouseEvent) : void
      {
         super.onItemClickHandler(param1);
         var _loc2_:IDropdownListItem = param1.currentTarget as IDropdownListItem;
         this.iconIndex = _loc2_.index + 1;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._icon = (_child as DisplayObjectContainer).getChildByName("icon") as MovieClip;
         this._labelWrapper = new TextFieldAutofitWrapper(_label);
      }
   }
}

