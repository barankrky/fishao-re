package com.ax3.display.wrappers
{
   import com.ax3.core.App;
   import com.ax3.display.wrappers.impl.ModeratorReportListItemWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.model.vo.ReportItemVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.utils.ArrayUtils;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class HistoryReportsTabWrapper implements IAssetWrapper, IAssetWrapperRecursive, IAssetWrapperWithFactory
   {
      
      public var langField:TextField;
      
      public var dateField:TextField;
      
      public var reporterField:TextField;
      
      public var abuserField:TextField;
      
      public var statusField:TextField;
      
      public var activateReportHandler:Function;
      
      public var prevPageClickHandler:Function;
      
      public var nextPageClickHandler:Function;
      
      public var list:PageListWrapper;
      
      private var _asset:DisplayObjectContainer;
      
      private var _app:App;
      
      private var _swfFileName:String;
      
      private var _reports:Vector.<ReportItemVO>;
      
      public function HistoryReportsTabWrapper()
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
         var _loc1_:SwfFactoryWrapper = new SwfFactoryWrapper(this._app.resourceManager,this._swfFileName,ModeratorReportListItemWrapper);
         _loc1_.process(this.list.itemTemplate);
         this.list.itemFactory = _loc1_;
         this.list.itemsPerPage = 11;
         this.list.listItemClickHandler = this.onListItemClick;
         this.langField.text = I18n.get("reportHeader_lang");
         this.dateField.text = I18n.get("reportHeader_date");
         this.reporterField.text = I18n.get("reportHeader_moderator");
         this.abuserField.text = I18n.get("reportHeader_user");
         this.statusField.text = I18n.get("reportHeader_status");
         this.list.leftPageButton.handler = this.onListPrevPageClick;
         this.list.rightPageButton.handler = this.onListNextPageClick;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
      
      public function showReports(param1:Vector.<ReportItemVO>, param2:int, param3:int) : void
      {
         this._reports = param1;
         this.list.show(ArrayUtils.vectorToArray(param1),param2,param3);
      }
      
      private function onListItemClick(param1:Event) : void
      {
         var _loc2_:ModeratorReportListItemWrapper = ModeratorReportListItemWrapper(param1.currentTarget);
         var _loc3_:ReportItemVO = ReportItemVO(_loc2_.data);
         if(this.activateReportHandler != null)
         {
            this.activateReportHandler(_loc3_);
         }
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
   }
}

