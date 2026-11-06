package com.ax3.fishao.view.dialogs.club.pages.base.club_type
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.club.model.EClubType;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows.ViewWithArrowsAndTitle;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class ControllerClubType extends Controller
   {
      
      private var _view:ViewWithArrowsAndTitle;
      
      private var _types:Array;
      
      public function ControllerClubType(param1:DisplayObjectContainer)
      {
         this._view = new ViewWithArrowsAndTitle(this,param1);
         super(this._view);
         this.init();
      }
      
      private static function getTextFor(param1:String) : String
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case EClubType.ECT_CLOSED:
               _loc2_ = EStringType.EST_CLUB_TYPE_CLOSED;
               break;
            case EClubType.ECT_OPENED:
               _loc2_ = EStringType.EST_CLUB_TYPE_OPENED;
               break;
            case EClubType.ECT_PRIVATE:
               _loc2_ = EStringType.EST_CLUB_TYPE_PRIVATE;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
      
      public function get type() : String
      {
         return this._types[this._view.pageCurrent];
      }
      
      public function set type(param1:String) : void
      {
         this._view.pageCurrent = this._types.indexOf(param1);
         this.updateText();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.buttonLeft:
               case this._view.buttonRight:
                  this.updateText();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._types = [EClubType.ECT_OPENED,EClubType.ECT_CLOSED,EClubType.ECT_PRIVATE];
         this._view.pagesTotal = this._types.length;
         this._view.pageCurrent = 0;
         this._view.title = I18n.get(EStringType.EST_CLUB_TYPE_TITLE);
         this.updateText();
      }
      
      private function updateText() : void
      {
         var _loc1_:String = getTextFor(this.type);
         this._view.text = I18n.get(_loc1_);
      }
   }
}

