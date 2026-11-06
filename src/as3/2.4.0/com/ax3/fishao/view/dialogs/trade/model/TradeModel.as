package com.ax3.fishao.view.dialogs.trade.model
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import flash.utils.Dictionary;
   
   public class TradeModel
   {
      
      private var _tradeId:int;
      
      private var _offerItemsLimit:int;
      
      private var _tradeItemsDictionary:Dictionary;
      
      private var _tradeItemsTypeList:Array;
      
      private var _tradeItemsTypeCurrent:String;
      
      private var _tradeSidePlayer:TradeSideInfo;
      
      private var _tradeSideTarget:TradeSideInfo;
      
      public function TradeModel()
      {
         super();
         this.init();
      }
      
      public static function getItemsTypeByResourceType(param1:ResourceType, param2:int) : String
      {
         var _loc3_:String = "";
         switch(param1)
         {
            case ResourceType.BAIT:
               _loc3_ = ETradeItemType.ETIT_BAIT;
               break;
            case ResourceType.ROD:
               _loc3_ = ETradeItemType.ETIT_ROD;
               break;
            case ResourceType.CLOTHE:
               _loc3_ = ETradeItemType.ETIT_LOOK;
               break;
            case ResourceType.FISH:
            case ResourceType.FISH_SHINY:
               _loc3_ = ETradeItemType.ETIT_FISH;
               break;
            case ResourceType.DECORATION:
               _loc3_ = ETradeItemType.ETIT_DECORATION;
               break;
            case ResourceType.FISHBUCKS:
               _loc3_ = ETradeItemType.ETIT_FISHBUCKS;
               break;
            case ResourceType.FOSSIL:
               _loc3_ = ETradeItemType.ETIT_FOSSIL;
               break;
            case ResourceType.FRUIT:
               _loc3_ = ETradeItemType.ETIT_FRUIT;
               break;
            case ResourceType.FISHBOX:
            case ResourceType.FISH_RADAR:
            case ResourceType.FLOAT:
            case ResourceType.LUCK_POTION:
            case ResourceType.MAGIC_WATCH:
            case ResourceType.EXP_BOOSTER:
            case ResourceType.SHINY_POTION:
            case ResourceType.POWER_BOOSTER:
               _loc3_ = ETradeItemType.ETIT_OTHER;
               break;
            case ResourceType.OTHER:
               if(param2 == ResourceType.ID_SHELL)
               {
                  _loc3_ = ETradeItemType.ETIT_SHELL;
               }
               else
               {
                  _loc3_ = ETradeItemType.ETIT_OTHER;
               }
               break;
            default:
               Debug.assert(false,"Couldn\'t proceed with proposed ResourceType on getItemsTypeByResourceType method of TradeModel: " + param1);
         }
         return _loc3_;
      }
      
      public function set tradeSidePlayer(param1:TradeSideInfo) : void
      {
         this._tradeSidePlayer = param1;
      }
      
      public function set tradeSideTarget(param1:TradeSideInfo) : void
      {
         this._tradeSideTarget = param1;
      }
      
      public function get tradeSidePlayer() : TradeSideInfo
      {
         return this._tradeSidePlayer;
      }
      
      public function get tradeSideTarget() : TradeSideInfo
      {
         return this._tradeSideTarget;
      }
      
      public function set offerItemsLimit(param1:int) : void
      {
         if(param1 == this._offerItemsLimit)
         {
            return;
         }
         this._offerItemsLimit = param1;
      }
      
      public function set tradeId(param1:int) : void
      {
         this._tradeId = param1;
      }
      
      public function get tradeId() : int
      {
         return this._tradeId;
      }
      
      public function get tradeItemsDictionary() : Dictionary
      {
         return this._tradeItemsDictionary;
      }
      
      public function set tradeItemsDictionary(param1:Dictionary) : void
      {
         this._tradeItemsDictionary = param1;
      }
      
      public function set tradeItemsTypeList(param1:Array) : void
      {
         this._tradeItemsTypeList = param1;
      }
      
      public function get tradeItemsTypeList() : Array
      {
         return this._tradeItemsTypeList;
      }
      
      public function set tradeItemsTypeCurrent(param1:String) : void
      {
         this._tradeItemsTypeCurrent = param1;
      }
      
      private function init() : void
      {
         this._tradeId = -1;
         this._tradeItemsDictionary = new Dictionary(true);
         this._tradeItemsTypeList = [];
         this._tradeItemsTypeCurrent = "";
         this._offerItemsLimit = -1;
      }
      
      public function moveItemToOffer(param1:TradeItem) : void
      {
         var _loc2_:TradeItem = null;
         var _loc3_:TradeItem = null;
         var _loc4_:Array = this._tradeItemsDictionary[this._tradeItemsTypeCurrent];
         for each(_loc2_ in _loc4_)
         {
            if(_loc2_.id == param1.id && _loc2_.type == param1.type)
            {
               if(_loc2_.quantity == param1.quantity)
               {
                  _loc4_.splice(_loc4_.indexOf(_loc2_),1);
               }
               else
               {
                  _loc2_.quantity -= param1.quantity;
               }
               if(param1.type.isQuantitySeparable || param1.type == ResourceType.DECORATION)
               {
                  for each(_loc3_ in this._tradeSidePlayer.items)
                  {
                     if(param1.id == _loc3_.id && param1.type == _loc3_.type)
                     {
                        _loc3_.quantity += param1.quantity;
                        param1 = null;
                        break;
                     }
                  }
               }
               break;
            }
         }
         if(param1 != null)
         {
            this._tradeSidePlayer.items.push(param1);
         }
         if(this._tradeSidePlayer.items.length > this._offerItemsLimit)
         {
            this.removeItemFromOffer(this._tradeSidePlayer.items[0]);
         }
         GameSwf.instance.managerTrade.updateOffer();
      }
      
      public function removeItemFromOffer(param1:TradeItem) : void
      {
         var _loc2_:TradeItem = null;
         this._tradeSidePlayer.items.splice(this._tradeSidePlayer.items.indexOf(param1),1);
         var _loc3_:String = getItemsTypeByResourceType(param1.type,param1.id);
         var _loc4_:Array = this._tradeItemsDictionary[_loc3_];
         if(param1.type.isQuantitySeparable || param1.type == ResourceType.DECORATION)
         {
            for each(_loc2_ in _loc4_)
            {
               if(param1.id == _loc2_.id && param1.type == _loc2_.type)
               {
                  _loc2_.quantity += param1.quantity;
                  param1 = null;
                  break;
               }
            }
         }
         if(param1 != null)
         {
            _loc4_.push(param1);
         }
         GameSwf.instance.managerTrade.updateOffer();
      }
      
      public function getSideByLogin(param1:String) : TradeSideInfo
      {
         var _loc2_:TradeSideInfo = null;
         switch(param1)
         {
            case this._tradeSidePlayer.login:
               _loc2_ = this._tradeSidePlayer;
               break;
            case this._tradeSideTarget.login:
               _loc2_ = this._tradeSideTarget;
         }
         return _loc2_;
      }
      
      public function resetStatuses() : void
      {
         this._tradeSidePlayer.resetStatus();
         this._tradeSideTarget.resetStatus();
      }
   }
}

