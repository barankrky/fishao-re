package com.ax3.fishao.view.dialogs.trade.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeItemState;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeItemType;
   import com.ax3.fishao.view.dialogs.trade.model.TradeItem;
   import com.ax3.fishao.view.dialogs.trade.model.TradeModel;
   import com.ax3.fishao.view.dialogs.trade.views.ViewTradeInventory;
   import com.ax3.fishao.view.wrappers.impl.FishaoLongDropdown;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class ControllerTradeInventory extends Controller
   {
      
      private var _view:ViewTradeInventory;
      
      private var _pageCurrent:int;
      
      private var _pageTotal:int;
      
      private var _tradeItemsType:String;
      
      private var _tradeItemsControllers:Array;
      
      private var _tradeModel:TradeModel;
      
      private var _dropdown:FishaoLongDropdown;
      
      public function ControllerTradeInventory(param1:DisplayObjectContainer)
      {
         this._view = new ViewTradeInventory(this,param1);
         super(this._view);
         this.init();
      }
      
      private static function getDropdownTranslations(param1:Array) : Vector.<String>
      {
         var _loc2_:String = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in param1)
         {
            switch(_loc2_)
            {
               case ETradeItemType.ETIT_BAIT:
                  _loc3_.push(I18n.get(EStringType.EST_DIALOG_TRADE_TAB_BAITS));
                  break;
               case ETradeItemType.ETIT_DECORATION:
                  _loc3_.push(I18n.get(EStringType.EST_DIALOG_TRADE_TAB_DECORATIONS));
                  break;
               case ETradeItemType.ETIT_FISH:
                  _loc3_.push(I18n.get(EStringType.EST_DIALOG_TRADE_TAB_FISHES));
                  break;
               case ETradeItemType.ETIT_FISHBUCKS:
                  _loc3_.push(I18n.get(EStringType.EST_DIALOG_TRADE_TAB_FISHBUCKS));
                  break;
               case ETradeItemType.ETIT_FRUIT:
                  _loc3_.push(I18n.get(EStringType.EST_DIALOG_TRADE_TAB_FRUITS));
                  break;
               case ETradeItemType.ETIT_SHELL:
                  _loc3_.push(I18n.get(EStringType.EST_DIALOG_TRADE_TAB_SHELLS));
                  break;
               case ETradeItemType.ETIT_LOOK:
                  _loc3_.push(I18n.get(EStringType.EST_DIALOG_TRADE_TAB_LOOKS));
                  break;
               case ETradeItemType.ETIT_OTHER:
                  _loc3_.push(I18n.get(EStringType.EST_DIALOG_TRADE_TAB_OTHER));
                  break;
               case ETradeItemType.ETIT_ROD:
                  _loc3_.push(I18n.get(EStringType.EST_DIALOG_TRADE_TAB_RODS));
                  break;
               case ETradeItemType.ETIT_FOSSIL:
                  _loc3_.push(I18n.get(EStringType.EST_DIALOG_TRADE_TAB_FOSSILS));
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function set tradeItemsType(param1:String) : void
      {
         if(param1 == this._tradeItemsType)
         {
            return;
         }
         switch(param1)
         {
            case ETradeItemType.ETIT_BAIT:
            case ETradeItemType.ETIT_DECORATION:
            case ETradeItemType.ETIT_FISH:
            case ETradeItemType.ETIT_FISHBUCKS:
            case ETradeItemType.ETIT_LOOK:
            case ETradeItemType.ETIT_OTHER:
            case ETradeItemType.ETIT_ROD:
            case ETradeItemType.ETIT_FOSSIL:
            case ETradeItemType.ETIT_FRUIT:
            case ETradeItemType.ETIT_SHELL:
               this._tradeItemsType = param1;
               this._tradeModel.tradeItemsTypeCurrent = this._tradeItemsType;
               break;
            default:
               Debug.assert(false,"Couldn\'t select provided TradeItemType: " + param1);
         }
      }
      
      private function get сurrentPageItems() : Array
      {
         var _loc1_:int = this._pageCurrent * this._view.itemsOnPage;
         var _loc2_:Array = [];
         var _loc3_:int = _loc1_;
         while(_loc3_ < this._tradeItemsControllers.length && _loc3_ < _loc1_ + this._view.itemsOnPage)
         {
            _loc2_.push(this._tradeItemsControllers[_loc3_]);
            _loc3_++;
         }
         return _loc2_;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._view.buttonPagePrevious:
                  --this._pageCurrent;
                  this.updateGraphics();
                  break;
               case this._view.buttonPageNext:
                  ++this._pageCurrent;
                  this.updateGraphics();
                  break;
               case this._view.viewDropdown:
                  this._pageCurrent = 0;
                  _loc3_ = this._view.viewDropdown.selectedItemIndex;
                  this.tradeItemsType = this._tradeModel.tradeItemsTypeList[_loc3_];
                  this.updateData();
                  this.updateGraphics();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         this._tradeItemsControllers = [];
         this._tradeModel = GameSwf.instance.managerTrade.tradeModel;
         this.tradeItemsType = this._tradeModel.tradeItemsTypeList[0];
         var _loc1_:Vector.<String> = getDropdownTranslations(this._tradeModel.tradeItemsTypeList);
         this._dropdown = this._view.viewDropdown;
         this._dropdown.init();
         this._dropdown.text = _loc1_[0];
         this._dropdown.create(_loc1_);
         this.updateData();
         this.updateGraphics();
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_TRADE_OFFER_CHANGED_OWNER:
               this.updateData();
               this.updateGraphics();
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function updateData() : void
      {
         var _loc1_:TradeItem = null;
         var _loc2_:ControllerTradeItem = null;
         this.cleanupItems();
         var _loc3_:Array = this._tradeModel.tradeItemsDictionary[this._tradeItemsType];
         this._tradeItemsControllers = [];
         for each(_loc1_ in _loc3_)
         {
            _loc2_ = new ControllerTradeItem(_loc1_,new gViewTradeItem());
            _loc2_.state = ETradeItemState.ETIS_INVENTORY;
            this._tradeItemsControllers.push(_loc2_);
         }
         this._pageTotal = limit(Math.ceil(this._tradeItemsControllers.length / this._view.itemsOnPage),1,int.MAX_VALUE);
      }
      
      private function updateGraphics() : void
      {
         var _loc1_:ControllerTradeItem = null;
         var _loc2_:Array = [];
         var _loc3_:Array = this.сurrentPageItems;
         if(_loc3_.length == 0 && this._pageCurrent != 0)
         {
            --this._pageCurrent;
            _loc3_ = this.сurrentPageItems;
         }
         for each(_loc1_ in _loc3_)
         {
            _loc2_.push(_loc1_.view.source);
         }
         this._view.items = _loc2_;
         this._view.setPageLabel(this._pageCurrent + 1,this._pageTotal);
         this.updateNavigationButtons();
      }
      
      private function updateNavigationButtons() : void
      {
         if(this._pageCurrent == 0)
         {
            this._view.buttonPagePrevious.disable();
         }
         else
         {
            this._view.buttonPagePrevious.enable();
         }
         if(this._pageCurrent == this._pageTotal - 1)
         {
            this._view.buttonPageNext.disable();
         }
         else
         {
            this._view.buttonPageNext.enable();
         }
      }
      
      private function cleanupItems() : void
      {
         var _loc1_:ControllerTradeItem = null;
         if(this._tradeItemsControllers == null)
         {
            return;
         }
         for each(_loc1_ in this._tradeItemsControllers)
         {
            _loc1_.cleanup();
            _loc1_ = null;
         }
         this._tradeItemsControllers = null;
      }
      
      override public function cleanup() : void
      {
         this.cleanupItems();
         this._pageCurrent = undefined;
         this._pageTotal = undefined;
         this._tradeItemsType = null;
         this._tradeModel = null;
         super.cleanup();
      }
   }
}

