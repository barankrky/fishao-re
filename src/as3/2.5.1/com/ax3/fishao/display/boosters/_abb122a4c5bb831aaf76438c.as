package com.ax3.fishao.display.boosters
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.dialogs._eaf1c366e9817b3f7cf20d19;
   import com.ax3.fishao.model._5c61816df588994ab1b4dbe4;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.features._354d2881bbbfb4c44045fd10;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   
   public class _abb122a4c5bb831aaf76438c extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _0fcdb73fc1862f43a9624bff:_f4248bd8f76a2d18ec313deb = new _f4248bd8f76a2d18ec313deb(this);
      
      protected var _updateGroup:_34a2ba6ad978d976b8b0f5a4;
      
      public function _abb122a4c5bb831aaf76438c()
      {
         super(this._0fcdb73fc1862f43a9624bff);
         this.init();
      }
      
      private static function _4357a2d8d79cadc9e6887ad3(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:_5c61816df588994ab1b4dbe4 = app.user.inventory;
         switch(param1)
         {
            case _67282af25befe9778e5c8dd1.LUCK_POTION.id:
               §§push(0x2F0C98FE ^ 0x4B0ADEB9 ^ 0x761C887A ^ 0x121ACE3D);
               break;
            case _67282af25befe9778e5c8dd1.FISH_RADAR.id:
               §§push(-270525872 ^ 0x436237A0 ^ 0x59074181 ^ -175805328);
               break;
            case _67282af25befe9778e5c8dd1.MAGIC_WATCH.id:
               §§push(0x67BE5AFD ^ -718417044 ^ 0x1295A021 ^ -1610208846);
               break;
            case _67282af25befe9778e5c8dd1.EXP_BOOSTER.id:
               §§push(-859223584 ^ -836365099 ^ -974343160 ^ -956044994);
               break;
            case _67282af25befe9778e5c8dd1.SHINY_POTION.id:
               §§push(0x3B5B904E ^ 0x0D84570C ^ -335254958 ^ -623137516);
               break;
            case _67282af25befe9778e5c8dd1.POWER_BOOSTER.id:
               §§push(-72607015 ^ 0x38BDD90A ^ 0x638D0A49 ^ -1600337505);
               break;
            default:
               §§push(-1266877162 ^ -1122824975 ^ 0x5B4FEAD4 ^ 0x52201B35);
         }
         switch(§§pop())
         {
            case 0:
               if(_loc3_._f994fb3e7bb1cf109d5d4fb8(_67282af25befe9778e5c8dd1.ID_LUCK_POTION_1,param1) != null || _loc3_._f994fb3e7bb1cf109d5d4fb8(_67282af25befe9778e5c8dd1.ID_LUCK_POTION_2,param1) != null)
               {
                  _loc2_ = true;
               }
               break;
            case 1:
               if(_loc3_._f994fb3e7bb1cf109d5d4fb8(_67282af25befe9778e5c8dd1.ID_GREEN_FISH_RADAR,param1) != null || _loc3_._f994fb3e7bb1cf109d5d4fb8(_67282af25befe9778e5c8dd1.ID_WHITE_FISH_RADAR,param1) != null || _loc3_._f994fb3e7bb1cf109d5d4fb8(_67282af25befe9778e5c8dd1.ID_BLUE_FISH_RADAR,param1) != null)
               {
                  _loc2_ = true;
               }
               break;
            case 2:
               if(_loc3_._f994fb3e7bb1cf109d5d4fb8(_67282af25befe9778e5c8dd1.ID_MAGIC_WATCH,param1) != null)
               {
                  _loc2_ = true;
               }
               break;
            case 3:
               if(_loc3_._f994fb3e7bb1cf109d5d4fb8(_67282af25befe9778e5c8dd1.ID_EXP_BOOSTER_X2,param1) != null || _loc3_._f994fb3e7bb1cf109d5d4fb8(_67282af25befe9778e5c8dd1.ID_EXP_BOOSTER_X4,param1) != null)
               {
                  _loc2_ = true;
               }
               break;
            case 4:
               if(_loc3_._f994fb3e7bb1cf109d5d4fb8(_67282af25befe9778e5c8dd1.ID_SHINY_POTION_1,param1) != null || _loc3_._f994fb3e7bb1cf109d5d4fb8(_67282af25befe9778e5c8dd1.ID_SHINY_POTION_2,param1) != null)
               {
                  _loc2_ = true;
               }
               break;
            case 5:
               if(_loc3_._f994fb3e7bb1cf109d5d4fb8(_67282af25befe9778e5c8dd1.ID_POWER_BOOSTER_1,param1) != null || _loc3_._f994fb3e7bb1cf109d5d4fb8(_67282af25befe9778e5c8dd1.ID_POWER_BOOSTER_2,param1) != null)
               {
                  _loc2_ = true;
               }
         }
         return _loc2_;
      }
      
      private static function _a2136b6a7fd3cf21632edba1(param1:int, param2:int) : void
      {
         var _loc3_:int = 0x7620D76A ^ 0x1F108D6E ^ -348172898 ^ 0x71AC29D3;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x71C6235A ^ 0x4512F756 ^ -1375496723 ^ 0x69747FAB))
            {
               case 0:
                  return;
               case 1:
                  GameSwf.instance._904abe67d8849826ace64512(_eaf1c366e9817b3f7cf20d19.TAB_ID_EXTRA,param2);
                  _loc3_ = -1328157089 ^ 0x62D479F5 ^ -1102326602 ^ -1612087978;
                  break;
               case 2:
                  Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("შးႊၣိჾ၂ၵႄႴႵႊဥဥဲၾღေ၏ဢႤხ့ႚၒၬდဘა჌Ⴒქၖვ႞အჳჰိ၊Ⴚဎသႍუၳၥ၏჎ჾ႗ႜဝၱၣံჍდျၪ႓჉ჰთ჎ဲ","ჺႏပဇႆၢံ၆ု္ყჰႦၮဩვ"),param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("措掷揸挋挋挭掁捿捨揙挎挕揿控捷揬捴揧挬掛揗捒揭捹揃掃提捋捌揔捛损挢捌捶捯揿掏揹挛揊掿捼挻揚採挫掔捒捚挛接","掻捿採挢挳掟捧揆揽揩掇挜挮揽捧掛"));
                  GameSwf.instance._a02cff3c18e21380dfad588f(_67282af25befe9778e5c8dd1.OTHER);
                  _loc3_ = -2113414358 ^ -1064977928 ^ -329304778 ^ 0x5D7E69AE;
                  break;
               case 3:
                  if(_4357a2d8d79cadc9e6887ad3(param1))
                  {
                     _loc3_ = -782951583 ^ 0x4C689D73 ^ -584384207 ^ -1279936149;
                  }
                  else
                  {
                     _loc3_ = -470804393 ^ -846129225 ^ -1126080441 ^ 0x612351EC;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set activateInTutorial(param1:Boolean) : void
      {
         this._0fcdb73fc1862f43a9624bff.buttonExp.isEnabled = param1;
         this._0fcdb73fc1862f43a9624bff.buttonLuckPotion.isEnabled = param1;
         this._0fcdb73fc1862f43a9624bff.buttonMagicWatch.isEnabled = param1;
         this._0fcdb73fc1862f43a9624bff.buttonRadar.isEnabled = param1;
         this._0fcdb73fc1862f43a9624bff.buttonShinyPotion.isEnabled = param1;
         this._0fcdb73fc1862f43a9624bff.buttonPower.isEnabled = param1;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         var _loc4_:_305fa3f8dbbefcf8a5b9c778 = param1 as _305fa3f8dbbefcf8a5b9c778;
         if(_loc4_ == null)
         {
            return _loc3_;
         }
         if(!_loc3_ && _loc4_.state == _824ca56c5e86a3bb217364f0.EBBS_DISABLE)
         {
            switch(_loc4_)
            {
               case this._0fcdb73fc1862f43a9624bff.buttonExp:
                  §§push(0x6A95C987 ^ 0x388631C8 ^ -340902788 ^ -1178745805);
                  break;
               case this._0fcdb73fc1862f43a9624bff.buttonLuckPotion:
                  §§push(-924449737 ^ -1082186944 ^ -112703471 ^ -1898877081);
                  break;
               case this._0fcdb73fc1862f43a9624bff.buttonRadar:
                  §§push(0x3EF17845 ^ -1058974444 ^ 0x01882E62 ^ -6814927);
                  break;
               case this._0fcdb73fc1862f43a9624bff.buttonMagicWatch:
                  §§push(0x70D74D64 ^ 0x643836E2 ^ -2142798770 ^ -1800927285);
                  break;
               case this._0fcdb73fc1862f43a9624bff.buttonShinyPotion:
                  §§push(-141488633 ^ -1814110347 ^ -2101732541 ^ -420099531);
                  break;
               case this._0fcdb73fc1862f43a9624bff.buttonPower:
                  §§push(0x0391CBE8 ^ 0x3CC168D3 ^ -744913166 ^ -322361908);
                  break;
               default:
                  §§push(-1974227328 ^ -238367692 ^ 0x328E6742 ^ 0x491705F0);
            }
            switch(§§pop())
            {
               case 0:
                  _a2136b6a7fd3cf21632edba1(_67282af25befe9778e5c8dd1.EXP_BOOSTER.id,_67282af25befe9778e5c8dd1.ID_EXP_BOOSTER_X2);
                  _loc3_ = true;
                  break;
               case 1:
                  _a2136b6a7fd3cf21632edba1(_67282af25befe9778e5c8dd1.LUCK_POTION.id,_67282af25befe9778e5c8dd1.ID_LUCK_POTION_1);
                  _loc3_ = true;
                  break;
               case 2:
                  _a2136b6a7fd3cf21632edba1(_67282af25befe9778e5c8dd1.FISH_RADAR.id,_67282af25befe9778e5c8dd1.ID_GREEN_FISH_RADAR);
                  _loc3_ = true;
                  break;
               case 3:
                  _a2136b6a7fd3cf21632edba1(_67282af25befe9778e5c8dd1.MAGIC_WATCH.id,_67282af25befe9778e5c8dd1.ID_MAGIC_WATCH);
                  _loc3_ = true;
                  break;
               case 4:
                  _a2136b6a7fd3cf21632edba1(_67282af25befe9778e5c8dd1.SHINY_POTION.id,_67282af25befe9778e5c8dd1.ID_SHINY_POTION_1);
                  _loc3_ = true;
                  break;
               case 5:
                  _a2136b6a7fd3cf21632edba1(_67282af25befe9778e5c8dd1.POWER_BOOSTER.id,_67282af25befe9778e5c8dd1.ID_POWER_BOOSTER_1);
                  _loc3_ = true;
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function _8b95a03bab7f6ba606b0c33d(param1:uint, param2:uint) : void
      {
         this._0fcdb73fc1862f43a9624bff.buttonExp.timeLeft = app.user._0197120ef6d49b0893064c98(app.user.currentExpBoosterTimeMark);
         this._0fcdb73fc1862f43a9624bff.buttonLuckPotion.timeLeft = app.user._0197120ef6d49b0893064c98(app.user.currentLuckPotionTimeMark);
         this._0fcdb73fc1862f43a9624bff.buttonMagicWatch.timeLeft = app.user._0197120ef6d49b0893064c98(app.user.currentMagicWatchTimeMark);
         this._0fcdb73fc1862f43a9624bff.buttonRadar.timeLeft = app.user._0197120ef6d49b0893064c98(app.user.currentFishRadarTimeMark);
         this._0fcdb73fc1862f43a9624bff.buttonShinyPotion.timeLeft = app.user._0197120ef6d49b0893064c98(app.user.currentShinyPotionTimeMark);
         this._0fcdb73fc1862f43a9624bff.buttonPower.timeLeft = app.user._0197120ef6d49b0893064c98(app.user.currentPowerBoosterTimeMark);
      }
      
      private function init() : void
      {
         this.update(_6b63fd0a4028eb279b227831.ECU_SHINY_STATE);
         this._updateGroup = _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200);
         this._updateGroup._475178699397df7592a9026e(this._8b95a03bab7f6ba606b0c33d);
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_SHINY_STATE === _loc2_ ? -1032774039 ^ 0x1E0E6E1A ^ -1788718859 ^ 0x491D2086 : 0x57EA9783 ^ 0x19675561 ^ -1482642590 ^ -382899839)
         {
            case 0:
               this._0fcdb73fc1862f43a9624bff.buttonShinyPotion.source.visible = GameSwf.instance.managerFeatures.isFeatureEnabled(_354d2881bbbfb4c44045fd10.EUF_SHINY_FISH);
               break;
            default:
               Debug.assert(false);
         }
      }
      
      public function _900a1f1bb2fa04204f399383(param1:int) : void
      {
         this._5f0fc4378bbb8189021b2536(param1,_824ca56c5e86a3bb217364f0.EBBS_DISABLE);
      }
      
      public function _dfac9a8e0f13cdd7663125db(param1:int, param2:int) : void
      {
         var _loc3_:String = _824ca56c5e86a3bb217364f0._d9fc460712ce3ee73afa1e5e(param2);
         this._5f0fc4378bbb8189021b2536(param1,_loc3_);
      }
      
      private function _5f0fc4378bbb8189021b2536(param1:int, param2:String) : void
      {
         switch(param1)
         {
            case _67282af25befe9778e5c8dd1.LUCK_POTION.id:
               §§push(-1880914378 ^ 0x7F8D7C14 ^ -1814625180 ^ 0x63B9FE46);
               break;
            case _67282af25befe9778e5c8dd1.FISH_RADAR.id:
               §§push(0x6288C610 ^ 0x335AED94 ^ 0x35172EB7 ^ 0x64C50532);
               break;
            case _67282af25befe9778e5c8dd1.MAGIC_WATCH.id:
               §§push(0x65F128E3 ^ 0x764BFFCD ^ -190476332 ^ -417376008);
               break;
            case _67282af25befe9778e5c8dd1.EXP_BOOSTER.id:
               §§push(0x21C3E046 ^ 0x0E56AF3D ^ 0x481EEC93 ^ 0x678BA3EB);
               break;
            case _67282af25befe9778e5c8dd1.SHINY_POTION.id:
               §§push(-719849049 ^ 0x5BAF01DC ^ 0x73D4288C ^ -43200269);
               break;
            case _67282af25befe9778e5c8dd1.POWER_BOOSTER.id:
               §§push(-1485717092 ^ 0x1F464049 ^ 0x5B6000D3 ^ -480804605);
               break;
            default:
               §§push(-1549523487 ^ -1790360268 ^ -1800407067 ^ -1572694218);
         }
         switch(§§pop())
         {
            case 0:
               this._0fcdb73fc1862f43a9624bff.buttonLuckPotion.state = param2;
               break;
            case 1:
               this._0fcdb73fc1862f43a9624bff.buttonRadar.state = param2;
               break;
            case 2:
               this._0fcdb73fc1862f43a9624bff.buttonMagicWatch.state = param2;
               break;
            case 3:
               this._0fcdb73fc1862f43a9624bff.buttonExp.state = param2;
               break;
            case 4:
               this._0fcdb73fc1862f43a9624bff.buttonShinyPotion.state = param2;
               break;
            case 5:
               this._0fcdb73fc1862f43a9624bff.buttonPower.state = param2;
               break;
            default:
               Debug.assert(false);
         }
      }
   }
}

