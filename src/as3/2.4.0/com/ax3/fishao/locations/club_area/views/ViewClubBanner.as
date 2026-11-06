package com.ax3.fishao.locations.club_area.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem.ViewClubEmblem;
   import flash.display.DisplayObjectContainer;
   
   public class ViewClubBanner extends ViewBase
   {
      
      private var _label:TextFieldAutofitWrapper;
      
      private var _viewEmblem:ViewClubEmblem;
      
      public function ViewClubBanner(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set name(param1:String) : void
      {
         this._label.text = param1;
      }
      
      public function set emblemID(param1:int) : void
      {
         this._viewEmblem.emblemID = param1;
      }
      
      private function init() : void
      {
         this._viewEmblem = new ViewClubEmblem(controller,Debug.assertProperty(this.source,"view_emblem"));
         this._label = createAutofitLabel("label",null);
      }
   }
}

