package com.ax3.fishao
{
   import com.ax3.fishao.model.info.BuildConfig;
   import com.ax3.jss.events.FscEvent;
   import com.ax3.jss.ext.ChatFscExtension;
   import com.ax3.jss.ext.PrivateMsgFscExtension;
   import com.ax3.jss.ext.impl.BuyEnergyFscExtension;
   import com.ax3.jss.ext.impl.CharFscExtension;
   import com.ax3.jss.ext.impl.DailyQuestExtension;
   import com.ax3.jss.ext.impl.FishingFscExtension;
   import com.ax3.jss.ext.impl.FriendsHouseFscExtension;
   import com.ax3.jss.ext.impl.LocationFscExtension;
   import com.ax3.jss.ext.impl.LoginFscExtension;
   import com.ax3.jss.ext.impl.LogsFscExtension;
   import com.ax3.jss.ext.impl.MissionExtension;
   import com.ax3.jss.ext.impl.ModeratorFscExtension;
   import com.ax3.jss.ext.impl.PaymentsExtension;
   import com.ax3.jss.ext.impl.ProfileFscExtension;
   import com.ax3.jss.ext.impl.SellFishFscExtension;
   import com.ax3.jss.ext.impl.UpdateCharacterFscExtension;
   import com.ax3.jss.ext.impl.UseItemsExtension;
   import com.ax3.jss.model.FishaoFscModel;
   import com.junkbyte.console.Cc;
   
   public class FishaoFscModelManager
   {
      
      private static var _instance:FishaoFscModelManager;
      
      private var _fscModel:FishaoFscModel = new FishaoFscModel();
      
      public function FishaoFscModelManager()
      {
         super();
      }
      
      public static function get updateExtension() : UpdateCharacterFscExtension
      {
         return _instance._fscModel.updateExtension;
      }
      
      public static function get loginFscExtension() : LoginFscExtension
      {
         return _instance._fscModel.loginFscExtension;
      }
      
      public static function get chatFscExtension() : ChatFscExtension
      {
         return _instance._fscModel.chatFscExtension;
      }
      
      public static function get friendsHouseFscExtension() : FriendsHouseFscExtension
      {
         return _instance._fscModel.getFriendsHouseExtention;
      }
      
      public static function get pmFscExtension() : PrivateMsgFscExtension
      {
         return _instance._fscModel.pmFscExtension;
      }
      
      public static function get logsFscExtension() : LogsFscExtension
      {
         return _instance._fscModel.logsFscExtension;
      }
      
      public static function get locationExtension() : LocationFscExtension
      {
         return _instance._fscModel.locationExtension;
      }
      
      public static function get sellFishFscExtension() : SellFishFscExtension
      {
         return _instance._fscModel.sellFishExtension;
      }
      
      public static function get charExtension() : CharFscExtension
      {
         return _instance._fscModel.charExtension;
      }
      
      public static function get fishingExtension() : FishingFscExtension
      {
         return _instance._fscModel.fishingExtension;
      }
      
      public static function get missionsExtension() : MissionExtension
      {
         return _instance._fscModel.missionExtension;
      }
      
      public static function get profileExtension() : ProfileFscExtension
      {
         return _instance._fscModel.profileExtension;
      }
      
      public static function get paymentExtension() : PaymentsExtension
      {
         return _instance._fscModel.paymentExtension;
      }
      
      public static function get buyEnergyExtension() : BuyEnergyFscExtension
      {
         return _instance._fscModel.buyEnergyExtension;
      }
      
      public static function get moderatorFscExtension() : ModeratorFscExtension
      {
         return _instance._fscModel.moderatorFscExtension;
      }
      
      public static function get dailyQuestExtension() : DailyQuestExtension
      {
         return _instance._fscModel.dailyQuestExtension;
      }
      
      public static function get useItemsExtension() : UseItemsExtension
      {
         return _instance._fscModel.useItemsExtension;
      }
      
      private static function logger(param1:String) : void
      {
         Cc.logch("Fsc",param1);
      }
      
      private static function sendLog() : void
      {
         Cc.sendToServer(Config.BUG_REPORT_URL,true);
      }
      
      public static function get fscModel() : FishaoFscModel
      {
         return getInstance()._fscModel;
      }
      
      private static function handleReceiveData(param1:FscEvent) : void
      {
         KeyCallback.getInstance().doCallback(param1.data);
      }
      
      public static function getInstance() : FishaoFscModelManager
      {
         if(_instance == null)
         {
            _instance = new FishaoFscModelManager();
         }
         return _instance;
      }
      
      public function init() : void
      {
         if(!BuildConfig.isProd() || true)
         {
            this._fscModel.logger = logger;
            this._fscModel.sendLog = sendLog;
         }
         this._fscModel.addEventListener(FscEvent.RECEIVE_DATA,handleReceiveData);
         var _loc1_:String = Config.WS_URL;
         Cc.logch(this,"Connect to " + _loc1_);
         this._fscModel.connect(_loc1_);
      }
   }
}

