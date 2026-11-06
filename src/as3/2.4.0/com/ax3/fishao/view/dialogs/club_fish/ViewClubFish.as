package com.ax3.fishao.view.dialogs.club_fish
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows.ViewPagination;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import flash.display.DisplayObjectContainer;
   
   public class ViewClubFish extends ViewBase
   {
      
      private var _viewPagination:ViewPagination;
      
      private var _viewTitle:ViewTitleAutosized;
      
      private var _labelText:TextFieldAutofitWrapper;
      
      public function ViewClubFish(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get viewPagination() : ViewPagination
      {
         return this._viewPagination;
      }
      
      public function setProgress(param1:int, param2:int, param3:Boolean) : void
      {
         var _loc4_:String = I18n.get(param3 ? EStringType.EST_CLUB_FISH_TITLE_SALT : EStringType.EST_CLUB_FISH_TITLE_FRESH);
         this._viewTitle.text = _loc4_;
         var _loc5_:String = I18n.get(EStringType.EST_CLUB_FISH_LABEL_TEXT);
         _loc5_ = _loc5_.replace(EStringTypeStubs.ESTS_VALUE,_loc4_);
         _loc5_ = _loc5_.replace(EStringTypeStubs.ESTS_VALUE,param1);
         _loc5_ = _loc5_.replace(EStringTypeStubs.ESTS_VALUE,param2);
         this._labelText.text = _loc5_;
      }
      
      private function init() : void
      {
         this._viewPagination = new ViewPagination(controller,Debug.assertProperty(this.source,"viewPagination"));
         this._viewTitle = new ViewTitleAutosized(controller,Debug.assertProperty(this.source,"title"));
         this._labelText = createAutofitLabel("labelText",null);
      }
   }
}

