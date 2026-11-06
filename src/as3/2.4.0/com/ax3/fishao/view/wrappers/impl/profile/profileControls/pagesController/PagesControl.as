package com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.ControlsEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class PagesControl extends EventDispatcher implements IPagesControl
   {
      
      private var _pagesTextField:TextField;
      
      private var _leftPageButton:FrameButtonWrapper;
      
      private var _rightPageButton:FrameButtonWrapper;
      
      private var _currentPage:Number;
      
      private var _totalPages:Number;
      
      private const GAP:int = 5;
      
      private var _autosize:String = null;
      
      public function PagesControl(param1:TextField, param2:FrameButtonWrapper, param3:FrameButtonWrapper, param4:String = null)
      {
         super();
         this._pagesTextField = param1;
         this._leftPageButton = param3;
         this._rightPageButton = param2;
         this._leftPageButton.handler = this.onLeftPageButtonClick;
         this._rightPageButton.handler = this.onRightPageButtonClick;
         this._autosize = param4;
         addEventListener(ControlsEvent.CHANGE_CONTROL_POSITION,this.onChangePage);
         this._totalPages = 0;
         this.currentPage = -1;
      }
      
      public function set currentPage(param1:Number) : void
      {
         this._currentPage = param1;
         if(this._currentPage <= 0)
         {
            this._currentPage = 0;
            this._leftPageButton.enabled = false;
         }
         else
         {
            this._leftPageButton.enabled = true;
         }
         if(this._currentPage >= this._totalPages - 1)
         {
            this._rightPageButton.enabled = false;
            this._currentPage = this._totalPages - 1;
         }
         else
         {
            this._rightPageButton.enabled = true;
         }
         dispatchEvent(new Event(ControlsEvent.CHANGE_CONTROL_POSITION));
      }
      
      public function get currentPage() : Number
      {
         return this._currentPage;
      }
      
      public function set totalPages(param1:Number) : void
      {
         this._totalPages = param1;
      }
      
      private function onLeftPageButtonClick(param1:MouseEvent) : void
      {
         --this.currentPage;
      }
      
      private function onRightPageButtonClick(param1:MouseEvent) : void
      {
         ++this.currentPage;
      }
      
      private function onChangePage(param1:Event) : void
      {
         this._pagesTextField.text = (this._currentPage + 1).toString() + " " + I18n.get("of") + " " + this._totalPages.toString();
         this.alightElements(this._autosize);
      }
      
      public function alightElements(param1:String) : void
      {
         if(param1 != null)
         {
            if(param1 == TextFieldAutoSize.RIGHT)
            {
               this.alightElementsRight();
            }
         }
      }
      
      private function alightElementsRight() : void
      {
         this._pagesTextField.wordWrap = false;
         this._pagesTextField.multiline = false;
         this._pagesTextField.width = this._pagesTextField.textWidth + 5;
         this._pagesTextField.x = this._rightPageButton.x - this._pagesTextField.width - this.GAP - 5;
         this._leftPageButton.x = this._pagesTextField.x - this._leftPageButton.width - this.GAP;
      }
   }
}

