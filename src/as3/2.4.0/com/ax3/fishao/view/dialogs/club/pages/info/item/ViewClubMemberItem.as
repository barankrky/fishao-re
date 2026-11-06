package com.ax3.fishao.view.dialogs.club.pages.info.item
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.Sprite;
   
   public class ViewClubMemberItem extends ViewBase
   {
      
      private var _viewHitArea:ViewBase;
      
      private var _buttonDecline:FrameButtonWrapper;
      
      private var _labelLevel:TextFieldAutofitWrapper;
      
      private var _labelName:TextFieldAutofitWrapper;
      
      private var _labelRole:TextFieldAutofitWrapper;
      
      private var _bgCurrent:Sprite;
      
      public function ViewClubMemberItem(param1:IController)
      {
         super(param1,new gViewClubsItemMember());
         this.init();
      }
      
      public function set level(param1:int) : void
      {
         this._labelLevel.text = param1.toString();
      }
      
      public function set name(param1:String) : void
      {
         this._labelName.text = param1;
      }
      
      public function set role(param1:String) : void
      {
         this._labelRole.text = I18n.get(param1);
      }
      
      public function set isCurrent(param1:Boolean) : void
      {
         this._bgCurrent.visible = param1;
         if(param1)
         {
            this._labelName.source.textColor = 16777215;
            this._labelRole.source.textColor = 16777215;
         }
      }
      
      public function get buttonDecline() : FrameButtonWrapper
      {
         return this._buttonDecline;
      }
      
      public function get viewHitArea() : IView
      {
         return this._viewHitArea;
      }
      
      public function set canShowProfile(param1:Boolean) : void
      {
         this._viewHitArea.handleEvents(param1);
         this._viewHitArea.source.alpha = param1 ? 0.01 : 0;
      }
      
      private function init() : void
      {
         this._viewHitArea = new ViewBase(controller,Debug.assertProperty(this.source,"viewHitArea"));
         this._bgCurrent = Debug.assertProperty(this.source,"bgCurrent");
         this._buttonDecline = createButton("buttonDecline");
         this._labelLevel = createAutofitLabel("labelLevel",null);
         this._labelName = createAutofitLabel("labelName",null);
         this._labelRole = createAutofitLabel("labelRole",null);
      }
   }
}

