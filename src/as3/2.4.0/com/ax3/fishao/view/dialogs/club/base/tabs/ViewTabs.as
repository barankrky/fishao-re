package com.ax3.fishao.view.dialogs.club.base.tabs
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObjectContainer;
   import protocol.api.clubs.page.EClubPageType;
   
   public class ViewTabs extends ViewBase
   {
      
      private var _viewTitle:ViewTitleAutosized;
      
      public function ViewTabs(param1:Controller, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public static function getTitleFor(param1:String) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EClubPageType.ECPT_CREATE:
               _loc2_ = EStringType.EST_CLUB_TITLE_CREATE;
               break;
            case EClubPageType.ECPT_RECOMMENDED:
               _loc2_ = EStringType.EST_CLUB_TITLE_RECOMMENDED;
               break;
            case EClubPageType.ECPT_RANKINGS:
               _loc2_ = EStringType.EST_CLUB_TITLE_RANKINGS;
               break;
            case EClubPageType.ECPT_GOALS:
               _loc2_ = EStringType.EST_CLUB_TITLE_GOALS;
               break;
            case EClubPageType.ECPT_LOGS:
               _loc2_ = EStringType.EST_CLUB_TITLE_LOGS;
               break;
            case EClubPageType.ECPT_MANAGEMENT:
               _loc2_ = EStringType.EST_CLUB_TITLE_MANAGEMENT;
               break;
            case EClubPageType.ECPT_TOURNAMENT:
               _loc2_ = EStringType.EST_CLUB_TITLE_TOURNAMENT;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
      
      public function set pageType(param1:String) : void
      {
         var _loc2_:String = getTitleFor(param1);
         this._viewTitle.text = I18n.get(_loc2_);
      }
      
      public function set title(param1:String) : void
      {
         this._viewTitle.text = param1;
      }
      
      public function set tabsViews(param1:Array) : void
      {
         var _loc2_:IView = null;
         var _loc3_:int = 70;
         var _loc4_:DisplayObjectContainer = this.source as DisplayObjectContainer;
         for each(_loc2_ in param1)
         {
            _loc4_.addChild(_loc2_.source);
            _loc2_.source.y = _loc3_;
            _loc3_ += _loc2_.source.height + 5;
         }
      }
      
      private function init() : void
      {
         this._viewTitle = new ViewTitleAutosized(controller,Debug.assertProperty(this.source,"title"));
      }
   }
}

