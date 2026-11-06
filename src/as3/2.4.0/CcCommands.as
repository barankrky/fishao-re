package
{
   import com.ax3.events.Listeners;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.chars.KeyboardMoveStrategy;
   import com.ax3.fishao.locations.chars.PathMoveStrategy;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.model.info.BuildConfig;
   import com.ax3.fishao.model.missions.Mission;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.features.EUserFeature;
   import com.ax3.fishao.view.dialogs.missions.MissionCompletedSwfDialog;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeType;
   import com.ax3.utils.MemoryController;
   import com.demonsters.debugger.MonsterDebugger;
   import com.junkbyte.console.Cc;
   import com.junkbyte.console.KeyBind;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.ui.Keyboard;
   import flash.utils.setTimeout;
   
   public class CcCommands
   {
      
      public function CcCommands()
      {
         super();
      }
      
      public static function initCommands(param1:GameSwf) : void
      {
         var gameSwfInstance:GameSwf = param1;
         Cc.addSlashCommand("i18n",I18n.get,"get translation of a term");
         Cc.addSlashCommand("mtrackClear",MemoryController.clearTrack);
         Cc.addSlashCommand("decoshopState",function(param1:Number):void
         {
            GameSwf.currentLocationDialog.locationLayersBase.changeDecorationMarketDoorState(Boolean(param1));
         });
         Cc.logch("config","BuildConfig.VERSION: " + BuildConfig.VERSION);
         Cc.logch("config","BuildConfig.BUILD_TYPE: " + BuildConfig.BUILD_TYPE);
         Cc.addSlashCommand("md",function():void
         {
            MonsterDebugger.initialize(gameSwfInstance);
         });
         Cc.addSlashCommand("k",function(param1:Number):void
         {
            KeyboardMoveStrategy.maxSpeed = param1;
         },"Change movement speed by keyboard (Default: " + KeyboardMoveStrategy.maxSpeed + ")");
         Cc.addSlashCommand("sleepMode",function(param1:int):void
         {
            app.performanceManager.sleepMode = param1 != 0;
         });
         Cc.addSlashCommand("newMovement",function(param1:int):void
         {
            LocationDialog.NEW_MOVEMENT = param1;
         });
         Cc.addSlashCommand("perfManager",function(param1:int):void
         {
            app.performanceManager.enabled = param1 > 0;
         });
         if(!BuildConfig.isProd())
         {
            Cc.bindKey(new KeyBind(Keyboard.NUMBER_1,true,true,true),function():void
            {
               KeyboardMoveStrategy.maxSpeed = 4;
            });
            Cc.bindKey(new KeyBind(Keyboard.NUMBER_2,true,true,true),function():void
            {
               KeyboardMoveStrategy.maxSpeed = 10;
            });
            Cc.bindKey(new KeyBind(Keyboard.NUMBER_3,true,true,true),function():void
            {
               KeyboardMoveStrategy.maxSpeed = 20;
            });
            Cc.bindKey(new KeyBind(Keyboard.NUMBER_4,true,true,true),function():void
            {
               KeyboardMoveStrategy.maxSpeed = 30;
            });
         }
         Cc.addSlashCommand("p",function(param1:Number):void
         {
            PathMoveStrategy.maxSpeed = param1;
         },"Change movement speed by keyboard (Default: " + PathMoveStrategy.maxSpeed + ")");
         Cc.addSlashCommand("animationCoef",function(param1:Number):void
         {
            FieldChar.CHAR_ANIMATION_SPEED = param1;
         },"Change animation speed coefficient (Default: " + FieldChar.CHAR_ANIMATION_SPEED + ")");
         Cc.addSlashCommand("syncDebug",function(param1:Number):void
         {
            Config.SYNC_DEBUG = param1 != 0;
         });
         Cc.addSlashCommand("debugDrawLocation",function(param1:Number):void
         {
            Config.DEBUG_DRAW_LOCATION = param1 != 0;
         });
         Cc.addSlashCommand("debugDrawVisibility",function(param1:Number):void
         {
            Config.DEBUG_DRAW_VISIBILITY = param1 != 0;
         });
         Cc.addSlashCommand("clearDrawVisibility",function(param1:Number):void
         {
            Config.CLEAR_DRAW_VISIBILITY = param1 != 0;
         });
         Cc.addSlashCommand("leaveLocation",gameSwfInstance.exitFromAllLocations);
         Cc.addSlashCommand("debugDrawPath",function(param1:Number):void
         {
            Config.DEBUG_DRAW_PATH = param1 != 0;
         },"Change animation speed coefficient (Default: " + FieldChar.CHAR_ANIMATION_SPEED + ")");
         Cc.addSlashCommand("getBlockInfo",function():void
         {
            if(GameSwf.currentLocationDialog != null)
            {
               GameSwf.isDebugLakeCellsVisible = !GameSwf.isDebugLakeCellsVisible;
               GameSwf.currentLocationDialog.startFishBlockUpdate();
            }
         },"Send blocks info reguest");
         Cc.addSlashCommand("send",function():void
         {
            var _loc1_:URLVariables = new URLVariables();
            _loc1_.log = Cc.getAllLog();
            var _loc2_:URLRequest = new URLRequest(Config.SERVER + "bug_report.php");
            _loc2_.data = _loc1_;
            _loc2_.method = URLRequestMethod.POST;
            var _loc3_:URLLoader = new URLLoader();
            _loc3_.load(_loc2_);
         });
         Cc.addSlashCommand("listenenrs",function():void
         {
            Cc.log(Listeners.createListenersReport());
         });
         Cc.addSlashCommand("connectionInfo",function():void
         {
            Cc.log("Connection response time = " + FishaoFscModelManager.fscModel.getAverageTimeMS().toFixed(2) + " ms for " + FishaoFscModelManager.fscModel.getAverageCount().toFixed(2) + " requests");
         });
         Cc.logch(GameSwf.LOADING_CHANNEL,"1. Main.init()");
         Cc.logch(GameSwf.LOADING_CHANNEL,"UpdateManager.init()");
         Cc.addSlashCommand("error",function():void
         {
            setTimeout(function():void
            {
               throw new Error("Test error");
            },1000);
         });
         Cc.addSlashCommand("suspendLocation",function():void
         {
            GameSwf.currentLocationDialog.suspend(null);
         });
         Cc.addSlashCommand("wakeupLocation",function():void
         {
            gameSwfInstance.closeSublocationDialog();
         });
         Cc.addSlashCommand("showFishingTimes",function(param1:Boolean):void
         {
            Config.showFishingTimes = param1;
         });
         Cc.addSlashCommand("obstacleCheat",function(param1:int):void
         {
            Config.OBSTACLE_CHEAT = Boolean(param1);
         });
         Cc.addSlashCommand("charSin",function(param1:Number):void
         {
            KeyboardMoveStrategy.SIN_45 = param1;
         });
         Cc.addSlashCommand("fps",function(param1:Number):void
         {
            GameSwf.stage.frameRate = param1;
         });
         Cc.addSlashCommand("showFishEmoticon",function(param1:Number):void
         {
            var _loc2_:LocationUser = null;
            if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.isActive())
            {
               if(GameSwf.currentLocationDialog.locationModel != null)
               {
                  _loc2_ = GameSwf.currentLocationDialog.locationModel.getLocationUser(app.user.username);
                  if(_loc2_ != null)
                  {
                     if(param1 == 1)
                     {
                        _loc2_.fieldChar.showSmallEmoticon();
                     }
                     else if(param1 == 2)
                     {
                        _loc2_.fieldChar.showMediumEmoticon();
                     }
                     else if(param1 == 3)
                     {
                        _loc2_.fieldChar.showLargeEmoticon();
                     }
                     else
                     {
                        _loc2_.fieldChar.showFiveStarEmoticon();
                     }
                  }
               }
            }
         });
         Cc.addSlashCommand("isShinyAvailable",function():void
         {
            Cc.log("Shiny feature available: " + GameSwf.instance.managerFeatures.isFeatureEnabled(EUserFeature.EUF_SHINY_FISH));
         });
         Cc.addSlashCommand("showMissionCompleteDialog",function():void
         {
            var _loc1_:MissionCompletedSwfDialog = null;
            if(app.user.completedMissionData.length)
            {
               _loc1_ = app.dialogFactory.getMissionCompletedSwfDialog();
               _loc1_.setMission(new Mission(app.user.completedMissionData.pop()));
               _loc1_.show();
            }
         });
         Cc.addSlashCommand("chatTest",function():void
         {
            var chatMessage:Function = function(... rest):void
            {
               FishaoFscModelManager.chatFscExtension.sendPublicMessage(rest.join(" "));
            };
            chatMessage(1);
            chatMessage(2);
            chatMessage(3);
            chatMessage(4);
            chatMessage(5);
            setTimeout(function():void
            {
               chatMessage(6);
               chatMessage(7);
               chatMessage(8);
               chatMessage(9);
               chatMessage(10);
            },500);
            setTimeout(function():void
            {
               chatMessage(11);
               chatMessage(12);
               chatMessage(13);
               chatMessage(14);
               chatMessage(15);
            },2000);
            setTimeout(function():void
            {
               chatMessage(16);
               chatMessage(17);
               chatMessage(18);
               chatMessage(19);
               chatMessage(20);
            },5000);
         });
         Cc.addSlashCommand("visit",function(param1:*):void
         {
            gameSwfInstance.enterPrivateHouse(param1);
         });
         Cc.addSlashCommand("reduceBreedingTime",function(param1:*):void
         {
         });
         Cc.addSlashCommand("startTradeWithVasiliy",function():void
         {
            GameSwf.instance.managerTrade.startTradeWith("Vasiliy",ETradeType.ETT_NPC);
         });
         Cc.addSlashCommand("enterSublocation",function(param1:int):void
         {
            GameSwf.instance.enterToSublocation(param1,-1);
         });
      }
   }
}

