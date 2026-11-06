package com.ax3.fishao.view.dialogs.club.pages.recommended
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObjectContainer;
   
   public class ViewClubPageRecommended extends ViewBase
   {
      
      private var _sourceTableTitle:DisplayObjectContainer;
      
      private var _labelText:TextFieldAutofitWrapper;
      
      public function ViewClubPageRecommended(param1:Controller, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set isRecommendedClubsExists(param1:Boolean) : void
      {
         this._labelText.text = I18n.get(param1 ? EStringType.EST_CLUB_LABEL_PAGE_RECOMMENDED_TEXT : EStringType.EST_CLUB_LABEL_PAGE_RECOMMENDED_TEXT_EMPTY);
         this._sourceTableTitle.visible = param1;
      }
      
      private function init() : void
      {
         this._labelText = createAutofitLabel("label",null,Debug.assertProperty(this.source,"viewText"));
         this._sourceTableTitle = Debug.assertProperty(this.source,"viewTableTitle");
         createAutofitLabel("labelName",EStringType.EST_CLUB_COLUMN_CLUB,this._sourceTableTitle);
         createAutofitLabel("labelMembers",EStringType.EST_CLUB_COLUMN_MEMBERS,this._sourceTableTitle);
         createAutofitLabel("labelPoints",EStringType.EST_CLUB_COLUMN_CLUB_POINTS,this._sourceTableTitle);
      }
   }
}

