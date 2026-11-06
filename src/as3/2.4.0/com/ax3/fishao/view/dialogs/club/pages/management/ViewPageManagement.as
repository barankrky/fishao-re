package com.ax3.fishao.view.dialogs.club.pages.management
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_input.ViewInput;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows.ViewPagination;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class ViewPageManagement extends ViewBase
   {
      
      private var _sourceEmblem:DisplayObjectContainer;
      
      private var _sourceClubType:DisplayObjectContainer;
      
      private var _sourceRequirementLevel:DisplayObjectContainer;
      
      private var _viewPagination:ViewPagination;
      
      private var _viewInputDescription:ViewInput;
      
      private var _viewTableTitle:DisplayObject;
      
      public function ViewPageManagement(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get viewPagination() : ViewPagination
      {
         return this._viewPagination;
      }
      
      public function get sourceEmblem() : DisplayObjectContainer
      {
         return this._sourceEmblem;
      }
      
      public function get sourceClubType() : DisplayObjectContainer
      {
         return this._sourceClubType;
      }
      
      public function get sourceRequirementLevel() : DisplayObjectContainer
      {
         return this._sourceRequirementLevel;
      }
      
      public function get viewInputDescription() : ViewInput
      {
         return this._viewInputDescription;
      }
      
      public function get viewTableTitle() : DisplayObject
      {
         return this._viewTableTitle;
      }
      
      private function init() : void
      {
         this._viewTableTitle = Debug.assertProperty(this.source,"viewTableTitle");
         createAutofitLabel("labelText",EStringType.EST_CLUB_LABEL_PAGE_MANAGEMENT_TEXT);
         createAutofitLabel("labelDescriptionTitle",EStringType.EST_CLUB_LABEL_DESCRIPTION);
         createAutofitLabel("labelWaiting",EStringType.EST_CLUB_COLUMN_WAITING_APPROVAL,this._viewTableTitle);
         this._sourceEmblem = Debug.assertProperty(this.source,"viewEmblem");
         this._sourceClubType = Debug.assertProperty(this.source,"viewClubType");
         this._sourceRequirementLevel = Debug.assertProperty(this.source,"viewRequirementLevel");
         this._viewPagination = new ViewPagination(controller,Debug.assertProperty(this.source,"viewPagination"));
         this._viewInputDescription = createInput("labelDescription");
      }
   }
}

