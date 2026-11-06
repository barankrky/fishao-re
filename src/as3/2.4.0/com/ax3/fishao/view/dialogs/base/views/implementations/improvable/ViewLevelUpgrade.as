package com.ax3.fishao.view.dialogs.base.views.implementations.improvable
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ViewLevelUpgrade extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _labelTitle:TextField;
      
      private var _labelTime:TextField;
      
      private var _labelTimeValue:TextField;
      
      private var _labelBuy:TextField;
      
      private var _buttonBuy:FrameButtonWrapper;
      
      public function ViewLevelUpgrade(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set timeLeft(param1:uint) : void
      {
         this._labelTimeValue.text = I18n.formatTimestampToClockView(param1);
      }
      
      public function set upgradePrice(param1:uint) : void
      {
         this._buttonBuy.label = param1.toString();
      }
      
      public function get buttonBuy() : FrameButtonWrapper
      {
         return this._buttonBuy;
      }
      
      public function onUpgradingStatusChange(param1:Boolean, param2:uint) : void
      {
         this._labelTime.text = I18n.get(param1 ? EStringType.EST_COMMON_TIME_LEFT : EStringType.EST_IMPROVABLE_LEVEL_TIME_DEFAULT);
         var _loc3_:String = "";
         if(param1)
         {
            _loc3_ = I18n.get(EStringType.EST_IMPROVABLE_LEVEL_TITLE_UPGRADING);
         }
         else
         {
            _loc3_ = I18n.get(EStringType.EST_IMPROVABLE_LEVEL_TITLE_DEFAULT);
            _loc3_ = _loc3_.replace(EStringTypeStubs.ESTS_LEVEL,param2);
         }
         this._labelTitle.text = _loc3_;
         this._labelBuy.visible = param1;
      }
      
      private function init() : void
      {
         this._labelTitle = Debug.assertProperty(this._source,"labelTitle",TextField);
         this._labelTime = Debug.assertProperty(this._source,"labelTime",TextField);
         this._labelTimeValue = Debug.assertProperty(this._source,"labelTimeValue",TextField);
         this._labelBuy = Debug.assertProperty(this._source,"labelBuy",TextField);
         this._labelBuy.text = I18n.get(EStringType.EST_IMPROVABLE_LEVEL_BUY);
         Debug.assertProperty(this._source,"buttonBuy",DisplayObjectContainer);
         this._buttonBuy = new FrameButtonWrapper();
         this._buttonBuy.process(Debug.assertProperty(this._source,"buttonBuy",DisplayObjectContainer));
         this._buttonBuy.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonBuy,param1);
         };
      }
      
      override public function cleanup() : void
      {
         this._buttonBuy.handler = null;
         super.cleanup();
      }
   }
}

