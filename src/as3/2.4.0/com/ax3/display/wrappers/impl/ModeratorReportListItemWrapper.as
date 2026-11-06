package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.model.types.ReportStatusType;
   import com.ax3.fishao.model.vo.ReportItemVO;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ModeratorReportListItemWrapper extends Sprite implements IAssetWrapper, IListItemWrapper
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _data:ReportItemVO;
      
      private var _flag:BitmapContainerWrapper;
      
      private var _dateField:TextField;
      
      private var _reporterField:TextField;
      
      private var _abuserField:TextField;
      
      private var _statusField:TextField;
      
      private var _bg:DisplayObject;
      
      private var tooltipConfig:Object = null;
      
      private var _dateFieldContainer:ToolTipTargetMovieClip;
      
      public function ModeratorReportListItemWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         buttonMode = true;
         useHandCursor = true;
         mouseChildren = true;
         addEventListener(MouseEvent.ROLL_OVER,this.onBgRollOver,false,0,true);
         addEventListener(MouseEvent.ROLL_OUT,this.onBgRollOut,false,0,true);
         addEventListener(MouseEvent.CLICK,this.onClick);
         this._asset = DisplayObjectContainer(param1);
         addChild(this._asset);
         this._bg = this._asset.getChildByName("bg");
         if(this._bg != null)
         {
            this._bg.alpha = 0;
         }
         this._flag = new BitmapContainerWrapper();
         this._flag.process(this._asset.getChildByName("flag"));
         this._dateField = TextField(this._asset.getChildByName("dateField"));
         this._dateFieldContainer = new ToolTipTargetMovieClip();
         this._dateFieldContainer.tooltipConfig = {"text":"Some tooltip"};
         this._dateFieldContainer.mouseChildren = false;
         ShiftWrapper.shiftDisplayObject(this._dateField,this._dateFieldContainer,true);
         this._reporterField = TextField(this._asset.getChildByName("reporterField"));
         this._abuserField = TextField(this._asset.getChildByName("abuserField"));
         this._statusField = TextField(this._asset.getChildByName("statusField"));
         this._reporterField.mouseEnabled = false;
         this._abuserField.mouseEnabled = false;
         this._statusField.mouseEnabled = false;
      }
      
      private function onBgRollOver(param1:MouseEvent) : void
      {
         if(this._bg != null)
         {
            this._bg.alpha = 1;
         }
      }
      
      private function onBgRollOut(param1:MouseEvent) : void
      {
         if(this._bg != null)
         {
            this._bg.alpha = 0;
         }
      }
      
      public function set data(param1:Object) : void
      {
         this._data = ReportItemVO(param1);
         this.updateData();
      }
      
      public function updateData() : void
      {
         if(this._data != null)
         {
            visible = true;
            if(this._data.lang != null)
            {
               app.resourceManager.replaceBitmapDataFromURL(this._flag.image,FishaoBitmapLoader.getImageLanguageFlagURL(this._data.lang));
            }
            this._dateField.text = this._data.dateShort;
            this._dateFieldContainer.tooltipConfig = {"text":this._data.date};
            this._reporterField.text = this._data.reporterUsername;
            this._abuserField.text = this._data.abuserUsername;
            if(this._data.status == ReportStatusType.CLOSED && this._data.banType != null)
            {
               this._statusField.text = I18n.get(this._data.banType.name);
               this._statusField.textColor = this._data.banType.color;
            }
            else
            {
               this._statusField.text = I18n.get("reportStatus_" + this._data.status.name);
               this._statusField.textColor = this._data.status.color;
            }
         }
         else
         {
            visible = false;
         }
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(ScrollListWrapper.ACTIVATE_WRAPPER));
      }
   }
}

