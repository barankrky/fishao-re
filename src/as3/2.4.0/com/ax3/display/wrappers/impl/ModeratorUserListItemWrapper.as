package com.ax3.display.wrappers.impl
{
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.model.types.BanType;
   import com.ax3.fishao.model.vo.ModeratorUserItemVO;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ModeratorUserListItemWrapper extends Sprite implements IAssetWrapper, IListItemWrapper, IToolTipTarget
   {
      
      private static var tooltipConfig:Object;
      
      private var _asset:DisplayObjectContainer;
      
      private var _data:ModeratorUserItemVO;
      
      private var _flag:BitmapContainerWrapper;
      
      private var _usernameField:TextField;
      
      private var _timeLeftField:TextField;
      
      private var _statusField:TextField;
      
      private var _bg:DisplayObject;
      
      public function ModeratorUserListItemWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         buttonMode = true;
         useHandCursor = true;
         mouseChildren = false;
         this._asset = DisplayObjectContainer(param1);
         addChild(this._asset);
         this._flag = new BitmapContainerWrapper();
         this._flag.process(this._asset.getChildByName("flag"));
         this._timeLeftField = TextField(this._asset.getChildByName("timeLeftField"));
         this._usernameField = TextField(this._asset.getChildByName("usernameField"));
         this._statusField = TextField(this._asset.getChildByName("statusField"));
         this._bg = this._asset.getChildByName("bg");
         if(this._bg != null)
         {
            this._bg.alpha = 0;
         }
         if(tooltipConfig == null)
         {
            tooltipConfig = {"text":I18n.get("view_profile_tooltip")};
         }
         addEventListener(MouseEvent.ROLL_OVER,this.onBgRollOver,false,0,true);
         addEventListener(MouseEvent.ROLL_OUT,this.onBgRollOut,false,0,true);
         addEventListener(MouseEvent.CLICK,this.onClick);
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
      
      private function onClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(ScrollListWrapper.ACTIVATE_WRAPPER));
      }
      
      public function set data(param1:Object) : void
      {
         this._data = ModeratorUserItemVO(param1);
         this.updateData();
      }
      
      public function updateData() : void
      {
         if(this._data != null)
         {
            visible = true;
            app.resourceManager.replaceBitmapDataFromURL(this._flag.image,FishaoBitmapLoader.convertImageNameURL("flag/flag_" + this._data.lang + ".png"));
            if(this._data.timeLeftSec > 0)
            {
               this._timeLeftField.text = this._data.timeLeft;
            }
            else
            {
               this._timeLeftField.text = I18n.get("no_ban_time_left");
               this._data.banType = BanType.NORMAL;
            }
            this._usernameField.text = this._data.username;
            this._statusField.text = I18n.get(this._data.banType.name);
            this._statusField.textColor = this._data.banType.color;
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
      
      public function getTooltipType() : TooltipType
      {
         return TooltipType.TEXT_TOOLTIP;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         return tooltipConfig;
      }
   }
}

