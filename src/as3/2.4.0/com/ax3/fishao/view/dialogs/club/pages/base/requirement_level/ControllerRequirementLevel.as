package com.ax3.fishao.view.dialogs.club.pages.base.requirement_level
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows.ViewWithArrowsAndTitle;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class ControllerRequirementLevel extends Controller
   {
      
      private var _view:ViewWithArrowsAndTitle;
      
      public function ControllerRequirementLevel(param1:DisplayObjectContainer)
      {
         this._view = new ViewWithArrowsAndTitle(this,param1);
         super(this._view);
         this.init();
      }
      
      public function get requiredLevel() : int
      {
         return this._view.pageCurrent + 1;
      }
      
      public function set requiredLevel(param1:int) : void
      {
         this._view.pageCurrent = param1 - 1;
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
         this._view.pageCurrent = 0;
         this._view.pagesTotal = ConstantsBase.LEVEL_MAX;
         this.updateText();
         this._view.title = I18n.get(EStringType.EST_CLUB_LEVEL_REQUIREMENT_TITLE);
      }
      
      private function updateText() : void
      {
         this._view.text = this.requiredLevel.toString();
      }
   }
}

