package com.ax3.fishao.view.dialogs.club.pages.rankings
{
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.model.EClubRankingType;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_input.ViewInput;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows.ViewPagination;
   import com.ax3.fishao.view.dialogs.club.pages.management.item.DropDownClubRankings;
   import com.ax3.fishao.view.dialogs.club.pages.management.item.DropDownItemClubRankings;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObjectContainer;
   
   public class ViewClubPageRankings extends ViewBase
   {
      
      private var _viewPagination:ViewPagination;
      
      private var _viewDropDown:DropDownClubRankings;
      
      private var _dialogAssetURL:String;
      
      private var _viewInput:ViewInput;
      
      private var _labelCriteria:TextFieldAutofitWrapper;
      
      public function ViewClubPageRankings(param1:Controller, param2:DisplayObjectContainer, param3:String)
      {
         super(param1,param2);
         this._dialogAssetURL = param3;
         this.init();
      }
      
      public function get viewDropDown() : DropDownClubRankings
      {
         return this._viewDropDown;
      }
      
      public function get viewPagination() : ViewPagination
      {
         return this._viewPagination;
      }
      
      public function get viewInput() : ViewInput
      {
         return this._viewInput;
      }
      
      public function set rankingType(param1:String) : void
      {
         this._labelCriteria.text = I18n.get(param1);
      }
      
      private function init() : void
      {
         var _loc1_:String = null;
         var _loc2_:DropDownItemClubRankings = null;
         var _loc3_:Vector.<String> = EClubRankingType.all;
         this._viewPagination = new ViewPagination(controller,Debug.assertProperty(this.source,"viewPagination"));
         this._viewDropDown = new DropDownClubRankings();
         this._viewDropDown.process(Debug.assertProperty(this.source,"viewDropDown"));
         this._viewDropDown.selectedItemIndex = 0;
         this._viewDropDown.selectedType = _loc3_[0];
         var _loc4_:SwfFactoryWrapper = new SwfFactoryWrapper(app.resourceManager,this._dialogAssetURL,DropDownItemClubRankings);
         this._viewDropDown.setItemFactory(_loc4_);
         this._viewDropDown.create(_loc3_);
         var _loc5_:Array = this._viewDropDown.items;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_.length)
         {
            _loc1_ = _loc3_[_loc6_];
            _loc2_ = _loc5_[_loc6_];
            _loc2_.type = _loc1_;
            _loc6_++;
         }
         this._viewInput = new ViewInput(controller,Debug.assertProperty(this.source,"labelSearchValue"));
         this._viewInput.label.text = "";
         this.initLabels();
      }
      
      private function initLabels() : void
      {
         createAutofitLabel("labelSearch",EStringType.EST_SEARCH_A_CLUB);
         createAutofitLabel("labelNote",EStringType.EST_CLUB_RANKINGS_NOTE);
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(this.source,"viewTableTitle");
         createAutofitLabel("labelName",EStringType.EST_CLUB_COLUMN_CLUB,_loc1_);
         createAutofitLabel("labelMembers",EStringType.EST_CLUB_COLUMN_MEMBERS,_loc1_);
         this._labelCriteria = createAutofitLabel("labelCriteria",null,_loc1_);
      }
   }
}

