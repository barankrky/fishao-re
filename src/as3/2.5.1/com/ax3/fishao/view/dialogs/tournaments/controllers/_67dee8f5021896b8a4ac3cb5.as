package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._009582d19d1c5695c49f2ed8;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.tournaments._9adbacee9e79da53f4cf55bb;
   import com.ax3.fishao.view.dialogs.tournaments.models._2a31502166ae419b5332a782;
   import com.ax3.fishao.view.dialogs.tournaments.models._87c5db8b779e4199260f7152;
   import com.ax3.fishao.view.dialogs.tournaments.models._a1842a5c36511100aec6f1ca;
   import com.ax3.fishao.view.dialogs.tournaments.models._e49f888e5d8714a6c39e60da;
   import com.ax3.fishao.view.dialogs.tournaments.views._6a7e6b6f119777b0667d6d35;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.TimeConverter;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import protocol.api.base.ResponseError;
   
   public class _67dee8f5021896b8a4ac3cb5 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private static const _0b48a931a856215caef4df0d:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴒიღှၢ၁Ⴌၮွၢ","ქဗဌႆႦဇၨ႐ၛყူၩဘၪლရ");
      
      private var _0b12b8d765766006339dc353:_6a7e6b6f119777b0667d6d35;
      
      private var _b20d385f4d1120fa91e70ebb:_2a31502166ae419b5332a782;
      
      private var _be7d663a16d72481e6084d03:_9adbacee9e79da53f4cf55bb;
      
      private var _f12309f7e88e02eb9b14dec4:Timer;
      
      private var _10a14e0849c886397beb4d71:Boolean;
      
      public function _67dee8f5021896b8a4ac3cb5(param1:DisplayObjectContainer)
      {
         this._0b12b8d765766006339dc353 = new _6a7e6b6f119777b0667d6d35(this,param1);
         super(this._0b12b8d765766006339dc353);
         this.init();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            var _loc4_:Object = param1;
            switch(this._0b12b8d765766006339dc353.buttonSignUp === _loc4_ ? 0x079305A5 ^ 0x61C493DB ^ -1973371408 ^ -331928690 : 0x675F2A40 ^ -488799942 ^ -703733403 ^ 0x538F4A1E)
            {
               case 0:
                  this._b198cc042569149c69e85d0e();
                  break;
               default:
                  Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挃排掛捍捠捄挟捩揚挮挃挖掞掃捯捫捒挹揈掣揑掫掺捊挿捗捊揶揕掌挙掂挠掎揊捯掊揙掣掝捅挅捱掄捇掏挼掅掰掄挽掤掂揤揢挕挱捞揆捍捘推揙掸捻揪揮挞捓捋掙揃掉捷揱掩揪捘捚揢揳揉接掍揃捝掐捓揬揉掰挾捙掩揝挪掾捁捐揶挓揍掤挍捾插挂捴挼捸挞捘揙按描握捱捧挬振揉揔掅掝挰揩挅捑损捠揧掙掕振捊掆捼掅掎捓捛挆挠掍捚揮挣掓挧捐掶掍","捗掓推捒揉揹捆挑挿揕捛揕捲挌挼挜") + param1.toString());
            }
         }
         return _loc3_;
      }
      
      private function _b198cc042569149c69e85d0e() : void
      {
         var _loc1_:int = 0x1B2FE5C7 ^ -1602312987 ^ -55631516 ^ 0x338858A2;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4495CD80 ^ -1255937121 ^ 0x69968647 ^ -329869123))
            {
               case 0:
                  _0737efdbd5337ba3fbc64b2e.getInstance()._f42ac7342cf11c48018af906().close();
                  GameSwf.instance._e6f0a7b005cacf7751286e97();
                  _loc1_ = -298240995 ^ -498812932 ^ -333029092 ^ -1808934373;
                  break;
               case 1:
                  this._0b12b8d765766006339dc353.buttonSignUp.disable();
                  this._10a14e0849c886397beb4d71 = true;
                  if(app.user.fishcoins < this._b20d385f4d1120fa91e70ebb.signUpCost)
                  {
                     _loc1_ = -1498928075 ^ -1017076683 ^ -1163593706 ^ -1424340749;
                  }
                  else
                  {
                     _loc1_ = -1978736789 ^ 0x4C90EDF3 ^ 0x3FE614E1 ^ -1928454498;
                  }
                  break;
               case 2:
                  this._be7d663a16d72481e6084d03.canSignUpOnCurrent(this._857ba021e4ff903cfec6b0cb);
                  _loc1_ = -197364100 ^ 0x36119620 ^ -579495288 ^ 0x6B2E4232;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _857ba021e4ff903cfec6b0cb(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ResponseError = param1 as ResponseError;
         if(_loc2_ != null)
         {
            this._0b12b8d765766006339dc353.buttonSignUp.enable();
         }
      }
      
      private function _94e7416cfebb6b4b55442e51(param1:TimerEvent) : void
      {
         this._298835179b7773d77a3d5b55();
         this._e8dcb65e377da2fdf07526f6();
      }
      
      private function init() : void
      {
         this._be7d663a16d72481e6084d03 = GameSwf.instance.managerTournaments;
         this.update(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_ESTABLISH_CURRENT);
      }
      
      private function _64f4a16caa2a89c155955309() : void
      {
         this._0b12b8d765766006339dc353.dialogTitle = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_TOURNAMENT_NAME.replace(_706c123ff0b2d45829c1bb3e.ESTS_TYPE,this._b20d385f4d1120fa91e70ebb.type));
         this._0b12b8d765766006339dc353.members = this._b20d385f4d1120fa91e70ebb.membersCountSignedUp.toString() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဥယႜႆႭ႒ႋႊမ჏ხျၕ၌","ქအჩ႑ဋဲ၄჌჻ီჁၶႳ၈ჱဢ") + this._b20d385f4d1120fa91e70ebb.membersCountMax.toString();
         var _loc1_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_TOURNAMENT_TYPE_TEMPLATE);
         _loc1_ = _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_TYPE,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_TOURNAMENT_TYPE.replace(_706c123ff0b2d45829c1bb3e.ESTS_TYPE,this._b20d385f4d1120fa91e70ebb.type)));
         _loc1_ = _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_DIFFICULTY,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_TOURNAMENT_DIFFICULTY.replace(_706c123ff0b2d45829c1bb3e.ESTS_DIFFICULTY,this._b20d385f4d1120fa91e70ebb.difficulty)));
         _loc1_ = _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_LEVEL_MIN,this._b20d385f4d1120fa91e70ebb.memberLevelMin);
         var _loc2_:String = this._b20d385f4d1120fa91e70ebb.memberLevelMax == int.MAX_VALUE ? _0b48a931a856215caef4df0d : this._b20d385f4d1120fa91e70ebb.memberLevelMax.toString();
         _loc1_ = _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_LEVEL_MAX,_loc2_);
         this._0b12b8d765766006339dc353.type = _loc1_;
         this._0b12b8d765766006339dc353.description = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_TOURNAMENT_DESCRIPTION.replace(_706c123ff0b2d45829c1bb3e.ESTS_TYPE,this._b20d385f4d1120fa91e70ebb.type));
         switch(this._b20d385f4d1120fa91e70ebb.type)
         {
            case _a1842a5c36511100aec6f1ca.ETT_BOAT_ON_SEA:
               §§push(-1675712920 ^ -964752894 ^ 0x7437F46B ^ 0x2E565801);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_LAKE_RUN:
               §§push(-825543395 ^ 0x35133E4A ^ 0x3F34FE74 ^ -991103710);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_MORAY:
               §§push(0x5EA68907 ^ 0x6E3529FD ^ 0x3ADF7C80 ^ 0x0A4CDC78);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_RACE:
               §§push(-1545414067 ^ 0x69B2C1BE ^ 0x778951EB ^ -1109833189);
               break;
            default:
               §§push(-335231120 ^ 0x24F546D7 ^ 0x7086A367 ^ -1200151868);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
               this._0b12b8d765766006339dc353.durationTitle = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_SIGN_UP_DURATION_DEFAULT);
               this._0b12b8d765766006339dc353.duration = TimeConverter.toHMSString(TimeConverter.fromSeconds(this._b20d385f4d1120fa91e70ebb.duration));
               break;
            case 3:
               this._0b12b8d765766006339dc353.durationTitle = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_SIGN_UP_DURATION_FISH);
               this._0b12b8d765766006339dc353.duration = this._b20d385f4d1120fa91e70ebb.fishToWinCount.toString();
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掫挐捩捈挞捲挊捂掯挩挬挛揣捐掦揭掦挹揈捿捾挹捗捝掳揇挾捴捏掤捏揺揥掌掕捈捋揾掾挐掋揼捧揵揞掜掁揹捊挬掶掼捣挖捅据掄捱握挥掷捴捖揊挛捾捚挮揪捈掬挸挾掆掰揕揄挪掤揧挫挌捍掮捩揯挪捃挠捒挸掅挥挷掀挽掐挊挓揓揠挅挧捜捳捈捐掟捁挲掷挡掤捬捍挠揿捕挿捂挼捪挨掩挘掄掋挍挹排掁揓掻揮挺挺掘捖揠挳捊援揀挼掠揃捪捾掔挴揃捀挚掮","揟揈捨挢挶揫挵掑揳捲捧挜揅揺挶挄") + this._b20d385f4d1120fa91e70ebb.type);
         }
         this._0b12b8d765766006339dc353.buttonSignUp.coins = this._b20d385f4d1120fa91e70ebb.signUpCost;
      }
      
      private function _6d231e551d359e8d11778860() : void
      {
         var _loc1_:_e49f888e5d8714a6c39e60da = null;
         var _loc2_:DisplayObjectContainer = null;
         var _loc3_:_b227757c19491f931484900b = null;
         var _loc4_:Array = [];
         for each(_loc1_ in this._b20d385f4d1120fa91e70ebb.prizeItems)
         {
            _loc2_ = new gViewPrizeItem();
            _loc3_ = new _b227757c19491f931484900b(_loc2_,_loc1_);
            _loc3_.displayRelevant = true;
            _loc4_.push(_loc3_.view.source);
         }
         this._0b12b8d765766006339dc353.prizes = _loc4_;
      }
      
      private function _298835179b7773d77a3d5b55() : void
      {
         var _loc1_:String = this._b20d385f4d1120fa91e70ebb.state;
         switch(_loc1_)
         {
            case _87c5db8b779e4199260f7152.ETS_UPCOMING:
               §§push(0x1F5298C0 ^ 0x53D95207 ^ 0x5BE8D725 ^ 0x17631DE2);
               break;
            case _87c5db8b779e4199260f7152.ETS_WAIT_FOR_SIGN_UP:
               §§push(-1313666413 ^ 0x6AC8B134 ^ -1332017616 ^ 0x6BE0BD96);
               break;
            case _87c5db8b779e4199260f7152.ETS_SIGNING:
               §§push(0x0375135C ^ -190693904 ^ 0x5D6AD4D0 ^ -1430390146);
               break;
            default:
               §§push(0x6026C234 ^ -2049511722 ^ -262850268 ^ 0x15A515C5);
         }
         switch(§§pop())
         {
            case 0:
               this._0b12b8d765766006339dc353.timeStart = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_SIGN_UP_TOURNAMENT_SOON);
               this._0b12b8d765766006339dc353.timeSignUp = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_SIGN_UP_TOURNAMENT_SOON);
               break;
            case 1:
            case 2:
               this._0b12b8d765766006339dc353.timeSignUp = TimeConverter.toHMSString(TimeConverter.fromSeconds(this._b20d385f4d1120fa91e70ebb.timeLeftSignUp));
               this._0b12b8d765766006339dc353.timeStart = TimeConverter.toHMSString(TimeConverter.fromSeconds(this._b20d385f4d1120fa91e70ebb.timeLeftStart));
               if(this._b20d385f4d1120fa91e70ebb.timeLeftStart <= (0x58CE8CD8 ^ 0x796BA471 ^ -196321958 ^ -706120205))
               {
                  this._1ae0f477864dc95ccb8f9afe();
                  this._be7d663a16d72481e6084d03._1dbac8d0df5e942707881671();
               }
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捒持掬捷挮挋掁挃挖指挷掯挦挭捝掍挞捰挫挦掍揶掿挏掝揂捊掔挘挰揱捁捈揁挳捎掐捑揮挴措揵掐揥掌捋挼掴掗掁揤挝揞掠掂揰掬掯挱掭捘捻接挏揀捂捖揅捧捸挆揳挸掓挒掇揶掄揧挭掅揁挟挎揑挼换挑捵捰挵捆揅捏揣揌挅捙捔捈掯捅挡据揂揭振握掘捥揊挮掑掬掦掏揎捎掰挜挣挖挏揜挔捱援掚揥掺掫挦掫持揕挍挅掦捍捤揮挹掕掇挎提捴捱捓掰揘揌挎揣挽揧掇捪掰掅捛掆揽揠掼捲措捰揫捐掤掉揁挼捸掊换揇揢揖捞挒挶揻捨掅","捧掍揩捸捤揱掃掖揩控掺揔授捸挋揆") + _loc1_);
         }
      }
      
      private function _e8dcb65e377da2fdf07526f6() : void
      {
         var _loc1_:String = this._be7d663a16d72481e6084d03.tournamentCurrent.state;
         switch(_loc1_)
         {
            case _87c5db8b779e4199260f7152.ETS_UPCOMING:
               §§push(0x57115B22 ^ -1945425011 ^ 0x492154D9 ^ -1841617802);
               break;
            case _87c5db8b779e4199260f7152.ETS_WAIT_FOR_SIGN_UP:
               §§push(-1315863002 ^ -552698352 ^ -1871298350 ^ -18237211);
               break;
            case _87c5db8b779e4199260f7152.ETS_SIGNING:
               §§push(0x4E119DF0 ^ 0x03E6355F ^ -363182115 ^ -1481773200);
               break;
            default:
               §§push(0x78753AF3 ^ -1253009076 ^ -1839164715 ^ 0x5F453169);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               if(this._0b12b8d765766006339dc353.buttonSignUp.enabled)
               {
                  this._0b12b8d765766006339dc353.buttonSignUp.disable();
               }
               break;
            case 2:
               if(!this._0b12b8d765766006339dc353.buttonSignUp.enabled && !this._10a14e0849c886397beb4d71)
               {
                  this._0b12b8d765766006339dc353.buttonSignUp.enable();
               }
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捛掝揬掦揉掬捒挘挅捹捇揟揆揾揺挟掶掴揅掙掷揯掱揆掷掙捙挻揓掊挒挖捴揮揜掽挸捛捪掹捜捖揁揯挬揣掏掠掝捱掰揓挰揇捁採掶揭揉捊挘捐掄掷捖挄掑捦揳捤揀挾揃捤挬掮捅掸換掄揇控揧捃挫掁揩掲挚损掁挥捱掼揣捐挔挍接挋揲捰掅挈挜揪挵挐掷揓掋揢捖捇捡捔挚捜挕提掝挊挙掴掄掳捶捿捆揇掬揃揀掷捷掝揇掖挬捎挄排排揅握揍揤挒挗挿指掕捕揑掹掳揥捧揨捳揮採挂挝掵描挰揤捣揅挏挩捡揺捶揃掙捥揸捇挀揓捻掄掽捇揆揰","揊掠捩挰揓挆据捃揶掁掻振捡掇掟挱") + _loc1_);
         }
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:_009582d19d1c5695c49f2ed8 = null;
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_TOURNAMENT_SIGN_UP:
               §§push(0x4DF1C0CF ^ -1467411210 ^ 0x153948E6 ^ -264135457);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_ESTABLISH_CURRENT:
               §§push(-1209140540 ^ -1953360633 ^ 0x2EB5F07A ^ 0x12CA1FB8);
               break;
            default:
               §§push(-610953457 ^ 0x60AA63BB ^ 0x2C2EB881 ^ -1760474057);
         }
         switch(§§pop())
         {
            case 0:
               this._0b12b8d765766006339dc353.buttonSignUp.disable();
               _loc2_ = _0737efdbd5337ba3fbc64b2e.getInstance()._f687dfac11484f757ff7d8b1(_22437dfd77f65dbf9dbc4281.EDT_TOURNAMENT_SIGNUP);
               if(_loc2_ != null)
               {
                  _loc2_.close();
               }
               break;
            case 1:
               this._b20d385f4d1120fa91e70ebb = this._be7d663a16d72481e6084d03.tournamentCurrent;
               this._64f4a16caa2a89c155955309();
               this._6d231e551d359e8d11778860();
               this._e81ba3899cd003cdeda40af9();
               this._94e7416cfebb6b4b55442e51(null);
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劋剾刷勅劊劘勴刅刄刍刱劉利勱刡劙剷務到勢剮勬劢劕劶剓剸勌剳劶剥剡刐剤刷初勿勿勦剈刏剀劇劁劎劽劊剳剚剄刔剻刵剢刦势剽切剁刘刍劕劤刌刺刪剔刯功剼則励刢勄剈勲刪割劘刳剴剭剕刹劂剽刺剤剋勆勲判刉剬剤剠刟劙劋刅剹劋劃剧勦劽刍刂刌剉勃剭剛勔剎劀势创刿剳功劳勶剩劸勔劘剛剰劙剒剞利力劢刢刵剙动删剰劻勖勺剿剫到剌刑力剡刁","劄劧刓剘勺勹刹劀剰刎划剔勃刿办剙") + param1);
         }
      }
      
      private function _e81ba3899cd003cdeda40af9() : void
      {
         this._1ae0f477864dc95ccb8f9afe();
         this._f12309f7e88e02eb9b14dec4 = new Timer(0x1EF5FEE7 ^ -1052813678 ^ 0x3A0C6211 ^ -439956820);
         this._f12309f7e88e02eb9b14dec4.addEventListener(TimerEvent.TIMER,this._94e7416cfebb6b4b55442e51);
         this._f12309f7e88e02eb9b14dec4.start();
      }
      
      private function _1ae0f477864dc95ccb8f9afe() : void
      {
         var _loc1_:int = 0x4B04EB2F ^ -911238716 ^ 0x7455B9A0 ^ -1839124491;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1890263345 ^ 0x2FE361C7 ^ -1888219990 ^ 0x4B5C571E))
            {
               case 0:
                  this._f12309f7e88e02eb9b14dec4.removeEventListener(TimerEvent.TIMER,this._94e7416cfebb6b4b55442e51);
                  this._f12309f7e88e02eb9b14dec4.stop();
                  this._f12309f7e88e02eb9b14dec4 = null;
                  return;
               case 1:
                  return;
               case 2:
                  if(this._f12309f7e88e02eb9b14dec4 == null)
                  {
                     _loc1_ = -431652740 ^ -2059343383 ^ -660181887 ^ -549658199;
                  }
                  else
                  {
                     _loc1_ = -73765986 ^ 0x642F47A7 ^ -2008071080 ^ 0x73658CDD;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._1ae0f477864dc95ccb8f9afe();
         this._be7d663a16d72481e6084d03 = null;
         this._b20d385f4d1120fa91e70ebb = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

