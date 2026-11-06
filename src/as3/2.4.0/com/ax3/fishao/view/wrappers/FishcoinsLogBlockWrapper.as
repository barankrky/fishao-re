package com.ax3.fishao.view.wrappers
{
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl.MiddleTextFieldWrapper;
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.utils.I18n;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class FishcoinsLogBlockWrapper extends Sprite implements ILogsBlockWrapper
   {
      
      private const notTransform:Array = ["COUNT","AMOUNT","STEP","NAME"];
      
      private var _asset:MovieClip;
      
      public var date:TextField;
      
      private var _dateFieldContainer:ToolTipTargetMovieClip;
      
      public var description:MiddleTextFieldWrapper;
      
      private var _count:TextField;
      
      private var _coinIcon:MovieClip;
      
      public function FishcoinsLogBlockWrapper(param1:Class)
      {
         super();
         this._asset = new param1();
         addChild(this._asset);
         this.date = TextField(this._asset.getChildByName("date"));
         this._dateFieldContainer = new ToolTipTargetMovieClip();
         this._dateFieldContainer.tooltipConfig = {"text":""};
         this._dateFieldContainer.mouseChildren = false;
         ShiftWrapper.shiftDisplayObject(this.date,this._dateFieldContainer,true);
         this.description = new MiddleTextFieldWrapper();
         this.description.process(this._asset.getChildByName("description"));
         this._count = TextField(this._asset.getChildByName("count"));
         this._coinIcon = MovieClip(this._asset.getChildByName("coinIcon"));
      }
      
      public function set count(param1:int) : void
      {
         this._count.text = param1.toString();
         this._coinIcon.x = this._count.x + this._count.width + 5;
      }
      
      public function update(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:RegExp = null;
         var _loc5_:Object = null;
         if(param1.hasOwnProperty("fishcoinFrame"))
         {
            this._coinIcon.gotoAndStop(param1.fishcoinFrame);
         }
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
         if(param1.hasOwnProperty("desc"))
         {
            _loc2_ = String(param1.desc).split("~");
            _loc3_ = I18n.get(_loc2_[0]);
            _loc4_ = /#([A-Z_]+)#/;
            _loc5_ = _loc4_.exec(_loc3_);
            if(_loc5_ != null)
            {
               if(_loc2_.length > 1)
               {
                  if(this.notTransform.indexOf(_loc5_[1]) == -1)
                  {
                     _loc5_[1] = I18n.get(String(_loc5_[1]).toLowerCase() + "_" + _loc2_[1]);
                  }
                  else
                  {
                     _loc5_[1] = _loc2_[1];
                  }
               }
               _loc3_ = _loc3_.replace(_loc5_[0],_loc5_[1]);
               if(_loc2_.length > 2 && _loc3_.indexOf("#COUNT#") != -1)
               {
                  _loc3_ = _loc3_.replace("#COUNT#",_loc2_[2]);
               }
            }
            this.description.text = _loc3_;
         }
         else
         {
            this.description.text = "";
         }
         if(param1.hasOwnProperty("amount"))
         {
            this.count = (param1.type == "spend" ? -1 : 1) * param1.amount;
         }
         else
         {
            this.count = 0;
         }
      }
   }
}

