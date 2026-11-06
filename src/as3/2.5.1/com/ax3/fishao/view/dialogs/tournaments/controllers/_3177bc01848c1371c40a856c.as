package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.tournaments.models._2a31502166ae419b5332a782;
   import com.ax3.fishao.view.dialogs.tournaments.models._4a26c3e739ada00470a83032;
   import com.ax3.fishao.view.dialogs.tournaments.models._a1842a5c36511100aec6f1ca;
   import com.ax3.fishao.view.dialogs.tournaments.views._57a190c7937fdda7ee9379d9;
   
   public class _3177bc01848c1371c40a856c extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _4bec2e58e932059e04704859:_57a190c7937fdda7ee9379d9 = new _57a190c7937fdda7ee9379d9(this,new gViewTournamentMemberResult());
      
      private var _606e30cc91b3ecc5291a2984:_4a26c3e739ada00470a83032;
      
      private var _27f0d7ab1c35147c4bf7a091:_2a31502166ae419b5332a782;
      
      public function _3177bc01848c1371c40a856c(param1:_4a26c3e739ada00470a83032)
      {
         this._606e30cc91b3ecc5291a2984 = param1;
         super(this._4bec2e58e932059e04704859);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:int = 0x01D3ECA7 ^ -1842562041 ^ -2085108135 ^ 0x104896F9;
         this._27f0d7ab1c35147c4bf7a091 = GameSwf.instance.managerTournaments.tournamentCurrent;
         this._4bec2e58e932059e04704859.position = this._606e30cc91b3ecc5291a2984.position;
         this._4bec2e58e932059e04704859.login = this._606e30cc91b3ecc5291a2984.login;
         var _loc2_:String = "";
         switch(this._27f0d7ab1c35147c4bf7a091.type)
         {
            case _a1842a5c36511100aec6f1ca.ETT_BOAT_ON_SEA:
               §§push(0x794CB432 ^ 0x63935D9F ^ 0x29006462 ^ 0x33DF8DCF);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_MORAY:
               §§push(-1183427198 ^ 0x2FB701EB ^ 0x5AC51DD1 ^ -872134215);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_LAKE_RUN:
               §§push(0x59DA5C08 ^ 0x38CAC6A0 ^ -1171091236 ^ -618526090);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_RACE:
               §§push(-463715334 ^ 0x59821447 ^ -278342881 ^ 0x52B684A1);
               break;
            default:
               §§push(0x761C27DB ^ -2046447250 ^ 0x6B49D0B3 ^ -1689238014);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               _loc2_ = this._606e30cc91b3ecc5291a2984.criteria.toString();
               break;
            case 2:
               _loc2_ = _c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(this._606e30cc91b3ecc5291a2984.criteria);
               break;
            case 3:
               _loc1_ = this._606e30cc91b3ecc5291a2984.criteria;
               switch(this._606e30cc91b3ecc5291a2984.position)
               {
                  case 0x37D7FDD8 ^ -855945466 ^ 0x7B43A4E5 ^ -2140203462:
                     §§push(-528676366 ^ -1906179226 ^ -272613425 ^ -2116078245);
                     break;
                  case -1098387912 ^ -1988904919 ^ 0x25612CAA ^ 0x12957AB9:
                     §§push(-1002861403 ^ -1858788438 ^ -1889332815 ^ -630210881);
                     break;
                  case -1897758116 ^ -55124590 ^ -704283858 ^ -1538186013:
                     §§push(-1384130225 ^ -545800402 ^ 0x0D175605 ^ 0x7F1F3066);
                     break;
                  default:
                     §§push(0x6533810F ^ -1634533938 ^ 0x3495E17A ^ -818635336);
               }
               switch(§§pop())
               {
                  case 0:
                  case 1:
                  case 2:
                     _loc2_ = _c2ad9d37d7be0097d6d2e977._eeaa6c6c21a64b796b80bd46(_loc1_);
                     break;
                  default:
                     _loc2_ = _loc1_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဥ႞ှာჍဓၪ႒ဴჃ","တထၭ၎ႽჴိၥေႾტခၬၓမე") + _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掭掍捧掝描捀揋揑挜揜捏換掇捍掜挒掵掤捴挭","揱捌掖挾揟排指掿挄捇挐掞揋掤掤捨"));
               }
         }
         this._4bec2e58e932059e04704859.criteria = _loc2_;
         this._4bec2e58e932059e04704859.reward = this._606e30cc91b3ecc5291a2984.rewardFishcoins;
         if(this._606e30cc91b3ecc5291a2984.position == (-1648750283 ^ -2027073151 ^ 0x3881C300 ^ 0x221683B5))
         {
            this._4bec2e58e932059e04704859.trophy = _2a31502166ae419b5332a782._2442f37119aa816a34f3242d(this._27f0d7ab1c35147c4bf7a091.type);
         }
      }
   }
}

