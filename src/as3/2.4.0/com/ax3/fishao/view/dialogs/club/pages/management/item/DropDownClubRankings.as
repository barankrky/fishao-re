package com.ax3.fishao.view.dialogs.club.pages.management.item
{
   import com.ax3.display.wrappers.IItemFactory;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.club.model.EClubRankingType;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownBaseWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class DropDownClubRankings extends FishaoDropdownBaseWrapper
   {
      
      private var _icon:MovieClip;
      
      private var _labelWrapper:TextFieldAutofitWrapper;
      
      public function DropDownClubRankings()
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
      
      public function set iconName(param1:String) : void
      {
         if(this._icon != null)
         {
            this._icon.gotoAndStop(param1);
         }
      }
      
      public function get selectedType() : String
      {
         var _loc1_:DropDownItemClubRankings = null;
         var _loc2_:String = null;
         var _loc3_:Array = this.items;
         if(_loc3_ != null && this.selectedItemIndex < _loc3_.length && this.selectedItemIndex >= 0)
         {
            _loc1_ = _loc3_[this.selectedItemIndex];
            _loc2_ = _loc1_.type;
         }
         return _loc2_;
      }
      
      public function set selectedType(param1:String) : void
      {
         this.iconName = EClubRankingType.getIconNameFor(param1);
         this.text = I18n.get(param1);
      }
      
      override protected function onItemClickHandler(param1:MouseEvent) : void
      {
         super.onItemClickHandler(param1);
         var _loc2_:DropDownItemClubRankings = param1.currentTarget as DropDownItemClubRankings;
         this.iconName = EClubRankingType.getIconNameFor(_loc2_.type);
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._icon = (_child as DisplayObjectContainer).getChildByName("icon") as MovieClip;
         this._labelWrapper = new TextFieldAutofitWrapper(_label);
      }
   }
}

