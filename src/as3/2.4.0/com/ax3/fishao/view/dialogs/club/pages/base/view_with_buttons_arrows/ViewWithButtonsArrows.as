package com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   
   public class ViewWithButtonsArrows extends ViewBase
   {
      
      private var _buttonLeft:FrameButtonWrapper;
      
      private var _buttonRight:FrameButtonWrapper;
      
      private var _pageCurrent:int;
      
      private var _pagesTotal:int;
      
      public function ViewWithButtonsArrows(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get pageCurrent() : int
      {
         return this._pageCurrent;
      }
      
      public function set pageCurrent(param1:int) : void
      {
         if(this._pageCurrent == param1)
         {
            return;
         }
         this._pageCurrent = param1;
         this.onPageChanged();
      }
      
      public function get pagesTotal() : int
      {
         return this._pagesTotal;
      }
      
      public function set pagesTotal(param1:int) : void
      {
         if(this._pagesTotal == param1)
         {
            return;
         }
         this._pagesTotal = param1;
         if(this._pagesTotal <= this._pageCurrent)
         {
            this._pageCurrent = Math.max(0,this._pagesTotal - 1);
            controller.onViewClicked(this._buttonLeft,null);
         }
         this.onPageChanged();
      }
      
      public function get buttonLeft() : FrameButtonWrapper
      {
         return this._buttonLeft;
      }
      
      public function get buttonRight() : FrameButtonWrapper
      {
         return this._buttonRight;
      }
      
      private function onButtonLeftClicked(param1:MouseEvent) : void
      {
         --this.pageCurrent;
         controller.onViewClicked(this._buttonLeft,param1);
      }
      
      private function onButtonRightClicked(param1:MouseEvent) : void
      {
         ++this.pageCurrent;
         controller.onViewClicked(this._buttonRight,param1);
      }
      
      protected function onPageChanged() : void
      {
         this.updateButtons();
      }
      
      private function init() : void
      {
         this._buttonLeft = createButton("buttonLeft",null,this.onButtonLeftClicked);
         this._buttonRight = createButton("buttonRight",null,this.onButtonRightClicked);
         this._pageCurrent = -1;
         this.updateButtons();
      }
      
      private function updateButtons() : void
      {
         this._buttonLeft.enabled = this._pageCurrent > 0;
         this._buttonRight.enabled = this._pageCurrent < this._pagesTotal - 1;
      }
   }
}

