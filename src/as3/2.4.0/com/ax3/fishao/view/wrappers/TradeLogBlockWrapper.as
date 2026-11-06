package com.ax3.fishao.view.wrappers
{
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.utils.I18n;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class TradeLogBlockWrapper extends Sprite implements ILogsBlockWrapper
   {
      
      private var _asset:MovieClip;
      
      public var date:TextField;
      
      private var _dateFieldContainer:ToolTipTargetMovieClip;
      
      public var username:TextField;
      
      public var itemTraded:TextField;
      
      public var itemReceived:TextField;
      
      private var _tradedContainer:ToolTipTargetMovieClip = new ToolTipTargetMovieClip();
      
      private var _receivedContainer:ToolTipTargetMovieClip = new ToolTipTargetMovieClip();
      
      public function TradeLogBlockWrapper(param1:Class)
      {
         super();
         this._asset = new param1();
         addChild(this._asset);
         this.date = TextField(this._asset.getChildByName("date"));
         this._dateFieldContainer = new ToolTipTargetMovieClip();
         this._dateFieldContainer.tooltipConfig = {"text":""};
         this._dateFieldContainer.mouseChildren = false;
         ShiftWrapper.shiftDisplayObject(this.date,this._dateFieldContainer,true);
         this.username = TextField(this._asset.getChildByName("username"));
         this.itemTraded = TextField(this._asset.getChildByName("itemTraded"));
         this.itemReceived = TextField(this._asset.getChildByName("itemReceived"));
         this.itemTraded.mouseEnabled = false;
         this.itemTraded.parent.addChild(this._tradedContainer);
         this._tradedContainer.addChild(this.itemTraded);
         this.itemReceived.mouseEnabled = false;
         this.itemReceived.parent.addChild(this._receivedContainer);
         this._receivedContainer.addChild(this.itemReceived);
      }
      
      public function update(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
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
         this.username.text = param1.opponent;
         this.itemTraded.text = "";
         var _loc4_:String = "";
         if(param1.hasOwnProperty("givenResources"))
         {
            _loc2_ = param1.givenResources;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               if(_loc3_ == 0)
               {
                  this.itemTraded.text = I18n.get(this.getItemCode(_loc2_[_loc3_])) + " (" + _loc2_[_loc3_]["quantity"] + ")" + (_loc2_.length > 1 ? " ..." : "");
               }
               _loc4_ += I18n.get(this.getItemCode(_loc2_[_loc3_])) + " (" + _loc2_[_loc3_]["quantity"] + ")\n";
               _loc3_++;
            }
         }
         this._tradedContainer.tooltipConfig = {"text":_loc4_};
         this.itemReceived.text = "";
         _loc4_ = "";
         if(param1.hasOwnProperty("receivedResources"))
         {
            _loc2_ = param1.receivedResources;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               if(_loc3_ == 0)
               {
                  this.itemReceived.text = I18n.get(this.getItemCode(_loc2_[_loc3_])) + " (" + _loc2_[_loc3_]["quantity"] + ")" + (_loc2_.length > 1 ? " ..." : "");
               }
               _loc4_ += I18n.get(this.getItemCode(_loc2_[_loc3_])) + " (" + _loc2_[_loc3_]["quantity"] + ")\n";
               _loc3_++;
            }
         }
         this._receivedContainer.tooltipConfig = {"text":_loc4_};
      }
      
      private function getItemCode(param1:Object) : String
      {
         var _loc2_:int = int(param1["id"]);
         switch(param1["type"])
         {
            case ResourceType.BAIT.id:
               return "bait_" + _loc2_;
            case ResourceType.FISH.id:
               return "fish_" + _loc2_;
            case ResourceType.FISHCOINS.id:
               return "fishcoins_" + _loc2_;
            case ResourceType.FISHBUCKS.id:
               return "fishbucks_" + _loc2_;
            case ResourceType.DECORATION.id:
               return "decoration_" + _loc2_;
            case ResourceType.OTHER.id:
            case ResourceType.FISH_RADAR.id:
            case ResourceType.LUCK_POTION.id:
            case ResourceType.MAGIC_WATCH.id:
            case ResourceType.EXP_BOOSTER.id:
            case ResourceType.SHINY_POTION.id:
            case ResourceType.POWER_BOOSTER.id:
            case ResourceType.FISHBOX.id:
               return "resource_" + _loc2_;
            case ResourceType.ROD.id:
               return "rod_" + param1["rodInfoId"];
            case ResourceType.CLOTHE.id:
               return "looks_" + _loc2_;
            case ResourceType.FLOAT.id:
               return "float_" + _loc2_;
            case ResourceType.FRUIT.id:
               return "fruit_" + _loc2_;
            default:
               return "unknown";
         }
      }
   }
}

