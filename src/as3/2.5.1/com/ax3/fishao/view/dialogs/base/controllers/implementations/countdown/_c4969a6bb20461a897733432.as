package com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown._0d4ff7d10d6c13992f7be5bb;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.tournaments.models._4a26c3e739ada00470a83032;
   import com.ax3.fishao.view.dialogs.tournaments.models._a1842a5c36511100aec6f1ca;
   import flash.display.DisplayObjectContainer;
   
   public class _c4969a6bb20461a897733432 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _aed31555cc80a040bb7f5854:_0d4ff7d10d6c13992f7be5bb;
      
      private var _ad68b84f15d1da5b8db6947a:_4a26c3e739ada00470a83032;
      
      private var _b5afd592ee14ca8303a9492d:String;
      
      public function _c4969a6bb20461a897733432(param1:_4a26c3e739ada00470a83032, param2:DisplayObjectContainer)
      {
         this._ad68b84f15d1da5b8db6947a = param1;
         this._aed31555cc80a040bb7f5854 = new _0d4ff7d10d6c13992f7be5bb(this,param2);
         super(this._aed31555cc80a040bb7f5854);
         this.init();
      }
      
      public function set tournamentType(param1:String) : void
      {
         this._b5afd592ee14ca8303a9492d = param1;
      }
      
      private function init() : void
      {
      }
      
      public function _6d5360dc76898e470b88eb2e() : void
      {
         this._aed31555cc80a040bb7f5854.position = this._ad68b84f15d1da5b8db6947a.position;
         this._aed31555cc80a040bb7f5854.login = this._ad68b84f15d1da5b8db6947a.login;
         this._aed31555cc80a040bb7f5854.isPlayer = this._ad68b84f15d1da5b8db6947a.isPlayer;
         this._55918fd440fcaad7cf842dc1();
      }
      
      private function _55918fd440fcaad7cf842dc1() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = "";
         var _loc3_:Number = this._ad68b84f15d1da5b8db6947a.criteriaBoost;
         var _loc4_:String = "";
         switch(this._b5afd592ee14ca8303a9492d)
         {
            case _a1842a5c36511100aec6f1ca.ETT_BOAT_ON_SEA:
               §§push(0x7ED6B754 ^ 0x2BE8BD9A ^ 0x2C0E2F7B ^ 0x793025B5);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_LAKE_RUN:
               §§push(0x493AF7E2 ^ -1600909444 ^ -1429629340 ^ 0x43676EFB);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_MORAY:
               §§push(-878057475 ^ -1631361219 ^ 0x2C99F351 ^ 0x79F37393);
               break;
            default:
               §§push(0x34E04894 ^ 0x3F3D1017 ^ 0x3DF04AB1 ^ 0x362D1231);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = this._ad68b84f15d1da5b8db6947a.criteria.toString() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ါ႘ჼႾဩဥႣဎၠၛ","ဉပၒႏ၈ჵဍႲဎၰ჋ႌႹႃ၀တ") + _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_EXP);
               _loc4_ = _loc3_.toString();
               break;
            case 1:
               _loc2_ = _c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(this._ad68b84f15d1da5b8db6947a.criteria);
               _loc4_ = _c2ad9d37d7be0097d6d2e977._7f50078d287d104c5652744a(_loc3_);
               break;
            case 2:
               _loc1_ = this._ad68b84f15d1da5b8db6947a.criteria == (0x15EF1B1A ^ -1248278614 ^ -1435244265 ^ 0x0A0435A6) ? _85b2141a2303f6545d411d7a.EST_COMMON_SPECIE : _85b2141a2303f6545d411d7a.EST_COMMON_SPECIES;
               _loc2_ = this._ad68b84f15d1da5b8db6947a.criteria.toString() + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刕刪動勋劢勶刯剪劮劖","剪劉剽务劋刺副効勶剥刈剑剶刱勹刲") + _c2ad9d37d7be0097d6d2e977.get(_loc1_);
               _loc4_ = _loc3_.toString();
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刮劣制剋勳勚勤勝剛剋劚勍剭勞剾勛剌刍勍勒勄刺勃刴劚励劻劤刔剢劻剝刨剱剁勈刿剏剘勪勉劸刓剢则劺劄劁努務划剅列势剴助劤劳切勒勇剹勎劚删剏剭剃劃剖劑劭勮刄加刟劒勧刱剆動劷剥勳剕勊剿刎刃勄劤刀剚剼剹势刾劈刲劳劕勍勱劮刞剞劔刴券剦剝刲劻刍剪勸劂勯列勫勯剧勃勨勊勜勽勀刧剔努勏剂剸刳劶刌刕刿勆剆刳劂剟办劻剋剎勆勧","剌剑勠删剘劷剙剹削加刘刳刅分劔劬") + this._b5afd592ee14ca8303a9492d);
         }
         this._aed31555cc80a040bb7f5854.criteria = _loc2_;
         if(_loc3_ != (0x299CF451 ^ -1656354632 ^ -1425261480 ^ 0x1FD6C0B1))
         {
            this._aed31555cc80a040bb7f5854.showPopup(_loc4_);
         }
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._ad68b84f15d1da5b8db6947a = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

