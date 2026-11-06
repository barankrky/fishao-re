package com.ax3.fishao.view.dialogs.club.pages.management.item
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.club.model.EClubRankingType;
   import com.ax3.fishao.view.wrappers.impl.DropDownItemWithIcon;
   
   public class DropDownItemClubRankings extends DropDownItemWithIcon
   {
      
      private var _type:String;
      
      public function DropDownItemClubRankings()
      {
         super();
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
         _label.text = I18n.get(this._type);
         _icon.gotoAndStop(EClubRankingType.getIconNameFor(this._type));
      }
   }
}

