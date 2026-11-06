package com.ax3.fishao.view.wrappers
{
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl.MiddleTextFieldWrapper;
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsString;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class ChatLogBlockWrapper extends Sprite implements ILogsBlockWrapper
   {
      
      private var _asset:MovieClip;
      
      public var date:TextField;
      
      private var _dateFieldContainer:ToolTipTargetMovieClip;
      
      public var message:MiddleTextFieldWrapper;
      
      public function ChatLogBlockWrapper(param1:Class)
      {
         super();
         this._asset = new param1();
         addChild(this._asset);
         this.date = TextField(this._asset.getChildByName("date"));
         this._dateFieldContainer = new ToolTipTargetMovieClip();
         this._dateFieldContainer.tooltipConfig = {"text":""};
         this._dateFieldContainer.mouseChildren = false;
         ShiftWrapper.shiftDisplayObject(this.date,this._dateFieldContainer,true);
         this.message = new MiddleTextFieldWrapper();
         this.message.process(this._asset.getChildByName("message"));
      }
      
      public function update(param1:Object) : void
      {
         var _loc2_:String = null;
         if(param1.hasOwnProperty("timeAgoSec"))
         {
            this.date.text = I18n.formatShortTimestamp(param1.timeAgoSec,true);
            this._dateFieldContainer.tooltipConfig = {"text":I18n.formatFullTimestamp(param1.timeAgoSec,true)};
         }
         else
         {
            this.date.text = "";
            this._dateFieldContainer.tooltipConfig = {"text":""};
         }
         if(param1.hasOwnProperty("msg"))
         {
            _loc2_ = UtilsString.restoreEscapeSqlChars(param1.msg);
            this.message.text = _loc2_;
         }
      }
   }
}

