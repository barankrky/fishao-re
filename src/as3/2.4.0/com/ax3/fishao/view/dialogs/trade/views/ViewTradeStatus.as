package com.ax3.fishao.view.dialogs.trade.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.types.TradeStatusType;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class ViewTradeStatus extends ViewBase
   {
      
      private static const ICON_GAP:int = 5;
      
      private static const ICON_FRAME_NAME_READY:String = "ready";
      
      private static const ICON_FRAME_NAME_NOT_READY:String = "notReady";
      
      private var _source:DisplayObjectContainer;
      
      private var _icon:MovieClip;
      
      private var _label:TextField;
      
      private var _status:String;
      
      public function ViewTradeStatus(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set status(param1:String) : void
      {
         if(this._status == param1)
         {
            return;
         }
         this._status = param1;
         this.updateStatus();
      }
      
      private function init() : void
      {
         this._icon = Debug.assertProperty(this._source,"viewIcon",MovieClip);
         this._label = Debug.assertProperty(this._source,"label",TextField);
      }
      
      private function updateStatus() : void
      {
         Debug.assertNotEqual(this._status,null);
         if(this._status == TradeStatusType.CONFIRM_OFFER)
         {
            this._icon.gotoAndStop(ICON_FRAME_NAME_READY);
         }
         else
         {
            this._icon.gotoAndStop(ICON_FRAME_NAME_NOT_READY);
         }
         this._label.text = I18n.get(EStringType.EST_DIALOG_TRADE_TRADE_STATUS.replace(EStringTypeStubs.ESTS_STATUS,this._status));
         this.updateIconPosition();
      }
      
      private function updateIconPosition() : void
      {
         var _loc1_:Rectangle = this._label.getCharBoundaries(0);
         this._icon.x = this._label.x + _loc1_.x - ICON_GAP - this._icon.width;
      }
   }
}

