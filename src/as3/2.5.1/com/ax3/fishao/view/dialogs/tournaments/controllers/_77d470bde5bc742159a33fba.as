package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.tournaments._9adbacee9e79da53f4cf55bb;
   import com.ax3.fishao.view.dialogs.tournaments.models._4a26c3e739ada00470a83032;
   import com.ax3.fishao.view.dialogs.tournaments.views._360be0c299a2ffe6f21f911e;
   import flash.display.DisplayObjectContainer;
   
   public class _77d470bde5bc742159a33fba extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _0bc8ec9c9ef2a68700609141:_360be0c299a2ffe6f21f911e;
      
      private var _ac941c4a9dccddf9d7cc1a63:_9adbacee9e79da53f4cf55bb;
      
      private var _2d543897287629c65b1de06c:Array;
      
      public function _77d470bde5bc742159a33fba(param1:DisplayObjectContainer)
      {
         this._0bc8ec9c9ef2a68700609141 = new _360be0c299a2ffe6f21f911e(this,param1);
         super(this._0bc8ec9c9ef2a68700609141);
         this.init();
      }
      
      private function init() : void
      {
         this._ac941c4a9dccddf9d7cc1a63 = GameSwf.instance.managerTournaments;
         this._2d543897287629c65b1de06c = [];
         this._11a3f10950e98a407d6222cb();
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED === _loc2_ ? -2137202888 ^ -116580436 ^ -410013381 ^ -1642171985 : 0x1C9828A4 ^ -390811970 ^ 0x64B97853 ^ -1869218232)
         {
            case 0:
               this._11a3f10950e98a407d6222cb();
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဵၗჼဧႭ၆Ⴗპၣၮ႕်္ჶဤ჏ၲဪ၂Ⴞႋ႓ოჩၚႠ჆Ⴌ႕၃အო჋ႚႎიနႢ჆္ჳၲკၓႾ႟ဦ႐ჯဥႧჶဨပထၠႵႜ႐ါဟჰၻႄၦၺႡလ၅ညနဧႛျၾႺ႐Ⴟၒထဪჽ႕ჟႪჄႲჀ႟ဖၩ჌Ⴙ၆ჹးჿၙႌၖျთჾႬႦჭ႘ႍွၬႴဟპၠၞႅ႐ၪဪဗღဗါၹၾဿၩჾქ၀თရ႔း჻჉ჍჂႄႏ႙နჲႽၥႈოႛ႟ဌဌჿၟၛ၂ၤ႐ၵ႞დოင","ာတၞღ၃၏စိშჽၥტဳၦႷნ") + param1);
         }
      }
      
      private function _11a3f10950e98a407d6222cb() : void
      {
         var _loc1_:_4a26c3e739ada00470a83032 = null;
         var _loc2_:_f8f521e9f54b5fb992e790b3 = null;
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:Array = [];
         for each(_loc1_ in this._ac941c4a9dccddf9d7cc1a63.tournamentCurrent.members)
         {
            _loc2_ = this._35a94c6067bf8ac9f6e1a9c9(_loc1_.login);
            if(_loc2_ == null)
            {
               _loc3_ = new gViewTournamentMember();
               _loc2_ = new _f8f521e9f54b5fb992e790b3(_loc1_,_loc3_);
               this._2d543897287629c65b1de06c.push(_loc2_);
            }
            else
            {
               _loc2_._c9aef71caac01218bc064356();
            }
            _loc4_.push(_loc2_.view.source);
         }
         this._0bc8ec9c9ef2a68700609141.items = _loc4_;
      }
      
      private function _35a94c6067bf8ac9f6e1a9c9(param1:String) : _f8f521e9f54b5fb992e790b3
      {
         var _loc2_:_f8f521e9f54b5fb992e790b3 = null;
         var _loc3_:_f8f521e9f54b5fb992e790b3 = null;
         for each(_loc2_ in this._2d543897287629c65b1de06c)
         {
            if(param1 == _loc2_.entity.login)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
   }
}

