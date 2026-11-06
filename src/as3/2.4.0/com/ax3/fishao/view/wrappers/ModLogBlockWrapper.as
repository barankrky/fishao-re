package com.ax3.fishao.view.wrappers
{
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.utils.I18n;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class ModLogBlockWrapper extends Sprite implements ILogsBlockWrapper
   {
      
      private var _asset:MovieClip;
      
      public var date:TextField;
      
      private var _dateFieldContainer:ToolTipTargetMovieClip;
      
      public var moderator:TextField;
      
      public var banType:TextField;
      
      public var reason:TextField;
      
      private var _banTypeContainer:ToolTipTargetMovieClip = new ToolTipTargetMovieClip();
      
      private var _reasonContainer:ToolTipTargetMovieClip = new ToolTipTargetMovieClip();
      
      public function ModLogBlockWrapper(param1:Class)
      {
         super();
         this._asset = new param1();
         addChild(this._asset);
         this.date = TextField(this._asset.getChildByName("date"));
         this._dateFieldContainer = new ToolTipTargetMovieClip();
         this._dateFieldContainer.tooltipConfig = {"text":""};
         this._dateFieldContainer.mouseChildren = false;
         ShiftWrapper.shiftDisplayObject(this.date,this._dateFieldContainer,true);
         this.moderator = TextField(this._asset.getChildByName("moderator"));
         this.banType = TextField(this._asset.getChildByName("banType"));
         this.reason = TextField(this._asset.getChildByName("reason"));
         this.banType.mouseEnabled = false;
         this.banType.parent.addChild(this._banTypeContainer);
         this._banTypeContainer.addChild(this.banType);
         this.reason.mouseEnabled = false;
         this.reason.parent.addChild(this._reasonContainer);
         this._reasonContainer.addChild(this.reason);
      }
      
      public function update(param1:Object) : void
      {
         if(param1.hasOwnProperty("timestamp_sec"))
         {
            this.date.text = I18n.formatShortTimestamp(param1.timestamp_sec,true);
            this._dateFieldContainer.tooltipConfig = {"text":I18n.formatFullTimestamp(param1.timestamp_sec,true)};
         }
         else
         {
            this.date.text = "";
            this._dateFieldContainer.tooltipConfig = {"text":""};
         }
         this.moderator.text = param1.moderator_login;
         this.banType.text = I18n.get("adminMsgSubj_" + param1.ban_type);
         if(param1.hasOwnProperty("period"))
         {
            this._banTypeContainer.tooltipConfig = {"text":I18n.get("ban_" + param1.period)};
         }
         this.reason.text = param1.ban_description;
         this._reasonContainer.tooltipConfig = {"text":param1.ban_description};
      }
   }
}

