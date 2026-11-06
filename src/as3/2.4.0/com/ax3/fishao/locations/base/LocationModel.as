package com.ax3.fishao.locations.base
{
   import com.ax3.events.Listeners;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.events.LocationModelEvent;
   import com.ax3.fishao.locations.ELocationType;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.chars.commands.RaftExitForceMoveCommand;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.entries.PlayerChar;
   import com.ax3.fishao.locations.entries.PlayerCharTutorialCommon;
   import com.ax3.fishao.locations.npc.FactoryNpc;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.locations.weather.WeatherType;
   import com.ax3.fishao.model.*;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.geom.GraphPoint;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.jss.requests.server.SteveMiniGameStartsResp;
   import com.ax3.utils.BindableVariable;
   import com.ax3.utils.DictionaryUtil;
   import com.junkbyte.console.Cc;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import protocol.api.base.ResponseWithData;
   import protocol.api.miniGameBob.start.ResponseMiniGameBobStart;
   import protocol.api.miniGameBob.stop.ResponseMiniGameBobStop;
   import protocol.api.npc.action.ResponseNpcAction;
   import protocol.api.npc.talk.ResponseNpcTalk;
   import protocol.sr.EnterRaftResp;
   import protocol.sr.EnterSublocationSuccessResp;
   import protocol.sr.LeaveRaftResp;
   import protocol.sr.MvUsrToResp;
   import protocol.sr.UpdateResp;
   import protocol.sr.WeatherChangedResp;
   import protocol.sr.profile.ProfileUserInfoResp;
   
   public class LocationModel extends EventDispatcher
   {
      
      public var locationUserByUsername:Dictionary;
      
      public var _infoLocationUserByUsername:Dictionary = new Dictionary();
      
      public var floatInWaterManager:FloatInWaterManager;
      
      protected var _id:int;
      
      protected var _npcMap:Dictionary;
      
      protected var _npcList:Vector.<LocationUser>;
      
      private var _weather:BindableVariable = new BindableVariable();
      
      public var isSublocation:Boolean = false;
      
      public var isTournament:Boolean = false;
      
      public var shells:Vector.<Point> = new Vector.<Point>();
      
      private var _fishbox:Point;
      
      private var _dialog:LocationDialog;
      
      private var boatPositions:Dictionary = new Dictionary();
      
      private var d_listeners:int;
      
      private var _wasLoadedFirstResp:Boolean = false;
      
      private var _prevLocationID:int;
      
      protected var _dayCycleEnabled:Boolean;
      
      public function LocationModel(param1:int)
      {
         super();
         this.locationUserByUsername = new Dictionary();
         this._npcMap = new Dictionary(true);
         this._npcList = new Vector.<LocationUser>();
         this._id = param1;
         this.floatInWaterManager = new FloatInWaterManager();
         this._weather.value = WeatherType.DEFAULT;
         this._dayCycleEnabled = true;
      }
      
      public function get dayCycleEnabled() : Boolean
      {
         return this._dayCycleEnabled;
      }
      
      public function get prevLocationID() : int
      {
         return this._prevLocationID;
      }
      
      public function set prevLocationID(param1:int) : void
      {
         this._prevLocationID = param1;
      }
      
      public function get dialog() : LocationDialog
      {
         return this._dialog;
      }
      
      public function set dialog(param1:LocationDialog) : void
      {
         this._dialog = param1;
      }
      
      public function get type() : String
      {
         return ELocationType.ELT_COMMON;
      }
      
      public function get weather() : WeatherType
      {
         return this._weather.value;
      }
      
      public function set weather(param1:WeatherType) : void
      {
         this._weather.value = param1;
      }
      
      public function get weatherVariable() : BindableVariable
      {
         return this._weather;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get npcList() : Vector.<LocationUser>
      {
         return this._npcList;
      }
      
      public function get hasFishbox() : Boolean
      {
         return this._fishbox != null;
      }
      
      public function get absoluteId() : int
      {
         return this._id;
      }
      
      public function get locationConfig() : LocationConfig
      {
         return LocationConfig.findById(this.absoluteId);
      }
      
      private function onEnterSublocationSuccess(param1:EnterSublocationSuccessResp) : void
      {
         var _loc2_:Object = null;
         if(param1.hasDataProperty("usersAtLoc"))
         {
            _loc2_ = param1.getJsonData("usersAtLoc");
            this.parseNewUsers(_loc2_);
         }
         this.tryCreateNpcs(param1);
         if(param1.hasDataProperty("timeLeft"))
         {
            dispatchEvent(new UpdateResponseParam("timeLeft",param1.getJsonData("timeLeft")));
         }
      }
      
      public function onLocationLoadingComplete() : void
      {
      }
      
      public function onNpcAction(param1:ResponseNpcAction) : void
      {
         var _loc2_:LocationUser = this._npcMap[param1.npcName];
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:NPC = NPC(_loc2_.fieldChar);
         _loc3_.onNpcAction(param1.actionType,param1.params);
      }
      
      private function onNpcTalkResp(param1:ResponseNpcTalk) : void
      {
         var _loc2_:RegExp = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:LocationUser = this._npcMap[param1.name];
         if(_loc10_ == null)
         {
            return;
         }
         var _loc11_:RegExp = /#bait_(\d+)#/g;
         var _loc12_:RegExp = /#location_(\d+)#/g;
         var _loc13_:RegExp = /#fish_(\d+)#/g;
         var _loc14_:RegExp = /#rod_(\d+)#/g;
         var _loc15_:RegExp = /#fossil_(\d+)#/g;
         var _loc16_:NPC = NPC(_loc10_.fieldChar);
         var _loc17_:String = I18n.get(param1.message).replace(/#USERNAME#/g,app.user.username);
         if(param1.params)
         {
            _loc3_ = JSON.parse(param1.params);
            for(_loc4_ in _loc3_)
            {
               switch(_loc4_)
               {
                  case "open_time":
                     _loc5_ = String(_loc3_[_loc4_]);
                     _loc17_ = _loc17_.split("#OPEN_TIME#").join(I18n.formatToAmPmIfNeed(_loc5_));
                     break;
                  case "totalCost":
                     _loc6_ = int(_loc3_["countFish"]);
                     _loc7_ = int(_loc3_["totalCost"]);
                     _loc17_ = _loc17_.split("#FISHCOUNT#").join(_loc6_);
                     _loc17_ = _loc17_.split("#FISHBUCKS#").join(_loc7_);
                     break;
                  case "totalMoney":
                     _loc8_ = int(_loc3_[_loc4_]);
                     _loc17_ = _loc17_.split("#FISHBUCKS#").join(_loc8_);
                     FishaoSoundManager.play(FishaoSoundManager.SFX_054_UI_Buy_click);
                     break;
                  case "close_time":
                     _loc5_ = String(_loc3_[_loc4_]);
                     _loc17_ = _loc17_.split("#CLOSE_TIME#").join(I18n.formatToAmPmIfNeed(_loc5_));
                     break;
                  case "length":
                     _loc17_ = _loc17_.replace(/#LENGTH#/g,I18n.formatDistance(_loc3_[_loc4_]));
                     break;
                  case "time_left":
                     _loc17_ = _loc17_.split("#TIME_LEFT#").join(I18n.formatTimestampWithMonthAndSeconds(_loc3_[_loc4_] as int));
                     break;
                  case "floor":
                     _loc17_ = _loc17_.split("#FLOOR#").join(I18n.get(EStringType.getFloorTranslationByNumber(_loc3_[_loc4_] as int)));
                     break;
                  default:
                     _loc2_ = new RegExp("#" + _loc4_.toUpperCase() + "#","g");
                     _loc17_ = _loc17_.replace(_loc2_,_loc3_[_loc4_]).replace(_loc12_,this.replaceLocationName).replace(_loc11_,this.replaceBaitName).replace(_loc13_,this.replaceFishName).replace(_loc14_,this.replaceRodName).replace(_loc15_,this.replaceFossilName);
                     if(_loc4_ == "number_seconds")
                     {
                        _loc9_ = int(_loc3_[_loc4_]);
                        _loc17_ = _loc17_.split("#NUMBER_OF_DAYS#").join(I18n.formatTimestampWithMonthAndSeconds(_loc9_));
                     }
               }
            }
         }
         _loc16_.toChat(_loc17_,param1.step);
      }
      
      public function removeNpcFromList(param1:String) : void
      {
         if(this._npcList == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this._npcList.length)
         {
            if(this._npcList[_loc2_] != null && this._npcList[_loc2_].username == param1)
            {
               this._npcList[_loc2_] = null;
               this._npcList.splice(_loc2_,1);
               delete this._npcMap[param1];
               break;
            }
            _loc2_++;
         }
      }
      
      public function addRequestHandlers(param1:Boolean = false) : void
      {
         Cc.log("LocationModel[" + this._id + "].addRequestHandlers");
         FishaoFscModelManager.fscModel.addRequestHandler(MvUsrToResp,this.moveUserHandler);
         FishaoFscModelManager.fscModel.addRequestHandler(WeatherChangedResp,this.weatherChangedRespHandler);
         FishaoFscModelManager.fscModel.addRequestHandler(ResponseNpcTalk,this.onNpcTalkResp);
         FishaoFscModelManager.fscModel.addRequestHandler(ResponseNpcAction,this.onNpcAction);
         FishaoFscModelManager.fscModel.addRequestHandler(EnterSublocationSuccessResp,this.onEnterSublocationSuccess);
         FishaoFscModelManager.fscModel.addRequestHandler(EnterRaftResp,this.onEnterRaft);
         FishaoFscModelManager.fscModel.addRequestHandler(LeaveRaftResp,this.onLeaveRaftResp);
         FishaoFscModelManager.fscModel.addRequestHandler(ResponseMiniGameBobStart,this.onBobsMinigameStart);
         FishaoFscModelManager.fscModel.addRequestHandler(ResponseMiniGameBobStop,this.onBobsMinigameStop);
         FishaoFscModelManager.fscModel.addRequestHandler(SteveMiniGameStartsResp,this.onSteveMiniGameStart);
      }
      
      protected function removeRequestHandlers() : void
      {
         Cc.log("LocationModel[" + this._id + "].removeRequestHandlers");
         FishaoFscModelManager.fscModel.removeRequestHandler(MvUsrToResp,this.moveUserHandler);
         FishaoFscModelManager.fscModel.removeRequestHandler(WeatherChangedResp,this.weatherChangedRespHandler);
         FishaoFscModelManager.fscModel.removeRequestHandler(ResponseNpcTalk,this.onNpcTalkResp);
         FishaoFscModelManager.fscModel.removeRequestHandler(ResponseNpcAction,this.onNpcAction);
         FishaoFscModelManager.fscModel.removeRequestHandler(EnterSublocationSuccessResp,this.onEnterSublocationSuccess);
         FishaoFscModelManager.fscModel.removeRequestHandler(EnterRaftResp,this.onEnterRaft);
         FishaoFscModelManager.fscModel.removeRequestHandler(LeaveRaftResp,this.onLeaveRaftResp);
         FishaoFscModelManager.fscModel.removeRequestHandler(ResponseMiniGameBobStart,this.onBobsMinigameStart);
         FishaoFscModelManager.fscModel.removeRequestHandler(ResponseMiniGameBobStop,this.onBobsMinigameStop);
         FishaoFscModelManager.fscModel.removeRequestHandler(SteveMiniGameStartsResp,this.onSteveMiniGameStart);
      }
      
      private function onSteveMiniGameStart(param1:SteveMiniGameStartsResp) : void
      {
         dispatchEvent(new LocationModelEvent(LocationModelEvent.START_STEVE_MINIGAME,param1));
      }
      
      private function onLeaveRaftResp(param1:LeaveRaftResp) : void
      {
         var _loc2_:String = null;
         var _loc3_:FieldChar = null;
         var _loc4_:Object = JSON.parse(param1.list);
         for(_loc2_ in _loc4_)
         {
            if(this.locationUserByUsername != null && this.locationUserByUsername.hasOwnProperty(_loc2_))
            {
               _loc3_ = LocationUser(this.locationUserByUsername[_loc2_]).fieldChar;
               _loc3_.addCommand(new RaftExitForceMoveCommand(_loc3_,_loc4_[_loc2_].x,_loc4_[_loc2_].y));
            }
         }
      }
      
      public function destroy() : void
      {
         this.removeRequestHandlers();
         this.removeAllChars();
         Listeners.destroyAllSubscriptions(this);
         this.floatInWaterManager.destroy();
         this.floatInWaterManager = null;
         this._weather.destroy();
         this._weather = null;
         DictionaryUtil.removeAll(this._infoLocationUserByUsername);
         this.locationUserByUsername = null;
         this._infoLocationUserByUsername = null;
         this._npcList = null;
         this._npcMap = null;
         this.shells = null;
         this._dialog = null;
         DictionaryUtil.removeAll(this.boatPositions);
         this.boatPositions = null;
      }
      
      private function removeAllChars() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this.locationUserByUsername)
         {
            this.removeUserFromLocation(_loc1_);
         }
         this.locationUserByUsername = new Dictionary();
      }
      
      private function onEnterRaft(param1:EnterRaftResp) : void
      {
         if(this.locationUserByUsername != null && this.locationUserByUsername.hasOwnProperty(param1.login))
         {
            LocationUser(this.locationUserByUsername[param1.login]).fieldChar.moveToRaft(param1.x,param1.y);
         }
      }
      
      public function getNPCbyName(param1:String) : NPC
      {
         var _loc2_:LocationUser = null;
         var _loc3_:NPC = null;
         if(this._npcMap[param1] != null)
         {
            _loc2_ = this._npcMap[param1];
            _loc3_ = _loc2_.fieldChar as NPC;
         }
         return _loc3_;
      }
      
      private function replaceLocationName() : String
      {
         return I18n.get("location_" + arguments[1]);
      }
      
      private function replaceBaitName() : String
      {
         return I18n.get("bait_" + arguments[1]);
      }
      
      private function replaceFishName() : String
      {
         return I18n.get("fish_" + arguments[1]);
      }
      
      private function replaceRodName() : String
      {
         return I18n.get("rod_" + arguments[1]);
      }
      
      private function replaceFossilName() : String
      {
         return I18n.get("fossil_" + arguments[1]);
      }
      
      private function weatherChangedRespHandler(param1:WeatherChangedResp) : void
      {
         this.weather = WeatherType.getById(param1.newWeather);
      }
      
      protected function moveUserHandler(param1:MvUsrToResp) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:LocationUser = this.getLocationUser(param1.login);
         if(Boolean(_loc5_ && _loc5_.fieldChar) && Boolean(!(_loc5_.fieldChar is PlayerChar)) && Boolean(_loc5_.fieldChar.position))
         {
            if(_loc5_ is NPC)
            {
               NPC(_loc5_).noTalk();
            }
            _loc5_.setPosition(param1.x,param1.y,param1.r);
            if(!(_loc5_.fieldChar is PlayerChar) && _loc5_.fieldChar.onBoat() && !_loc5_.fieldChar.position.equalsWithPoint(param1.x,param1.y,param1.r))
            {
               _loc5_.fieldChar.setPathMoveStrategy();
               _loc5_.fieldChar.position.equalsWithPoint(param1.x,param1.y,param1.r);
            }
            _loc2_ = _loc5_.fieldChar.curDistanceWithFadeInTo(param1.cx,param1.cy);
            if(param1.cx > -1 && _loc2_ > 50)
            {
               _loc3_ = _loc5_.fieldChar.isLastCheckPositionChanged();
               _loc4_ = _loc5_.fieldChar.getLastCheckPosLeftMS();
               if(!_loc3_ && _loc4_ > 3000)
               {
                  Cc.log("setPositionWithFade by Response(response.cx:" + param1.cx + ", response.cy: " + param1.cy + ")");
                  _loc5_.fieldChar.setPositionWithFade(param1.cx,param1.cy);
               }
            }
            _loc5_.fieldChar.handleMovUsrToResp(param1.x,param1.y,param1.r);
         }
      }
      
      public function updateHandler(param1:UpdateResp) : void
      {
         var response:UpdateResp = param1;
         var username:String = null;
         var fishboxPos:Object = null;
         var usersAtLocation:Object = null;
         var usernames:Array = null;
         var shells:Object = null;
         var fishbones:Object = null;
         var removeFishboxPosition:Object = null;
         var removeShellPosition:Object = null;
         var newShellPosition:Object = null;
         var list:Array = null;
         var i:int = 0;
         var selectedRodInfoId:int = 0;
         var locationUser:LocationUser = null;
         try
         {
            if(this._wasLoadedFirstResp == false && response.hasDataProperty("usersAtLoc") == false)
            {
               return;
            }
            this.wasLoadedFirstResp = true;
            if(response.hasDataProperty("usersAtLoc"))
            {
               usersAtLocation = response.getJsonData("usersAtLoc");
               this.parseNewUsers(usersAtLocation);
            }
            if(response.hasDataProperty("userEnter"))
            {
               usersAtLocation = response.getJsonData("userEnter");
               this.parseNewUsers(usersAtLocation);
            }
            if(response.hasDataProperty("userUpdates"))
            {
               usersAtLocation = response.getJsonData("userUpdates");
               this.parseUserUpdates(usersAtLocation);
            }
            if(response.hasDataProperty("userLeave"))
            {
               usernames = response.getArrayData("userLeave");
               for each(username in usernames)
               {
                  this.removeUserFromLocation(username);
               }
            }
            if(response.hasDataProperty("weather"))
            {
               this.weather = WeatherType.getById(response.getIntData("weather"));
            }
            if(response.hasDataProperty("shells"))
            {
               shells = response.getJsonData("shells");
               this.parseShells(shells);
            }
            if(response.hasDataProperty("fishboxPos") || response.hasDataProperty("fishboxAppeared"))
            {
               if(this._fishbox != null)
               {
                  dispatchEvent(new LocationModelEvent(LocationModelEvent.DESTROY_FISHBOX,this._fishbox));
               }
               if(response.hasDataProperty("fishboxPos"))
               {
                  fishboxPos = response.getJsonData("fishboxPos");
               }
               else
               {
                  fishboxPos = response.getJsonData("fishboxAppeared");
               }
               this._fishbox = new Point(fishboxPos["x"],fishboxPos["y"]);
               dispatchEvent(new LocationModelEvent(LocationModelEvent.ADD_FISHBOX,this._fishbox));
            }
            if(response.hasDataProperty("fishbones"))
            {
               fishbones = response.getJsonData("fishbones");
               this.parseDailyQuestFishbones(fishbones);
            }
            if(response.hasDataProperty("fishboxCollected"))
            {
               removeFishboxPosition = response.getJsonData("fishboxCollected");
               if(this._fishbox != null)
               {
                  this._fishbox = null;
                  dispatchEvent(new LocationModelEvent(LocationModelEvent.REMOVE_FISHBOX,new Point(removeFishboxPosition.x,removeFishboxPosition.y)));
               }
            }
            if(response.hasDataProperty("shellCollected"))
            {
               removeShellPosition = response.getJsonData("shellCollected");
               dispatchEvent(new LocationModelEvent(LocationModelEvent.REMOVE_SHELL,new Point(removeShellPosition.x,removeShellPosition.y)));
            }
            if(response.hasDataProperty("shellAppeared"))
            {
               newShellPosition = response.getJsonData("shellAppeared");
               dispatchEvent(new LocationModelEvent(LocationModelEvent.ADD_SHELL,new Point(newShellPosition.x,newShellPosition.y)));
            }
            this.tryCreateNpcs(response);
            if(response.hasDataProperty("NPCLeave"))
            {
               list = response.getArrayData("NPCLeave");
               i = 0;
               while(i < this._npcList.length)
               {
                  if(list.indexOf(this._npcList[i].username) != -1)
                  {
                     NPC(this._npcList[i].fieldChar).removeFromLocation();
                  }
                  i++;
               }
            }
            if(response.hasDataProperty("selectedRodInfoId"))
            {
               username = response.getStringData("login");
               selectedRodInfoId = response.getIntData("selectedRodInfoId");
               if(username in this.locationUserByUsername)
               {
                  locationUser = this.locationUserByUsername[username];
                  locationUser.setRodInfoId(selectedRodInfoId,response.getStringData("selectedRodColor"));
               }
            }
            if(response.hasDataProperty("busyBoats"))
            {
               this.parseBusyBoats(response.getJsonData("busyBoats"));
            }
            this.tryUpdateFishingLineColor(response);
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error("LocationModel.updateHandler ERROR",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("updateResp");
         }
      }
      
      private function tryUpdateFishingLineColor(param1:UpdateResp) : void
      {
         var _loc2_:String = "fishing_line_color";
         if(!param1.hasDataProperty(_loc2_))
         {
            return;
         }
         var _loc3_:String = Debug.assertProperty(param1.data,"login");
         var _loc4_:String = param1.data[_loc2_];
         var _loc5_:LocationUser = this.locationUserByUsername[_loc3_];
         _loc5_.fishingLineColor = _loc4_;
      }
      
      private function parseBusyBoats(param1:Object) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in param1)
         {
            this.parseBusyBoat(_loc2_,param1[_loc2_]);
         }
      }
      
      private function parseBusyBoat(param1:String, param2:Object) : void
      {
         var _loc3_:String = param2.login;
         var _loc4_:GraphPoint = new GraphPoint(param2.pos.x,param2.pos.y,param2.pos.rotation);
         Cc.logch(this,"dispatch PUT_CHAR_TO_BOAT: {boatId: " + param1 + ", username: " + _loc3_ + ", boatPosition: " + _loc4_ + "}");
         dispatchEvent(new LocationModelEvent(LocationModelEvent.PUT_CHAR_TO_BOAT,{
            "boatId":param1,
            "username":_loc3_,
            "boatPosition":_loc4_
         }));
      }
      
      private function parseShells(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.shells.push(new Point(_loc2_.x,_loc2_.y));
         }
         dispatchEvent(new LocationModelEvent(LocationModelEvent.UPDATE_SHELLS));
      }
      
      private function parseDailyQuestFishbones(param1:Object) : void
      {
         dispatchEvent(new LocationModelEvent(LocationModelEvent.ADD_DAILY_QUEST_FISHBONES,param1));
      }
      
      private function onBobsMinigameStart(param1:ResponseMiniGameBobStart) : void
      {
         dispatchEvent(new LocationModelEvent(LocationModelEvent.START_BOBS_MINIGAME,param1));
      }
      
      private function onBobsMinigameStop(param1:ResponseMiniGameBobStop) : void
      {
         dispatchEvent(new LocationModelEvent(LocationModelEvent.STOP_BOBS_MINIGAME));
      }
      
      protected function tryCreateNpcs(param1:ResponseWithData) : void
      {
         var _loc2_:String = null;
         var _loc3_:LocationUser = null;
         if(!param1.hasDataProperty("npcesAtLoc"))
         {
            return;
         }
         var _loc4_:Object = param1.getJsonData("npcesAtLoc");
         var _loc5_:Vector.<LocationUser> = new Vector.<LocationUser>(0);
         for(_loc2_ in _loc4_)
         {
            if(!(_loc2_ in this.locationUserByUsername))
            {
               _loc3_ = this.initNpc(_loc2_,_loc4_[_loc2_]);
               if(_loc3_ != null)
               {
                  _loc5_.push(_loc3_);
               }
            }
         }
         if(_loc5_.length > 0)
         {
            this.addUsersToLocation(_loc5_);
         }
      }
      
      protected function initNpc(param1:String, param2:Object) : LocationUser
      {
         var _loc3_:LocationUser = new LocationUser();
         _loc3_.username = param1;
         _loc3_.positionPoint.name = "pos_" + param1;
         _loc3_.positionPoint.label.text = param1;
         _loc3_.boatTransPositionPoint.label.text = param1;
         _loc3_.readConfig(param2);
         var _loc4_:NPC = FactoryNpc.createNpc(param1,_loc3_,this.floatInWaterManager);
         _loc3_.fieldChar = _loc4_;
         _loc3_.updateChar();
         this._npcList.push(_loc3_);
         this._npcMap[_loc4_.npcName] = _loc3_;
         return _loc3_;
      }
      
      private function parseNewUsers(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Vector.<LocationUser> = new Vector.<LocationUser>();
         for(_loc2_ in param1)
         {
            this.parseUserUpdateData(_loc2_,param1[_loc2_],_loc3_,true);
         }
         this.addUsersToLocation(_loc3_);
      }
      
      private function parseUserUpdates(param1:Object) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in param1)
         {
            if(_loc2_ in this.locationUserByUsername)
            {
               this.parseUserUpdateData(_loc2_,param1[_loc2_],null,false);
            }
         }
         dispatchEvent(new LocationModelEvent(LocationModelEvent.UPDATE_CHARS));
      }
      
      protected function parseUserUpdateData(param1:String, param2:Object, param3:Vector.<LocationUser> = null, param4:Boolean = true) : void
      {
         var _loc5_:LocationUser = null;
         if(param1 in this.locationUserByUsername == false)
         {
            _loc5_ = new LocationUser();
            _loc5_.username = param1;
            _loc5_.positionPoint.name = "pos_" + param1;
            _loc5_.positionPoint.label.text = param1;
            _loc5_.boatTransPositionPoint.label.text = param1;
            _loc5_.readConfig(param2);
            if(_loc5_.viewConfig == null)
            {
               Cc.warnch(this,"Exception. locationUser.viewConfig = ",String(_loc5_.viewConfig));
               return;
            }
            if(param1 == app.user.username)
            {
               app.user.setUserLevel(_loc5_.level);
               if(param2["view"] != null)
               {
                  app.char = CharViewConfig.fromObject(param2.view);
                  app.char = CharViewConfig.reviewCharForModeratorSuit(app.char,app.char.isModerator);
               }
            }
            this.createCharFor(_loc5_);
            _loc5_.fieldChar.updateSpeedMultiplier(_loc5_.viewConfig.shoes.type);
            if(param2.hasOwnProperty("actFishingPos") && param2.actFishingPos != null)
            {
               _loc5_.initialFishingPos = new Point(param2.actFishingPos.x,param2.actFishingPos.y);
            }
            if(param2.hasOwnProperty("isAtVihicle") && Boolean(param2.isAtVihicle))
            {
               if(GameSwf.currentLocationDialog.raft != null)
               {
                  _loc5_.fieldChar.setPosition(param2.pos.x,param2.pos.y);
                  GameSwf.currentLocationDialog.raft.addChar(_loc5_.fieldChar,true);
                  _loc5_.setPosition(_loc5_.fieldChar.position.x,_loc5_.fieldChar.position.y);
               }
            }
            if(param4)
            {
               _loc5_.updateChar();
            }
            if(param3 != null)
            {
               param3.push(_loc5_);
            }
         }
         else
         {
            _loc5_ = this.locationUserByUsername[param1];
            _loc5_.readConfig(param2);
            if(param4)
            {
               _loc5_.updateChar();
            }
         }
      }
      
      private function createCharFor(param1:LocationUser) : void
      {
         var _loc2_:FieldChar = null;
         if(param1.username == app.user.username)
         {
            if(GameSwf.instance.managerTutorial.isTutorialCommonComplete)
            {
               _loc2_ = new PlayerChar(param1,this,this.floatInWaterManager);
            }
            else
            {
               _loc2_ = new PlayerCharTutorialCommon(param1,this,this.floatInWaterManager);
            }
         }
         else
         {
            _loc2_ = new FieldChar(param1,this.floatInWaterManager);
         }
         param1.fieldChar = _loc2_;
      }
      
      public function removeUserFromLocation(param1:String) : void
      {
         var _loc2_:LocationUser = this.locationUserByUsername[param1];
         dispatchEvent(new LocationModelEvent(LocationModelEvent.REMOVE_CHAR,_loc2_));
         this.locationUserByUsername[param1] = null;
         delete this.locationUserByUsername[param1];
      }
      
      protected function addUsersToLocation(param1:Vector.<LocationUser>) : void
      {
         var _loc2_:LocationUser = null;
         for each(_loc2_ in param1)
         {
            this.locationUserByUsername[_loc2_.username] = _loc2_;
            dispatchEvent(new LocationModelEvent(LocationModelEvent.ADD_NEW_CHAR,_loc2_));
         }
      }
      
      protected function onEnterLocation(param1:ServerResp) : void
      {
         GameSwf.instance.managerMaintanence.checkAndProcessMaintanence(param1);
         dispatchEvent(new LocationModelEvent(LocationModelEvent.UPDATE_MAINTENANCE_TIME));
      }
      
      public function getLocationUser(param1:String) : LocationUser
      {
         if(this.locationUserByUsername[param1] != null)
         {
            return this.locationUserByUsername[param1];
         }
         if(param1 in this._infoLocationUserByUsername)
         {
            return this._infoLocationUserByUsername[param1];
         }
         return null;
      }
      
      public function getLocationUsers() : Vector.<LocationUser>
      {
         var _loc1_:String = null;
         var _loc2_:Vector.<LocationUser> = new Vector.<LocationUser>();
         for(_loc1_ in this.locationUserByUsername)
         {
            _loc2_.push(this.locationUserByUsername[_loc1_]);
         }
         return _loc2_;
      }
      
      public function setUserView(param1:String, param2:CharViewConfig) : void
      {
         var _loc3_:LocationUser = null;
         if(param1 in this.locationUserByUsername)
         {
            _loc3_ = this.locationUserByUsername[param1];
            _loc3_.viewConfig = param2;
         }
      }
      
      public function sendEnterToLocation() : void
      {
         app.char.isFreeze = false;
         this.addRequestHandlers();
         if(this.isSublocation)
         {
            FishaoFscModelManager.locationExtension.enterToSublocation(this._id,Preloader.waitForResponse(this.onEnterLocation));
         }
         else
         {
            FishaoFscModelManager.locationExtension.enterToLocation(this._id,GameSwf.instance.lastLocationId,GameSwf.instance.lastVirtualLocationID,Preloader.waitForResponse(this.onEnterLocation));
            GameSwf.instance.lastLocationId = this._id;
         }
         dispatchEvent(new LocationModelEvent(LocationModelEvent.ENTER_TO_LOCATION));
      }
      
      public function suspend() : void
      {
         this.removeRequestHandlers();
         this.removeAllChars();
      }
      
      public function wakeUp() : void
      {
         this.addRequestHandlers();
      }
      
      public function deactivate() : void
      {
         this.wasLoadedFirstResp = false;
         this.shells = new Vector.<Point>();
      }
      
      public function updateByProfileUserInfoResp(param1:String, param2:ProfileUserInfoResp) : void
      {
         var _loc3_:LocationUser = null;
         if(param1 in this.locationUserByUsername)
         {
            _loc3_ = this.locationUserByUsername[param1];
         }
         else
         {
            if(!(param1 in this._infoLocationUserByUsername))
            {
               this._infoLocationUserByUsername[param1] = new LocationUser();
            }
            _loc3_ = this._infoLocationUserByUsername[param1];
         }
         _loc3_.readFromProfileUserInfoResp(param1,param2);
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         ++this.d_listeners;
         super.addEventListener(param1,param2,param3,param4,param5);
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         --this.d_listeners;
         super.removeEventListener(param1,param2,param3);
      }
      
      public function set wasLoadedFirstResp(param1:Boolean) : void
      {
         this._wasLoadedFirstResp = param1;
      }
   }
}

