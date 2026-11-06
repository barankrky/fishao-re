package com.ax3.fishao.model.pling
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.panels.DailyQuestManWidget;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CommunicationSwfDialog;
   import com.ax3.fishao.view.dialogs.club.club_inside.DialogClubInside;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.utils.empty;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import protocol.api.clubs.page.EClubPageType;
   import protocol.api.plings.receive.ResponsePlingReceive;
   
   public class PlingMessage
   {
      
      private static var _lastBuffPlingTsMs:int = 0;
      
      public var closeAction:Function = null;
      
      private var _message:String = "";
      
      private var _action:Function = null;
      
      private var _id:int = 0;
      
      private var _mustBeRead:Boolean = false;
      
      private var _idForAction:int;
      
      private var _actionButtonLabel:String = I18n.get("pling_history_do_this");
      
      public var plingResponse:ResponsePlingReceive;
      
      public var plingResponseParams:Object;
      
      public var type:int;
      
      public function PlingMessage(param1:ResponsePlingReceive)
      {
         var _loc2_:String = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         super();
         this._id = param1.id;
         this._mustBeRead = false;
         if(!empty(param1.params))
         {
            this.plingResponseParams = JSON.parse(param1.params);
         }
         if(param1.type == EPlingType.EPT_END_OF_INF_EXP_BOOSTER || param1.type == EPlingType.EPT_END_OF_INF_FISH_RADAR || param1.type == EPlingType.EPT_END_OF_INF_LUCK_POTION || param1.type == EPlingType.EPT_END_OF_INF_MAGIC_WATCH || param1.type == EPlingType.EPT_END_OF_INF_SHINY_POTION)
         {
            _lastBuffPlingTsMs = getTimer();
         }
         this.type = param1.type;
         switch(param1.type)
         {
            case 100:
               this._message = I18n.get("pling_pm_recived");
               this._idForAction = this.plingResponseParams["msgId"];
               this._action = this.showPrivateMessage;
               this._actionButtonLabel = I18n.get("pling_action_read_message");
               break;
            case 101:
               this._message = I18n.template("pling_biggest_fish_caught",{"fishname":I18n.get("fish_" + this.plingResponseParams["fishInfoId"])});
               break;
            case EPlingType.RESOURCE_RECEIVED:
               this.onReceivedResource();
               break;
            case 103:
               this._message = I18n.get("pling_energy_is_empty");
               this._action = GameSwf.instance.showBuyEnergyWindow;
               this._actionButtonLabel = I18n.get("pling_action_buy_energy");
               break;
            case 104:
               this._message = I18n.get("pling_energy_is_full");
               break;
            case 105:
               _loc2_ = "";
               switch(this.plingResponseParams["resourceType"])
               {
                  case 1:
                     _loc2_ = "fishcoins";
                     break;
                  case 2:
                     _loc2_ = "bait";
                     this._action = GameSwf.instance.showShopDialog;
                     this._actionButtonLabel = I18n.get("pling_action_show_shop");
                     break;
                  case 3:
                     _loc2_ = "rod";
                     this._action = GameSwf.instance.showShopDialog;
                     this._actionButtonLabel = I18n.get("pling_action_show_shop");
                     break;
                  case 4:
                     _loc2_ = "other";
                     this._action = GameSwf.instance.showShopDialog;
                     this._actionButtonLabel = I18n.get("pling_action_show_shop");
               }
               this._message = I18n.get("pling_resource_is_empty").replace("#NAME#",I18n.get(_loc2_ + "_" + this.plingResponseParams["resourceId"]));
               break;
            case 107:
               this._message = I18n.get("pling_fishbox_dropped").replace("#AREANAME#",I18n.get("location_" + this.plingResponseParams["resId"]));
               break;
            case 108:
               this._message = I18n.get("pling_new_area_unlocked").replace("#AREANAME#",I18n.get("location_" + this.plingResponseParams["locId"]));
               break;
            case 109:
               this._message = I18n.template("pling_user_proposed_friendship",this.plingResponseParams);
               this._action = this.showPrivateMessage;
               this._idForAction = this.plingResponseParams["msgId"];
               this._actionButtonLabel = I18n.get("pling_action_read_message");
               break;
            case 110:
               this._message = I18n.template("pling_start_friendship_with",this.plingResponseParams);
               GameSwf.currentLocationDialog.openFriendsHouseDoor();
               break;
            case 111:
               this.closeAction = this.cancelTradeOffer;
               this._action = this.acceptTradingRequest;
               this.plingResponse = param1;
               this._message = I18n.template("pling_trade_propose",this.plingResponseParams);
               break;
            case EPlingType.TOURNAMENT_START_IN:
               this._message = I18n.template("pling_tournament_start_in",this.plingResponseParams);
               this._action = this.onTournamentPlingClick;
               this._actionButtonLabel = I18n.get("pling_action_show_tournament");
               break;
            case 113:
               this._message = I18n.template("pling_trophy_received",this.plingResponseParams);
               break;
            case 114:
               this._message = I18n.get("pling_clothing_unlocket_item").replace("#ITEM#",I18n.get(this.plingResponseParams.clothing));
               break;
            case 115:
               this._message = I18n.get("pling_new_report_appeared");
               break;
            case 116:
               this._message = I18n.template("pling_energy_received",this.plingResponseParams);
               break;
            case 117:
               this._message = I18n.get("pling_friend_leave_you").replace("#LOGIN#",this.plingResponseParams["login"]);
               break;
            case 118:
               this._message = I18n.get("pling_personal_record").replace("#fish#",I18n.get("fish_" + this.plingResponseParams["fishId"]));
               break;
            case 119:
               this._message = I18n.get("pling_rod_empty").replace("#rod#",I18n.get("rod_" + this.plingResponseParams["rodId"]));
               this._action = GameSwf.instance.showShopDialog;
               this._actionButtonLabel = I18n.get("pling_action_show_shop");
               break;
            case 120:
               this._message = I18n.get("pling_bait_empty").replace("#bait#",I18n.get("bait_" + this.plingResponseParams["baitId"]));
               this._action = GameSwf.instance.showShopDialog;
               this._actionButtonLabel = I18n.get("pling_action_show_shop");
               break;
            case 121:
               this._message = I18n.get("pling_fishcoins_empty");
               this._action = GameSwf.instance.showBuyFishcoinsDialog;
               this._actionButtonLabel = I18n.get("pling_action_buy_fishcoins");
               break;
            case 122:
               this._message = I18n.get("pling_daily_quest_complete");
               this._action = this.showDailyQuestDialog;
               this._actionButtonLabel = I18n.get("pling_action_show_daily_quests");
               break;
            case 123:
               this._message = I18n.get("pling_caught_new_fish").replace("#fishname#",I18n.get("fish_" + this.plingResponseParams["fishId"]));
               break;
            case EPlingType.EPT_END_OF_INF_LUCK_POTION:
               this._message = I18n.get("pling_luck_potion_time_over");
               this._action = GameSwf.instance.showShopDialog;
               this._actionButtonLabel = I18n.get("pling_action_show_shop");
               break;
            case EPlingType.EPT_END_OF_INF_MAGIC_WATCH:
               this._message = I18n.get("pling_magic_watch_time_over");
               this._action = GameSwf.instance.showShopDialog;
               this._actionButtonLabel = I18n.get("pling_action_show_shop");
               break;
            case EPlingType.EPT_END_OF_INF_FISH_RADAR:
               this._message = I18n.get("pling_fish_radar_time_over");
               this._action = GameSwf.instance.showShopDialog;
               this._actionButtonLabel = I18n.get("pling_action_show_shop");
               break;
            case EPlingType.EPT_END_OF_INF_EXP_BOOSTER:
               this._message = I18n.get("pling_exp_booster_time_over");
               this._action = GameSwf.instance.showShopDialog;
               this._actionButtonLabel = I18n.get("pling_action_show_shop");
               break;
            case 127:
               this._message = I18n.get("pling_fishbucks_empty");
               this._action = GameSwf.instance.showBuyFishbucksDialog;
               this._actionButtonLabel = I18n.get("pling_action_buy_fishbucks");
               break;
            case 128:
               this._message = I18n.template("pling_fishbox_found",this.plingResponseParams);
               break;
            case EPlingType.EPT_END_OF_INF_SHINY_POTION:
               this._message = I18n.get("pling_time_over_shiny_potion");
               this._action = GameSwf.instance.showShopDialog;
               this._actionButtonLabel = I18n.get("pling_action_show_shop");
               break;
            case EPlingType.EPT_NEW_SHINY_COLLECTION_AVAILABLE:
               this._message = I18n.get("pling_unlocked_shiny_collection");
               break;
            case EPlingType.EPT_NEW_SHINY_POTIONS_AVAILABLE:
               this._message = I18n.get("pling_unlocked_shiny_potion");
               this._action = GameSwf.instance.showShopDialog;
               this._actionButtonLabel = I18n.get("pling_action_show_shop");
               break;
            case EPlingType.EPT_FISHING_LINE_UPDATE:
               _loc3_ = uint(this.plingResponseParams.level);
               this._message = I18n.get(EStringType.EST_PLING_FISHING_LINE_UPGRADED).replace(EStringTypeStubs.ESTS_LEVEL,_loc3_);
               break;
            case EPlingType.EPT_MONEY_TREE_UPDATE:
               _loc4_ = uint(this.plingResponseParams.level);
               this._message = I18n.get(EStringType.EST_PLING_MONEY_TREE_UPGRADED).replace(EStringTypeStubs.ESTS_LEVEL,_loc4_);
               break;
            case EPlingType.EPT_COLLECTION_COMPLETED:
               this.onCollectionCompleted();
               break;
            case EPlingType.EPT_COLLECTION_UNLOCKED:
               this._message = I18n.get(EStringType.EST_COLLECTION_UNLOCKED);
               break;
            case EPlingType.EPT_COLLECTION_UNLOCK_LOST_VALLEY_FISH:
               this.onFishUnlockedByCompleteCollection();
               break;
            case EPlingType.EPT_WHEEL_OF_FORTUNE_REWARD_FISH_UNLOCK:
               this.onFishUnlockedByWheelOfFortune();
               break;
            case EPlingType.EPT_WHEEL_OF_FORTUNE_REWARD_EXP:
               this.onExperienceAdded();
               break;
            case EPlingType.CLUB_TOURNAMENT_START_IN:
               this._message = I18n.get(EStringType.EST_PLING_CLUB_TOURNAMENT_START);
               this._action = this.openClubTournamentDialog;
               break;
            case EPlingType.CLUB_TOURNAMENT_END:
               this._message = I18n.get(EStringType.EST_PLING_CLUB_TOURNAMENT_END);
               this._message = this._message.replace(EStringTypeStubs.ESTS_VALUE,Debug.assertProperty(this.plingResponseParams,"position"));
               break;
            default:
               if(this.plingResponseParams != null && this.plingResponseParams.hasOwnProperty("msg"))
               {
                  if(this.plingResponseParams.hasOwnProperty("fromUser"))
                  {
                     this._message = this.plingResponseParams.msg;
                  }
                  else
                  {
                     this._message = I18n.get(this.plingResponseParams.msg);
                  }
               }
         }
      }
      
      private function onReceivedResource() : void
      {
         var _loc1_:int = Debug.getPropertyOrDefault(this.plingResponseParams,"resType",-1);
         var _loc2_:int = Debug.getPropertyOrDefault(this.plingResponseParams,"resId",-1);
         var _loc3_:Number = Number(this.plingResponseParams["quantity"]);
         switch(_loc1_)
         {
            case ResourceType.FISHCOINS.id:
               this._message = I18n.get("pling_fishcoins_recived").replace("#COUNT#",_loc3_).replace("#END#",_loc3_ > 1 ? "s" : "");
               break;
            case ResourceType.BAIT.id:
               if(_loc2_ == 3)
               {
                  this._message = I18n.get("pling_dough_recive").replace("#COUNT#",_loc3_);
               }
               else
               {
                  this._message = I18n.get("pling_bait_recive").replace("#BAIT#",I18n.get("bait_" + _loc2_));
               }
               this._action = this.showInventoryWindow;
               this._actionButtonLabel = I18n.get("pling_action_show_inventary");
               break;
            case ResourceType.ROD.id:
               this._message = I18n.get("pling_rod_recived").replace("#ROD#",I18n.get("rod_" + _loc2_));
               this._action = this.showInventoryWindow;
               this._actionButtonLabel = I18n.get("pling_action_show_inventary");
               break;
            case ResourceType.OTHER.id:
            case ResourceType.FISHBOX.id:
            case ResourceType.LUCK_POTION.id:
            case ResourceType.MAGIC_WATCH.id:
            case ResourceType.FISH_RADAR.id:
            case ResourceType.EXP_BOOSTER.id:
            case ResourceType.SHINY_POTION.id:
            case ResourceType.POWER_BOOSTER.id:
               this._message = I18n.get("pling_item_added").replace("#ITEM#",I18n.get("resource_" + _loc2_));
               this._action = this.showInventoryWindow;
               this._actionButtonLabel = I18n.get("pling_action_show_inventary");
               break;
            case ResourceType.FISH.id:
            case ResourceType.FISH_SHINY.id:
            case ResourceType.HERB_FISH.id:
               this._message = I18n.get("pling_item_added").replace("#ITEM#",I18n.get("fish_" + _loc2_));
               this._action = this.showInventoryWindow;
               this._actionButtonLabel = I18n.get("pling_action_show_inventary");
               break;
            case ResourceType.CLOTHE.id:
               this._message = I18n.get("pling_item_added").replace("#ITEM#",I18n.get("looks_" + _loc2_));
               this._action = this.showInventoryWindow;
               this._actionButtonLabel = I18n.get("pling_action_show_inventary");
               break;
            case ResourceType.FLOAT.id:
               this._message = I18n.get("pling_item_added").replace("#ITEM#",I18n.get("float_" + _loc2_));
               this._action = this.showInventoryWindow;
               this._actionButtonLabel = I18n.get("pling_action_show_inventary");
               break;
            case ResourceType.FISHBUCKS.id:
               this._message = I18n.get("pling_fishbucks_recived").replace("#COUNT#",_loc3_).replace("#END#",_loc3_ > 1 ? "s" : "");
               break;
            case ResourceType.DECORATION.id:
               this._message = I18n.get("pling_decoration_add").replace("#ITEM#",I18n.get("decoration_" + _loc2_));
               break;
            case ResourceType.FOSSIL.id:
               this._message = I18n.get("pling_fossil_add").replace("#ITEM#",I18n.get("fossil_" + _loc2_));
               break;
            case ResourceType.FRUIT.id:
               this._message = I18n.get("pling_fruit_add").replace("#ITEM#",I18n.get("fruit_" + _loc2_));
         }
      }
      
      private function onCollectionCompleted() : void
      {
         this._message = I18n.get(EStringType.EST_COLLECTION_COMPLETE);
      }
      
      private function onFishUnlockedByCompleteCollection() : void
      {
         var _loc1_:int = Debug.assertProperty(this.plingResponseParams,"fish_id");
         var _loc2_:String = I18n.get(EStringType.EST_COLLECTION_UNLOCK_FISH_LOST_VALLEY);
         _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_FISH,I18n.get("fish_" + _loc1_));
         this._message = _loc2_;
      }
      
      private function openClubTournamentDialog(param1:MouseEvent = null) : void
      {
         var _loc2_:ManagerClubs = GameSwf.instance.managerClubs;
         if(!_loc2_.userInClub)
         {
            return;
         }
         var _loc3_:DialogClubInside = app.dialogFactory.getDialog(DialogClubInside);
         _loc3_.entity = _loc2_.userClub;
         _loc3_.openOnPage = EClubPageType.ECPT_TOURNAMENT;
         _loc3_.show();
      }
      
      private function onFishUnlockedByWheelOfFortune() : void
      {
         var _loc1_:int = Debug.assertProperty(this.plingResponseParams,"fish_id");
         var _loc2_:String = I18n.get(EStringType.EST_PLING_WHEEL_OF_FORTUNE_REWARD_FISH_UNLOCK);
         _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_FISH,I18n.get("fish_" + _loc1_));
         this._message = _loc2_;
      }
      
      private function onExperienceAdded() : void
      {
         var _loc1_:int = Debug.assertProperty(this.plingResponseParams,"amount");
         var _loc2_:String = I18n.get(EStringType.EST_PLING_WHEEL_OF_FORTUNE_REWARD_EXP);
         _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_VALUE,_loc1_);
         this._message = _loc2_;
      }
      
      private function onTournamentPlingClick(param1:MouseEvent) : void
      {
         if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.gui != null)
         {
            GameSwf.currentLocationDialog.gui.onTournamentIconClick(param1);
         }
      }
      
      private function showInventoryWindow(param1:MouseEvent = null) : void
      {
         if(this.plingResponseParams)
         {
            GameSwf.instance.showInventoryWindow(ResourceType.findById(this.plingResponseParams.resType));
         }
      }
      
      private function showDailyQuestDialog(param1:MouseEvent = null) : void
      {
         DailyQuestManWidget(GameSwf.currentLocationDialog.gui.getChildByName("DailyQuestWidget")).onMouseClick();
      }
      
      private function cancelTradeOffer() : void
      {
         GameSwf.instance.managerTrade.cancelTradeOffer();
      }
      
      private function acceptTradingRequest(param1:MouseEvent) : void
      {
         GameSwf.instance.managerTrade.acceptTrade(this.plingResponseParams.tradeId);
      }
      
      private function showPrivateMessage(param1:MouseEvent = null) : void
      {
         var _loc2_:CommunicationSwfDialog = app.dialogFactory.getCommunicationSwfDialog();
         _loc2_.showMessage(this._idForAction);
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get action() : Function
      {
         return this._action;
      }
      
      public function get mustBeRead() : Boolean
      {
         return this._mustBeRead;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get actionButtonLabel() : String
      {
         return this._actionButtonLabel;
      }
   }
}

