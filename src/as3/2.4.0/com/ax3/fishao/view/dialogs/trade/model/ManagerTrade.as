package com.ax3.fishao.view.dialogs.trade.model
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.dialogs.LoadingScreen;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.model.info.UserBait;
   import com.ax3.fishao.model.info.UserDecoration;
   import com.ax3.fishao.model.info.UserLooksResource;
   import com.ax3.fishao.model.info.UserResource;
   import com.ax3.fishao.model.info.UserRod;
   import com.ax3.fishao.model.types.TradeStatusType;
   import com.ax3.fishao.tutorial.ETutorialType;
   import com.ax3.fishao.tutorial.ManagerTutorial;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.InventorySwfDialog;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.net.LoadingIndicator;
   import com.brokenfunction.json.decodeJson;
   import flash.utils.Dictionary;
   import protocol.api.trade.FscExtensionTrade;
   import protocol.api.trade.accept.ResponseTradeAccept;
   import protocol.api.trade.cancel.ResponseTradeCancel;
   import protocol.api.trade.offerConfirm.ResponseTradeOfferConfirm;
   import protocol.api.trade.offerReset.ResponseTradeOfferReset;
   import protocol.api.trade.offerReview.ResponseTradeOfferReview;
   import protocol.api.trade.offerUpdate.ResponseTradeOfferUpdate;
   import protocol.api.trade.start.ResponseTradeStart;
   import protocol.api.trade.success.ResponseTradeSuccess;
   
   public class ManagerTrade extends ManagerBase
   {
      
      private var _tradeModel:TradeModel;
      
      private var _extensionTrade:FscExtensionTrade;
      
      private var _loadingIndicator:LoadingIndicator;
      
      private var _managerTutorial:ManagerTutorial;
      
      public function ManagerTrade()
      {
         super();
         this._extensionTrade = FishaoFscModelManager.fscModel.extensionTrade;
         addResponseHandler(ResponseTradeStart,this.onTradeStart);
         addResponseHandler(ResponseTradeAccept,this.onTradeAccept);
         addResponseHandler(ResponseTradeOfferUpdate,this.onTradeOfferUpdate);
         addResponseHandler(ResponseTradeOfferConfirm,this.onTradeOfferConfirm);
         addResponseHandler(ResponseTradeOfferReview,this.onTradeOfferReview);
         addResponseHandler(ResponseTradeOfferReset,this.onTradeOfferReset);
         addResponseHandler(ResponseTradeCancel,this.onTradeCancel);
         addResponseHandler(ResponseTradeSuccess,this.onTradeSuccess);
         this._loadingIndicator = new LoadingIndicator(LoadingScreen.TYPE_SIMPLE);
      }
      
      private static function get tradeBaits() : Array
      {
         var _loc1_:UserBait = null;
         var _loc2_:TradeItem = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<UserBait> = app.user.inventory.baits;
         for each(_loc1_ in _loc4_)
         {
            if(UserBait.isAvailableForTrade(_loc1_))
            {
               _loc2_ = new TradeItem();
               _loc2_.id = _loc1_.id;
               _loc2_.type = ResourceType.BAIT;
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function get tradeLooks() : Array
      {
         var _loc1_:UserLooksResource = null;
         var _loc2_:TradeItem = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<UserLooksResource> = app.user.inventory.looks;
         for each(_loc1_ in _loc4_)
         {
            _loc2_ = new TradeItem();
            _loc2_.id = _loc1_.id;
            _loc2_.type = ResourceType.CLOTHE;
            _loc2_.quantity = _loc1_.quantity;
            _loc2_.update();
            _loc3_.push(_loc2_);
         }
         return _loc3_;
      }
      
      private static function get tradeOthers() : Array
      {
         var _loc1_:UserResource = null;
         var _loc2_:TradeItem = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<UserResource> = app.user.inventory.other;
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.type == ResourceType.FISH_RADAR.id || _loc1_.type == ResourceType.FLOAT.id || _loc1_.type == ResourceType.LUCK_POTION.id || _loc1_.type == ResourceType.MAGIC_WATCH.id || _loc1_.type == ResourceType.EXP_BOOSTER.id || _loc1_.type == ResourceType.SHINY_POTION.id || _loc1_.type == ResourceType.POWER_BOOSTER.id)
            {
               _loc2_ = new TradeItem();
               _loc2_.id = _loc1_.id;
               _loc2_.type = ResourceType.findById(_loc1_.type);
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function get tradeRods() : Array
      {
         var _loc1_:UserRod = null;
         var _loc2_:TradeItem = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<UserRod> = app.user.inventory.rods;
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.infoId != UserRod.BAMBOO_ID)
            {
               _loc2_ = new TradeItem();
               _loc2_.id = _loc1_.id;
               _loc2_.type = ResourceType.ROD;
               _loc2_.infoId = _loc1_.infoId;
               _loc2_.color = ShopItemColor.findColorName(_loc1_.color);
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function get tradeFishbucks() : Array
      {
         var _loc1_:TradeItem = null;
         var _loc2_:Array = [];
         var _loc3_:int = int(app.user.fishbucks);
         if(_loc3_ > 0)
         {
            _loc1_ = new TradeItem();
            _loc1_.id = 1;
            _loc1_.type = ResourceType.FISHBUCKS;
            _loc1_.quantity = _loc3_;
            _loc1_.update();
            _loc2_.push(_loc1_);
         }
         return _loc2_;
      }
      
      private static function get tradeFish() : Array
      {
         var _loc1_:UserResource = null;
         var _loc2_:TradeItem = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<UserResource> = app.user.inventory.fish;
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.quantity > 0 && (_loc1_.type == ResourceType.FISH.id || _loc1_.type == ResourceType.FISH_SHINY.id))
            {
               _loc2_ = new TradeItem();
               _loc2_.id = _loc1_.id;
               _loc2_.type = ResourceType.findById(_loc1_.type);
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function get tradeFossils() : Array
      {
         var _loc1_:UserResource = null;
         var _loc2_:TradeItem = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<UserResource> = app.user.inventory.fossils;
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.type == ResourceType.FOSSIL.id)
            {
               _loc2_ = new TradeItem();
               _loc2_.id = _loc1_.id;
               _loc2_.type = ResourceType.FOSSIL;
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function get tradeFruits() : Array
      {
         var _loc1_:UserResource = null;
         var _loc2_:TradeItem = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<UserResource> = app.user.inventory.other;
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.type == ResourceType.FRUIT.id)
            {
               _loc2_ = new TradeItem();
               _loc2_.id = _loc1_.id;
               _loc2_.type = ResourceType.FRUIT;
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function get tradeShells() : Array
      {
         var _loc1_:UserResource = null;
         var _loc2_:TradeItem = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<UserResource> = app.user.inventory.other;
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.type == ResourceType.OTHER.id && _loc1_.id == ResourceType.ID_SHELL)
            {
               _loc2_ = new TradeItem();
               _loc2_.id = _loc1_.id;
               _loc2_.type = ResourceType.OTHER;
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function convertProductsForRequest(param1:Array) : Array
      {
         var _loc2_:TradeItem = null;
         var _loc3_:Array = [];
         for each(_loc2_ in param1)
         {
            _loc3_.push(_loc2_.toRequestObject());
         }
         return _loc3_;
      }
      
      private function get tradeDecorations() : Array
      {
         var _loc1_:UserDecoration = null;
         var _loc2_:TradeItem = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<UserDecoration> = InventorySwfDialog.groupAndSortDecoVector(app.user.inventory.decoration);
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.quantity > 0 && _loc1_.type == ResourceType.DECORATION.id && !this.isRestrictedItem(_loc1_.type,_loc1_.decoId))
            {
               _loc2_ = new TradeItem();
               _loc2_.id = _loc1_.decoId;
               _loc2_.type = ResourceType.DECORATION;
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private function isRestrictedItem(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:TutorialInfo = this._managerTutorial.getTutorial(ETutorialType.ETT_DECORATION);
         if(!_loc4_.isComplete)
         {
            _loc3_ = param1 == ResourceType.DECORATION.id && (param2 == 1 || param2 == 2 || param2 == 5 || param2 == 7 || param2 == 8);
         }
         return _loc3_;
      }
      
      public function get tradeModel() : TradeModel
      {
         return this._tradeModel;
      }
      
      private function set displayLoadingIndicator(param1:Boolean) : void
      {
         if(param1)
         {
            this._loadingIndicator.start();
            Preloader.addIndicator(this._loadingIndicator);
         }
         else
         {
            this._loadingIndicator.stop();
            Preloader.removeIndicator(this._loadingIndicator);
         }
      }
      
      private function onTradeStart(param1:ServerResp) : void
      {
         var _loc2_:DialogTrade = null;
         this.displayLoadingIndicator = false;
         var _loc3_:ResponseTradeStart = param1 as ResponseTradeStart;
         var _loc4_:String = _loc3_.loginOwner == app.user.username ? _loc3_.loginTarget : _loc3_.loginOwner;
         this._tradeModel = new TradeModel();
         this._tradeModel.tradeId = _loc3_.tradeId;
         this._tradeModel.tradeSidePlayer = new TradeSideInfo(app.user.username,ETradeType.ETT_PLAYER,_loc3_.loginOwner == app.user.username);
         this._tradeModel.tradeSidePlayer.status = TradeStatusType.MAKE_OFFER;
         this._tradeModel.tradeSideTarget = new TradeSideInfo(_loc4_,_loc3_.tradeType,_loc3_.loginOwner == _loc4_);
         this._tradeModel.tradeSideTarget.status = this._tradeModel.tradeSideTarget.isInitiator ? TradeStatusType.MAKE_OFFER : TradeStatusType.RECEIVE_INCOME_OFFER;
         var _loc5_:Dictionary = new Dictionary(true);
         var _loc6_:Array = [];
         switch(this._tradeModel.tradeSideTarget.type)
         {
            case ETradeType.ETT_NPC:
               _loc5_[ETradeItemType.ETIT_BAIT] = tradeBaits;
               _loc5_[ETradeItemType.ETIT_LOOK] = tradeLooks;
               _loc5_[ETradeItemType.ETIT_OTHER] = tradeOthers;
               _loc5_[ETradeItemType.ETIT_ROD] = tradeRods;
               _loc5_[ETradeItemType.ETIT_DECORATION] = this.tradeDecorations;
               _loc6_.push(ETradeItemType.ETIT_BAIT);
               _loc6_.push(ETradeItemType.ETIT_LOOK);
               _loc6_.push(ETradeItemType.ETIT_OTHER);
               _loc6_.push(ETradeItemType.ETIT_ROD);
               _loc6_.push(ETradeItemType.ETIT_DECORATION);
               break;
            case ETradeType.ETT_PLAYER:
               _loc5_[ETradeItemType.ETIT_LOOK] = tradeLooks;
               _loc5_[ETradeItemType.ETIT_FISH] = tradeFish;
               _loc5_[ETradeItemType.ETIT_DECORATION] = this.tradeDecorations;
               _loc5_[ETradeItemType.ETIT_FISHBUCKS] = tradeFishbucks;
               _loc5_[ETradeItemType.ETIT_FRUIT] = tradeFruits;
               _loc5_[ETradeItemType.ETIT_SHELL] = tradeShells;
               _loc6_.push(ETradeItemType.ETIT_LOOK);
               _loc6_.push(ETradeItemType.ETIT_FISH);
               _loc6_.push(ETradeItemType.ETIT_DECORATION);
               _loc6_.push(ETradeItemType.ETIT_FISHBUCKS);
               _loc6_.push(ETradeItemType.ETIT_FRUIT);
               _loc6_.push(ETradeItemType.ETIT_SHELL);
               break;
            default:
               Debug.assert(false,"Couldn\'t start trade with selected Trade Target Type: " + this._tradeModel.tradeSideTarget.type);
         }
         if(_loc3_.isFossilsEnabled)
         {
            _loc5_[ETradeItemType.ETIT_FOSSIL] = tradeFossils;
            _loc6_.push(ETradeItemType.ETIT_FOSSIL);
         }
         this._tradeModel.tradeItemsDictionary = _loc5_;
         this._tradeModel.tradeItemsTypeList = _loc6_;
         var _loc7_:TradeSideInfo = this._tradeModel.tradeSidePlayer;
         if(_loc7_.isInitiator)
         {
            _loc2_ = app.dialogFactory.getDialogTrade();
            _loc2_.show();
         }
      }
      
      private function onTradeAccept(param1:ServerResp) : void
      {
         var _loc2_:DialogTrade = null;
         this.displayLoadingIndicator = false;
         var _loc3_:ResponseTradeAccept = param1 as ResponseTradeAccept;
         if(this._tradeModel == null || this._tradeModel.tradeId != _loc3_.tradeId)
         {
            return;
         }
         if(!this._tradeModel.tradeSidePlayer.isInitiator)
         {
            _loc2_ = app.dialogFactory.getDialogTrade();
            _loc2_.show();
         }
         else
         {
            this._tradeModel.tradeSideTarget.status = TradeStatusType.MAKE_OFFER;
         }
      }
      
      private function onTradeOfferUpdate(param1:ServerResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:TradeSideInfo = null;
         var _loc4_:TradeItem = null;
         this.displayLoadingIndicator = false;
         var _loc5_:ResponseTradeOfferUpdate = param1 as ResponseTradeOfferUpdate;
         if(this._tradeModel == null || this._tradeModel.tradeId != _loc5_.tradeId)
         {
            return;
         }
         var _loc6_:Object = decodeJson(_loc5_.items);
         var _loc7_:Array = [];
         for each(_loc2_ in _loc6_)
         {
            _loc4_ = new TradeItem();
            _loc4_.deserialize(_loc2_);
            _loc7_.push(_loc4_);
         }
         _loc3_ = this._tradeModel.getSideByLogin(_loc5_.login);
         Debug.assertNotEqual(_loc3_,null,"Couldn\'t find trade side on onTradeOfferUpdate of ManagerTrade with login: " + _loc5_.login);
         _loc3_.items = _loc7_;
         this._tradeModel.resetStatuses();
      }
      
      private function onTradeOfferConfirm(param1:ServerResp) : void
      {
         this.displayLoadingIndicator = false;
         var _loc2_:ResponseTradeOfferConfirm = param1 as ResponseTradeOfferConfirm;
         if(this._tradeModel == null || this._tradeModel.tradeId != _loc2_.tradeId)
         {
            return;
         }
         switch(_loc2_.login)
         {
            case this._tradeModel.tradeSidePlayer.login:
               this._tradeModel.tradeSidePlayer.status = TradeStatusType.CONFIRM_OFFER;
               break;
            case this._tradeModel.tradeSideTarget.login:
               this._tradeModel.tradeSideTarget.status = TradeStatusType.CONFIRM_OFFER;
               break;
            default:
               Debug.assert(false,"Incorrect login handled on onTradeOfferConfirm method of ManagerTrade: " + _loc2_.login);
         }
         if(this._tradeModel.tradeSideTarget.type == ETradeType.ETT_PLAYER && this._tradeModel.tradeSideTarget.status == TradeStatusType.CONFIRM_OFFER && this._tradeModel.tradeSidePlayer.status == TradeStatusType.CONFIRM_OFFER)
         {
            PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_TRADE_REVIEW,EDialogType.EDT_TRADE);
         }
      }
      
      private function onTradeOfferReview(param1:ServerResp) : void
      {
         this.displayLoadingIndicator = false;
         var _loc2_:ResponseTradeOfferReview = param1 as ResponseTradeOfferReview;
      }
      
      private function onTradeOfferReset(param1:ServerResp) : void
      {
         var _loc2_:ResponseTradeOfferReset = param1 as ResponseTradeOfferReset;
         if(this._tradeModel == null || this._tradeModel.tradeId != _loc2_.tradeId)
         {
            return;
         }
         this._tradeModel.resetStatuses();
         Preloader.removeIndicator(this._loadingIndicator);
      }
      
      private function onTradeCancel(param1:ServerResp) : void
      {
         this.displayLoadingIndicator = false;
         var _loc2_:ResponseTradeCancel = param1 as ResponseTradeCancel;
         var _loc3_:String = _loc2_.description;
         if(_loc3_ != null && _loc3_ != "")
         {
            PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_TRADE_CANCELED,EDialogType.EDT_TRADE);
            PopupManager.getInstance().showMessageDialog(_loc2_.description);
            return;
         }
         if(this._tradeModel == null || this._tradeModel.tradeId != _loc2_.tradeId)
         {
            return;
         }
         if(_loc2_.initiatorLogin == "")
         {
            GameSwf.sendReportToServer("possible_fishbucks_cheater");
         }
         var _loc4_:TradeSideInfo = this._tradeModel.getSideByLogin(_loc2_.initiatorLogin);
         if(_loc4_ != null)
         {
            _loc4_.status = TradeStatusType.CANCEL_OFFER;
         }
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_TRADE_CANCELED,EDialogType.EDT_TRADE);
         this.destroyTrade();
      }
      
      private function onTradeSuccess(param1:ServerResp) : void
      {
         this.displayLoadingIndicator = false;
         var _loc2_:ResponseTradeSuccess = param1 as ResponseTradeSuccess;
         if(this._tradeModel == null || this._tradeModel.tradeId != _loc2_.tradeId)
         {
            return;
         }
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_TRADE_FINISHED,EDialogType.EDT_TRADE);
         this.destroyTrade();
      }
      
      override public function postInit() : void
      {
         super.postInit();
         this._managerTutorial = GameSwf.instance.managerTutorial;
      }
      
      public function startTradeWith(param1:String, param2:String) : void
      {
         this._extensionTrade.startTrade(param1,param2);
         this.displayLoadingIndicator = true;
      }
      
      public function acceptTrade(param1:int = -1) : void
      {
         this._extensionTrade.acceptTrade(param1);
         this.displayLoadingIndicator = true;
      }
      
      public function updateOffer() : void
      {
         var _loc1_:Array = convertProductsForRequest(this._tradeModel.tradeSidePlayer.items);
         this._extensionTrade.updateOffer(this._tradeModel.tradeId,_loc1_);
         this.displayLoadingIndicator = true;
      }
      
      public function resetOffer() : void
      {
         this._extensionTrade.resetOffer(this._tradeModel.tradeId);
         this.displayLoadingIndicator = true;
      }
      
      public function reviewOffer() : void
      {
         this._extensionTrade.reviewOffer(this._tradeModel.tradeId);
         this.displayLoadingIndicator = true;
      }
      
      public function confirmTrade() : void
      {
         this._extensionTrade.confirmOffer(this._tradeModel.tradeId);
         this.displayLoadingIndicator = true;
      }
      
      public function cancelTradeOffer() : void
      {
         this._extensionTrade.cancelTrade(this._tradeModel.tradeId);
         this.displayLoadingIndicator = true;
      }
      
      public function destroyTrade() : void
      {
         this._tradeModel = null;
      }
   }
}

