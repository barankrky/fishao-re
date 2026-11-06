package com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController
{
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.ControlsEvent;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.IElementsFactory;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.ProfileBaseController;
   import flash.events.Event;
   
   public class PagesController extends ProfileBaseController
   {
      
      protected var _pagesControl:IPagesControl;
      
      protected var _elementsContainer:IPagesElementsContainer;
      
      public var autosize:String = null;
      
      public function PagesController(param1:IPagesControl, param2:IPagesElementsContainer, param3:IElementsFactory)
      {
         super();
         this._pagesControl = param1;
         this._elementsContainer = param2;
         this._pagesControl.addEventListener(ControlsEvent.CHANGE_CONTROL_POSITION,this.onChangePage);
         this.elementsFactory = param3;
      }
      
      override protected function initController() : void
      {
         this._pagesControl.totalPages = Math.ceil(elementsFactory.totalElements / this._elementsContainer.capacity);
         this._pagesControl.currentPage = -1;
         this._pagesControl.alightElements(this.autosize);
      }
      
      protected function onChangePage(param1:Event) : void
      {
         var _loc2_:Number = this._pagesControl.currentPage;
         var _loc3_:Number = this._elementsContainer.capacity;
         this._elementsContainer.display(elementsFactory.getElements(_loc2_ * _loc3_,_loc3_));
      }
   }
}

