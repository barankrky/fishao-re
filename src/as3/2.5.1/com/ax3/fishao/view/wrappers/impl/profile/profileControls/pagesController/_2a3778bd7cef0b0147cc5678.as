package com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController
{
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls._191d796a51f3bbeccc077b7e;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls._acd96fcacdf8779b1cdbd5c3;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls._ea110e9d25f7ed39a8858c24;
   import flash.events.Event;
   
   public class _2a3778bd7cef0b0147cc5678 extends _191d796a51f3bbeccc077b7e
   {
      
      protected var _pagesControl:_9d52e3cc8c94daeb6473a020;
      
      protected var _elementsContainer:_fbb51bd7a45e58ba8b6f74d2;
      
      public var autosize:String = null;
      
      public function _2a3778bd7cef0b0147cc5678(param1:_9d52e3cc8c94daeb6473a020, param2:_fbb51bd7a45e58ba8b6f74d2, param3:_acd96fcacdf8779b1cdbd5c3)
      {
         super();
         this._pagesControl = param1;
         this._elementsContainer = param2;
         this._pagesControl.addEventListener(_ea110e9d25f7ed39a8858c24.CHANGE_CONTROL_POSITION,this._536a61dcd8eae98e78087e94);
         this.elementsFactory = param3;
      }
      
      override protected function _b8f764cbe1c018a81cd904d4() : void
      {
         this._pagesControl.totalPages = Math.ceil(elementsFactory.totalElements / this._elementsContainer.capacity);
         this._pagesControl.currentPage = -1238512997 ^ -2107550915 ^ -539895680 ^ 0x1462BED9;
         this._pagesControl._26c673637c7d6bcfe7a2eeee(this.autosize);
      }
      
      protected function _536a61dcd8eae98e78087e94(param1:Event) : void
      {
         var _loc2_:Number = this._pagesControl.currentPage;
         var _loc3_:Number = this._elementsContainer.capacity;
         this._elementsContainer.display(elementsFactory._0b7ab4d6da300a03653ea672(_loc2_ * _loc3_,_loc3_));
      }
   }
}

