package com.ax3.fishao.view.dialogs.club.pages.management.item
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   
   public class ViewClubItemManagement extends ViewBase
   {
      
      private var _source:gViewClubsItemManagement = new gViewClubsItemManagement();
      
      private var _buttonAccept:FrameButtonWrapper;
      
      private var _buttonDecline:FrameButtonWrapper;
      
      private var _labelName:TextFieldAutofitWrapper;
      
      private var _labelLevel:TextFieldAutofitWrapper;
      
      private var _viewHitArea:ViewBase;
      
      public function ViewClubItemManagement(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonAccept() : FrameButtonWrapper
      {
         return this._buttonAccept;
      }
      
      public function get buttonDecline() : FrameButtonWrapper
      {
         return this._buttonDecline;
      }
      
      public function set name(param1:String) : void
      {
         this._labelName.text = param1;
      }
      
      public function set level(param1:int) : void
      {
         this._labelLevel.text = param1.toString();
      }
      
      public function get viewHitArea() : ViewBase
      {
         return this._viewHitArea;
      }
      
      private function init() : void
      {
         this._buttonAccept = createButton("buttonAccept");
         this._buttonDecline = createButton("buttonDecline");
         this._labelName = createAutofitLabel("labelName",null);
         this._labelLevel = createAutofitLabel("labelLevel",null);
         this._viewHitArea = new ViewBase(controller,Debug.assertProperty(this.source,"viewHitArea"));
         this._viewHitArea.handleEvents(true);
         this._viewHitArea.source.alpha = 0.01;
      }
   }
}

