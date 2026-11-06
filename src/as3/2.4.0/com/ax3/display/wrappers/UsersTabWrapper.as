package com.ax3.display.wrappers
{
   import com.ax3.core.App;
   import com.ax3.display.wrappers.impl.ModeratorUserListItemWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.model.vo.ModeratorUserItemVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.ArrayUtils;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class UsersTabWrapper implements IAssetWrapper, IAssetWrapperRecursive, IAssetWrapperWithFactory
   {
      
      public var searchLabel:TextField;
      
      public var searchField:TextField;
      
      public var searchButton:FrameButtonWrapper;
      
      public var prevPageClickHandler:Function;
      
      public var nextPageClickHandler:Function;
      
      public var activateUserHandler:Function;
      
      public var usernemeField:TextField;
      
      public var timeLeftField:TextField;
      
      public var statusField:TextField;
      
      public var list:PageListWrapper;
      
      private var _asset:DisplayObjectContainer;
      
      private var _app:App;
      
      private var _swfFileName:String;
      
      private var _reports:Vector.<ModeratorUserItemVO>;
      
      public function UsersTabWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
      }
      
      public function initialize(param1:App, param2:String) : void
      {
         this._app = param1;
         this._swfFileName = param2;
      }
      
      public function onAssetProcessComplete() : void
      {
         var _loc1_:SwfFactoryWrapper = new SwfFactoryWrapper(this._app.resourceManager,this._swfFileName,ModeratorUserListItemWrapper);
         _loc1_.process(this.list.itemTemplate);
         this.list.itemFactory = _loc1_;
         this.list.gap = 5;
         this.list.itemsPerPage = 9;
         this.list.listItemClickHandler = this.onListItemClick;
         this.list.leftPageButton.handler = this.onListPrevPageClick;
         this.list.rightPageButton.handler = this.onListNextPageClick;
         this.usernemeField.text = I18n.get("reportHeader_username");
         this.timeLeftField.text = I18n.get("reportHeader_timeLeft");
         this.statusField.text = I18n.get("reportHeader_status");
         this.searchLabel.text = I18n.get("moderator_searchLabel");
         this.searchField.text = "";
         this.searchButton.label = I18n.getUpper("searchButton");
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
      
      public function showReports(param1:Vector.<ModeratorUserItemVO>, param2:int, param3:int) : void
      {
         this._reports = param1;
         this.list.show(ArrayUtils.vectorToArray(param1),param2,param3);
      }
      
      private function onListPrevPageClick(param1:Event) : void
      {
         if(this.prevPageClickHandler != null)
         {
            this.prevPageClickHandler();
         }
      }
      
      private function onListNextPageClick(param1:Event) : void
      {
         if(this.nextPageClickHandler != null)
         {
            this.nextPageClickHandler();
         }
      }
      
      private function onListItemClick(param1:Event) : void
      {
         var _loc2_:ModeratorUserListItemWrapper = ModeratorUserListItemWrapper(param1.currentTarget);
         var _loc3_:ModeratorUserItemVO = ModeratorUserItemVO(_loc2_.data);
         if(this.activateUserHandler != null)
         {
            this.activateUserHandler(_loc3_);
         }
      }
   }
}

