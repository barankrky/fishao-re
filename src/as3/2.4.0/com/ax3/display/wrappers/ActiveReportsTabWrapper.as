package com.ax3.display.wrappers
{
   import com.ax3.core.App;
   import com.ax3.display.wrappers.impl.IListItemWrapper;
   import com.ax3.display.wrappers.impl.ModeratorReportListItemWrapper;
   import com.ax3.display.wrappers.impl.ScrollListWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.model.vo.ReportItemVO;
   import com.ax3.fishao.utils.I18n;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class ActiveReportsTabWrapper implements IAssetWrapper, IAssetWrapperRecursive, IAssetWrapperWithFactory
   {
      
      public var langField:TextField;
      
      public var dateField:TextField;
      
      public var reporterField:TextField;
      
      public var abuserField:TextField;
      
      public var statusField:TextField;
      
      public var list:ScrollListWrapper;
      
      public var activateReportHandler:Function;
      
      private var _asset:DisplayObjectContainer;
      
      private var _app:App;
      
      private var _swfFileName:String;
      
      private var _activeReports:Vector.<ReportItemVO>;
      
      public function ActiveReportsTabWrapper()
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
         this.list.gap = 5;
         this.list.itemFactory = _loc1_;
         this.langField.text = I18n.get("reportHeader_lang");
         this.dateField.text = I18n.get("reportHeader_date");
         this.reporterField.text = I18n.get("reportHeader_reporter");
         this.abuserField.text = I18n.get("reportHeader_abuser");
         this.statusField.text = I18n.get("reportHeader_status");
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
      
      public function showActiveReports(param1:Vector.<ReportItemVO>) : void
      {
         var _loc2_:ReportItemVO = null;
         var _loc3_:IListItemWrapper = null;
         this._activeReports = param1;
         this.list.removeAll();
         for each(_loc2_ in this._activeReports)
         {
            _loc3_ = this.list.add(_loc2_);
            if(_loc3_ is ModeratorReportListItemWrapper)
            {
               ModeratorReportListItemWrapper(_loc3_).addEventListener(ScrollListWrapper.ACTIVATE_WRAPPER,this.onListItemClick,false,0,true);
            }
         }
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
   }
}

