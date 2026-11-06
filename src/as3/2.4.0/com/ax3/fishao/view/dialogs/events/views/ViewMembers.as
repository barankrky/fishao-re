package com.ax3.fishao.view.dialogs.events.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import com.ax3.fishao.view.dialogs.events.model.EEventType;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ViewMembers extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _items:Array;
      
      private var _itemsOnPage:uint;
      
      private var _labelPage:TextField;
      
      private var _buttonPrev:FrameButtonWrapper;
      
      private var _buttonNext:FrameButtonWrapper;
      
      private var _labelPosition:TextField;
      
      private var _labelNameUser:TextField;
      
      private var _labelCriteria:TextField;
      
      private var _labelNameFish:TextField;
      
      private var _labelRewardWithAutofit:TextFieldAutofitWrapper;
      
      public function ViewMembers(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonPrev() : FrameButtonWrapper
      {
         return this._buttonPrev;
      }
      
      public function get buttonNext() : FrameButtonWrapper
      {
         return this._buttonNext;
      }
      
      public function get labelPage() : TextField
      {
         return this._labelPage;
      }
      
      public function get itemsOnPage() : uint
      {
         return this._itemsOnPage;
      }
      
      public function set items(param1:Array) : void
      {
         var _loc2_:Point = null;
         var _loc3_:IView = null;
         if(this._items == param1)
         {
            return;
         }
         this._items = param1;
         var _loc4_:Point = new Point(0,34);
         _loc2_ = new Point(_loc4_.x,_loc4_.y);
         var _loc5_:int = 0;
         while(_loc5_ < this._items.length)
         {
            if(_loc5_ % this._itemsOnPage == 0)
            {
               _loc2_.y = _loc4_.y;
            }
            _loc3_ = this._items[_loc5_];
            this._source.addChild(_loc3_.source);
            _loc3_.source.x = _loc2_.x;
            _loc3_.source.y = _loc2_.y;
            _loc2_.y += _loc3_.source.height;
            _loc5_++;
         }
      }
      
      public function set eventType(param1:String) : void
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case EEventType.EET_CATCH_MOST_FISH_SHINIES:
            case EEventType.EET_CATCH_MOST_FISH_WITH_STAR:
            case EEventType.EET_CATCH_MOST_FISH_WITH_TYPE:
            case EEventType.EET_CATCH_MOST_FISH:
               _loc2_ = EStringType.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_CAUGHT;
               break;
            case EEventType.EET_WIN_MOST_TOURNAMENTS:
            case EEventType.EET_COLLECT_MOST_SHELLS:
            case EEventType.EET_USE_MOST_GADGETS:
            case EEventType.EET_COLLECT_MOST_FRUITS:
               _loc2_ = EStringType.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_COUNT;
               break;
            case EEventType.EET_CATCH_BIGGEST_FISH:
            case EEventType.EET_CATCH_BIGGEST_FISH_WITH_TYPE:
               _loc2_ = EStringType.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_SIZE;
               break;
            case EEventType.EET_SPEND_MOST_FISHCOINS:
            case EEventType.EET_SPEND_MOST_FISHBUCKS:
               _loc2_ = EStringType.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_SPEND;
               break;
            case EEventType.EET_GAIN_MOST_EXP:
               _loc2_ = EStringType.EST_DIALOG_EVENTS_MEMBERS_CRITERIA_EXP;
               break;
            default:
               Debug.assert(false);
         }
         if(param1 == EEventType.EET_CATCH_BIGGEST_FISH)
         {
            this._labelCriteria.width = 80;
            this._labelNameFish.visible = true;
         }
         else
         {
            this._labelCriteria.width = 280;
            this._labelNameFish.visible = false;
         }
         this._labelCriteria.text = I18n.get(_loc2_);
         this._labelPosition.text = I18n.get(EStringType.EST_DIALOG_EVENTS_MEMBERS_POSITION);
         this._labelNameUser.text = I18n.get(EStringType.EST_DIALOG_EVENTS_MEMBERS_NAME);
         this._labelNameFish.text = I18n.get(EStringType.EST_DIALOG_EVENTS_MEMBERS_NAME_FISH);
         this._labelRewardWithAutofit.text = I18n.get(EStringType.EST_DIALOG_EVENTS_MEMBERS_REWARD);
      }
      
      private function init() : void
      {
         var labelReward:TextField = null;
         this._items = [];
         this._itemsOnPage = 8;
         this._labelPage = Debug.assertProperty(this._source,"labelPage",TextField);
         this._buttonNext = new FrameButtonWrapper();
         this._buttonNext.process(Debug.assertProperty(this._source,"buttonNext",DisplayObjectContainer));
         this._buttonNext.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonNext,param1);
         };
         this._buttonPrev = new FrameButtonWrapper();
         this._buttonPrev.process(Debug.assertProperty(this._source,"buttonPrev",DisplayObjectContainer));
         this._buttonPrev.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonPrev,param1);
         };
         this._labelPosition = Debug.assertProperty(this._source,"labelPosition",TextField);
         this._labelNameUser = Debug.assertProperty(this._source,"labelNameUser",TextField);
         this._labelCriteria = Debug.assertProperty(this._source,"labelCriteria",TextField);
         this._labelNameFish = Debug.assertProperty(this._source,"labelNameFish",TextField);
         labelReward = Debug.assertProperty(this._source,"labelReward",TextField);
         this._labelRewardWithAutofit = new TextFieldAutofitWrapper(labelReward);
      }
      
      override public function cleanup() : void
      {
         this._buttonNext.handler = null;
         this._buttonPrev.handler = null;
         super.cleanup();
      }
   }
}

