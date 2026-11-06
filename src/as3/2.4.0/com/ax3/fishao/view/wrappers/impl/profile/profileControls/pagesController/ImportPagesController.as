package com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController
{
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.IElementsFactory;
   import flash.events.Event;
   
   public class ImportPagesController extends PagesController
   {
      
      public static const EVENT_CHANGE_PAGE:String = "EVENT_CHANGE_PAGE";
      
      private var _currentPage:Number;
      
      public function ImportPagesController(param1:IPagesControl, param2:IPagesElementsContainer, param3:IElementsFactory)
      {
         super(param1,param2,param3);
      }
      
      override protected function initController() : void
      {
      }
      
      override protected function onChangePage(param1:Event) : void
      {
         if(this._currentPage != this.currentPage)
         {
            dispatchEvent(new Event(EVENT_CHANGE_PAGE));
         }
      }
      
      public function importData(param1:Vector.<Object>, param2:Number, param3:Number) : void
      {
         elementsFactory.elements = param1;
         _elementsContainer.display(elementsFactory.getElements(0,_elementsContainer.capacity));
         _pagesControl.totalPages = param3;
         this._currentPage = param2;
         _pagesControl.currentPage = param2;
         _pagesControl.alightElements(autosize);
      }
      
      public function get currentPage() : Number
      {
         return _pagesControl.currentPage;
      }
   }
}

