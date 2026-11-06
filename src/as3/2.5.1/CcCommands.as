package
{
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao.Config;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.chars._2e5b3522a164ee588f85e4b1;
   import com.ax3.fishao.locations.chars._412bba20db41500babcd2a85;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.model.info._9f0379c95e97da0c1ff2a833;
   import com.ax3.fishao.model.missions._6c4d7e638317cabf44146578;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.features._354d2881bbbfb4c44045fd10;
   import com.ax3.fishao.view.dialogs.missions._4b5a19ada8c53700a7227781;
   import com.ax3.fishao.view.dialogs.trade.model._3f231537217a2498942b645b;
   import com.ax3.utils._7f6e94654d569d3506e684e2;
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
         Cc.addSlashCommand("i18n",_c2ad9d37d7be0097d6d2e977.get,"get translation of a term");
         Cc.addSlashCommand("mtrackClear",_7f6e94654d569d3506e684e2._9bef72003448e2b78b56129f);
         Cc.addSlashCommand("decoshopState",function(param1:Number):void
         {
            GameSwf.currentLocationDialog.locationLayersBase._2ab9e1ce7d6a25a5ee856c72(Boolean(param1));
         });
         Cc.logch("config","BuildConfig.VERSION: " + _9f0379c95e97da0c1ff2a833.VERSION);
         Cc.logch("config","BuildConfig.BUILD_TYPE: " + _9f0379c95e97da0c1ff2a833.BUILD_TYPE);
         Cc.addSlashCommand("md",function():void
         {
            MonsterDebugger.initialize(gameSwfInstance);
         });
         Cc.addSlashCommand("k",function(param1:Number):void
         {
            _412bba20db41500babcd2a85.maxSpeed = param1;
         },"Change movement speed by keyboard (Default: " + _412bba20db41500babcd2a85.maxSpeed + ")");
         Cc.addSlashCommand("sleepMode",function(param1:int):void
         {
            app.performanceManager.sleepMode = param1 != 0;
         });
         Cc.addSlashCommand("newMovement",function(param1:int):void
         {
            _67f8febc099eaa05c48aa41e.NEW_MOVEMENT = param1;
         });
         Cc.addSlashCommand("perfManager",function(param1:int):void
         {
            app.performanceManager.enabled = param1 > 0;
         });
         if(!_9f0379c95e97da0c1ff2a833._17cfc701aba420494fc10653())
         {
            Cc.bindKey(new KeyBind(Keyboard.NUMBER_1,true,true,true),function():void
            {
               _412bba20db41500babcd2a85.maxSpeed = 4;
            });
            Cc.bindKey(new KeyBind(Keyboard.NUMBER_2,true,true,true),function():void
            {
               _412bba20db41500babcd2a85.maxSpeed = 10;
            });
            Cc.bindKey(new KeyBind(Keyboard.NUMBER_3,true,true,true),function():void
            {
               _412bba20db41500babcd2a85.maxSpeed = 20;
            });
            Cc.bindKey(new KeyBind(Keyboard.NUMBER_4,true,true,true),function():void
            {
               _412bba20db41500babcd2a85.maxSpeed = 30;
            });
         }
         Cc.addSlashCommand("p",function(param1:Number):void
         {
            _2e5b3522a164ee588f85e4b1.maxSpeed = param1;
         },"Change movement speed by keyboard (Default: " + _2e5b3522a164ee588f85e4b1.maxSpeed + ")");
         Cc.addSlashCommand("animationCoef",function(param1:Number):void
         {
            _08c120b706560fce9302bcab.CHAR_ANIMATION_SPEED = param1;
         },"Change animation speed coefficient (Default: " + _08c120b706560fce9302bcab.CHAR_ANIMATION_SPEED + ")");
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
         Cc.addSlashCommand("leaveLocation",gameSwfInstance._3cd353c37b2560deea20324a);
         Cc.addSlashCommand("debugDrawPath",function(param1:Number):void
         {
            Config.DEBUG_DRAW_PATH = param1 != 0;
         },"Change animation speed coefficient (Default: " + _08c120b706560fce9302bcab.CHAR_ANIMATION_SPEED + ")");
         Cc.addSlashCommand("getBlockInfo",function():void
         {
            if(GameSwf.currentLocationDialog != null)
            {
               GameSwf.isDebugLakeCellsVisible = !GameSwf.isDebugLakeCellsVisible;
               GameSwf.currentLocationDialog._959161d5b571a8be972f46ad();
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
            Cc.log(_02fbe4cbe9e83f1b8c711799._b7fd8cf54bf37a82220f6264());
         });
         Cc.addSlashCommand("connectionInfo",function():void
         {
            Cc.log("Connection response time = " + _dfa25706e58a240c1e33e5c6.fscModel._2b9b992198bf00334c52ab34().toFixed(2) + " ms for " + _dfa25706e58a240c1e33e5c6.fscModel._cb6de17be29352df9bbc1fd1().toFixed(2) + " requests");
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
            GameSwf.currentLocationDialog._23c3b6f92a3e3c08391f2110(null);
         });
         Cc.addSlashCommand("wakeupLocation",function():void
         {
            gameSwfInstance._9539c89c962dfaf34e69b2ae();
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
            _412bba20db41500babcd2a85.SIN_45 = param1;
         });
         Cc.addSlashCommand("fps",function(param1:Number):void
         {
            GameSwf.stage.frameRate = param1;
         });
         Cc.addSlashCommand("showFishEmoticon",function(param1:Number):void
         {
            var _loc2_:_810c4ade948afb64e9c7ee25 = null;
            if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.isActive())
            {
               if(GameSwf.currentLocationDialog.locationModel != null)
               {
                  _loc2_ = GameSwf.currentLocationDialog.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
                  if(_loc2_ != null)
                  {
                     if(param1 == 1)
                     {
                        _loc2_.fieldChar._c1c6f51c729d7ec8f2fc094e();
                     }
                     else if(param1 == 2)
                     {
                        _loc2_.fieldChar._a9035bf37ccbd39391b64ca2();
                     }
                     else if(param1 == 3)
                     {
                        _loc2_.fieldChar._248d6629ebc8a5fe402a66ef();
                     }
                     else
                     {
                        _loc2_.fieldChar._e08045943d07dd6daf7211a9();
                     }
                  }
               }
            }
         });
         Cc.addSlashCommand("isShinyAvailable",function():void
         {
            Cc.log("Shiny feature available: " + GameSwf.instance.managerFeatures.isFeatureEnabled(_354d2881bbbfb4c44045fd10.EUF_SHINY_FISH));
         });
         Cc.addSlashCommand("showMissionCompleteDialog",function():void
         {
            var _loc1_:_4b5a19ada8c53700a7227781 = null;
            if(app.user.completedMissionData.length)
            {
               _loc1_ = app.dialogFactory._55d7d150d991c4bb35c4f104();
               _loc1_._9c6b10d69a8856063192b0c5(new _6c4d7e638317cabf44146578(app.user.completedMissionData.pop()));
               _loc1_.show();
            }
         });
         Cc.addSlashCommand("chatTest",function():void
         {
            var chatMessage:Function = function(... rest):void
            {
               _dfa25706e58a240c1e33e5c6.chatFscExtension._6fbcd38e2f77dae9897d47cf(rest.join(" "));
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
            gameSwfInstance._0bcd23177a136eba1c7dbe4f(param1);
         });
         Cc.addSlashCommand("reduceBreedingTime",function(param1:*):void
         {
         });
         Cc.addSlashCommand("startTradeWithVasiliy",function():void
         {
            GameSwf.instance.managerTrade._60019a144b136cb1a56690b2("Vasiliy",_3f231537217a2498942b645b.ETT_NPC);
         });
         Cc.addSlashCommand("enterSublocation",function(param1:int):void
         {
            GameSwf.instance._8baab790e59e91e8d64bc4d2(param1,-1);
         });
      }
   }
}

