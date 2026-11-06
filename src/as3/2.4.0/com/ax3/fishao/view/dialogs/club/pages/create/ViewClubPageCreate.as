package com.ax3.fishao.view.dialogs.club.pages.create
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_input.ViewInput;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   
   public class ViewClubPageCreate extends ViewBase
   {
      
      private var _buttonCreate:FrameButtonWrapper;
      
      private var _sourceEmblem:DisplayObjectContainer;
      
      private var _sourceClubType:DisplayObjectContainer;
      
      private var _sourceRequirementLevel:DisplayObjectContainer;
      
      private var _viewInputName:ViewInput;
      
      private var _viewInputDescription:ViewInput;
      
      public function ViewClubPageCreate(param1:Controller, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get buttonCreate() : FrameButtonWrapper
      {
         return this._buttonCreate;
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
      
      public function get viewInputName() : ViewInput
      {
         return this._viewInputName;
      }
      
      public function get viewInputDescription() : ViewInput
      {
         return this._viewInputDescription;
      }
      
      private function init() : void
      {
         this.initLabels();
         this.initSources();
         this.initInputs();
         this._buttonCreate = createButton("buttonCreate");
      }
      
      private function initLabels() : void
      {
         createAutofitLabel("label",EStringType.EST_CLUB_LABEL_PAGE_CREATE_TEXT,Debug.assertProperty(this.source,"viewText"));
         createAutofitLabel("labelCreate",EStringType.EST_CLUB_LABEL_CREATE);
         createAutofitLabel("labelName",EStringType.EST_CLUB_LABEL_NAME);
         createAutofitLabel("labelDescription",EStringType.EST_CLUB_LABEL_DESCRIPTION);
      }
      
      private function initSources() : void
      {
         this._sourceEmblem = Debug.assertProperty(this.source,"viewEmblem");
         this._sourceClubType = Debug.assertProperty(this.source,"viewClubType");
         this._sourceRequirementLevel = Debug.assertProperty(this.source,"viewRequirementLevel");
      }
      
      private function initInputs() : void
      {
         this._viewInputDescription = createInput("labelDescriptionValue");
         this._viewInputName = createInput("labelNameValue");
      }
   }
}

