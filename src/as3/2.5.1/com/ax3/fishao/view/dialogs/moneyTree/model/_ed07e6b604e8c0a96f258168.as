package com.ax3.fishao.view.dialogs.moneyTree.model
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.privateHouse._c24229eda44b942058106fae;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.utils._9c52777792d76fde110d23c0;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.fishingLine.model._39c10ed960794a3ab8a11641;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.geom.Point;
   import protocol.api.base.ResponseOk;
   import protocol.api.moneyTree.FscExtensionMoneyTree;
   import protocol.api.moneyTree.data.MoneyTreeLevelInfo;
   import protocol.api.moneyTree.init.ResponseMoneyTreeInit;
   
   public class _ed07e6b604e8c0a96f258168 extends _39c10ed960794a3ab8a11641
   {
      
      private static const _74fa7a26e1770f1ebc52ddda:uint = (-1673453277 ^ -1671590286 ^ -2146391669 ^ -2146695486) * (-1094894938 ^ 0x2B3A31BB ^ -220652449 ^ 0x675E177E) * (0x27121721 ^ -2047920613 ^ -116060004 ^ 0x5BE8319A);
      
      private static const _97864b0a00c6769f0f83fcee:uint = 0x5C2AAE5E ^ -1217483070 ^ -619328251 ^ 0x3051CD98;
      
      private static const _5f059e686552bea9a1bb96de:uint = 0x6277AB8B ^ -1454671457 ^ -62462041 ^ 0x377A3581;
      
      private var _b5735eefce8e37a35ac4e607:int;
      
      private var _65595c589a807fe1560c502c:Array;
      
      private var _f3c0f7414bbd2065bcdc4b58:int;
      
      private var _4c95b4a2db4956a3d9b2287d:Array;
      
      private var _e770fdf30f286ade555c401b:int;
      
      private var _4b612af33730d3fad5eed917:Boolean;
      
      private var _b3c3bc3bdfba99ceb67c87cb:FscExtensionMoneyTree = _dfa25706e58a240c1e33e5c6.fscModel.extensionMoneyTree;
      
      public function _ed07e6b604e8c0a96f258168()
      {
         super(this._b3c3bc3bdfba99ceb67c87cb);
         this._65595c589a807fe1560c502c = [];
         this._4c95b4a2db4956a3d9b2287d = [];
      }
      
      private static function _8229c7214eff22d410b6c87b(param1:uint) : Array
      {
         var _loc2_:Point = null;
         var _loc3_:Array = [];
         var _loc4_:int = -1283781628 ^ -511571625 ^ 0x307BED9C ^ 0x6282E8CF;
         while(_loc4_ < param1)
         {
            _loc2_ = new Point(_9c52777792d76fde110d23c0._60f3e8587e4103019e85c82e(-1280646210 ^ -2046361286 ^ 0x35D12B80 ^ -8178024,-1213334824 ^ -659539687 ^ -1924213316 ^ -497871335),_9c52777792d76fde110d23c0._60f3e8587e4103019e85c82e(0x4FD45DC7 ^ -1604277345 ^ -148675330 ^ 0x189792B8,0x17241074 ^ 0x730A9093 ^ 0x329AAA71 ^ 0x56B42AC6));
            _loc3_.push(_loc2_);
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get levelInfoMaxMoneyTree() : MoneyTreeLevelInfo
      {
         return this.levelInfoMax as MoneyTreeLevelInfo;
      }
      
      public function get fishcoinsLeft() : int
      {
         return this._b5735eefce8e37a35ac4e607;
      }
      
      public function get fishcoinsPositions() : Array
      {
         return this._65595c589a807fe1560c502c;
      }
      
      public function get fishbucksLeft() : int
      {
         return this._f3c0f7414bbd2065bcdc4b58;
      }
      
      public function get fishbucksPositions() : Array
      {
         return this._4c95b4a2db4956a3d9b2287d;
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc2_:ResponseMoneyTreeInit = param1 as ResponseMoneyTreeInit;
         app.user.moneyTree = _83e87e4f25c0be9a14b3a3a4(_loc2_.currentLevel);
         this._b5735eefce8e37a35ac4e607 = _loc2_.fishcoinsLeft;
         this._f3c0f7414bbd2065bcdc4b58 = _loc2_.fishbucksLeft;
         this._4dbf96fd2c7d282ae09ce20c();
         this._e770fdf30f286ade555c401b = _loc2_.timeToNextGenerate;
      }
      
      override protected function _9bad24edda2bf4d1df6e57e3() : void
      {
         super._9bad24edda2bf4d1df6e57e3();
         this._2a48cfd4d223b58cecab282a();
      }
      
      public function _91131ac753fe834f0b932aaf(param1:_5e1bab759fcaea6d1f84faa7, param2:Point) : void
      {
         var _loc3_:int = 0x25F49910 ^ -146421363 ^ -702355343 ^ 0x0493B8EC;
         var _loc4_:int = -540482841 ^ 0x078D6DBD ^ 0x38A2E1AF ^ -1553181107;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (-248046610 ^ 0x5BB923DA ^ -2115489500 ^ 0x68ED31A9))
            {
               case 0:
                  this._b5735eefce8e37a35ac4e607 -= _97864b0a00c6769f0f83fcee;
                  _loc3_ = _8e13ffc955ce803f9ca06283._1b520a4567f7aef011d3fe68(this._65595c589a807fe1560c502c,param2);
                  Debug.assertNotEqual(_loc3_,0x25ACE969 ^ -1196009124 ^ -1013283684 ^ -1585460394,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဓႧ၂အႚႩ၍့Ⴟဧრრၖიၙက၎Ⴈၞჹၷသჹၤ჉ၰႣႠႸჼွဦႺဣႪႌဤწსჷჷიဆჩზမჿ႐Ⴤ၆ჴႚၸၗ၊ဌေქႫ၆ၣၿძჳႥၘဦု","გရსၰၡၹၡၹჿჟၺၕოာკႠ"));
                  this._7459de47c1fa5792944ee556();
                  _loc4_ = -510535512 ^ 0x3DFE7080 ^ -1622537407 ^ 0xAE9BD2;
                  break;
               case 1:
                  _loc3_ = 0x424FA9F5 ^ 0x53590B82 ^ 0x4C5AC601 ^ 0x5D4C6476;
                  if(param1 is ResponseOk)
                  {
                     _loc4_ = 0x20109C87 ^ -531907243 ^ -1946112242 ^ 0x0FD0B665;
                  }
                  else
                  {
                     _loc4_ = -1044059807 ^ 0x03A4EE27 ^ -1830746737 ^ 0x130A3A72;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _0b7934e987aa0e840bb1787a(param1:_5e1bab759fcaea6d1f84faa7, param2:Point) : void
      {
         var _loc3_:int = 0x28707884 ^ -126045152 ^ 0x43DCB41E ^ -1815054150;
         var _loc4_:int = 0x322C4C79 ^ 0x6CF053FB ^ 0x151955A0 ^ -688483463;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x0FFFF66E ^ 0x60217FC5 ^ -252692476 ^ 0x021D68F6))
            {
               case 0:
                  this._f3c0f7414bbd2065bcdc4b58 -= _5f059e686552bea9a1bb96de;
                  _loc3_ = _8e13ffc955ce803f9ca06283._1b520a4567f7aef011d3fe68(this._4c95b4a2db4956a3d9b2287d,param2);
                  Debug.assertNotEqual(_loc3_,-245114924 ^ 0x6934CDE0 ^ -985336203 ^ -1561586754,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႝქၦყღ၇ၝစိ჏႟ၤၢၚဖဨტဲၐႴვၣთႝၯც့ფქၞჹၾၛჰႿოႨည႐၏ცတ჊ငჷႩရ႓႓Ⴤ႒ဳႶဍპႨထၷ၉ၱရჼႎႛႧၐူჃဌၡ","ူႣဨၴჺၡოဈჲဘၺဏႫႻ၆ၠ"));
                  this._7459de47c1fa5792944ee556();
                  _loc4_ = -99854896 ^ 0x6C3A1B2D ^ -1761133857 ^ -1677546118;
                  break;
               case 1:
                  return;
               case 2:
                  _loc3_ = -1556211105 ^ 0x68BA30FF ^ -268515055 ^ 0x247AE3B1;
                  if(param1 is ResponseOk)
                  {
                     _loc4_ = -1352105335 ^ -1817977798 ^ -888170785 ^ 0x6AF71135;
                  }
                  else
                  {
                     _loc4_ = -284594066 ^ -201417738 ^ 0x5B28357C ^ -622065732;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _e9da0999c689320e7d3e824d(param1:uint, param2:uint) : void
      {
         var timerMS:uint = param1;
         var timeLeftMS:uint = param2;
         if(this._e770fdf30f286ade555c401b == ConstantsBase.INDEX_NONE)
         {
            this._ccde8b79ecef7b0cc1b1767a();
            this._b3c3bc3bdfba99ceb67c87cb.generateReward(function(param1:_5e1bab759fcaea6d1f84faa7):void
            {
               if(param1 is ResponseOk)
               {
                  if(app.user != null && app.user.moneyTree != null)
                  {
                     _f3c0f7414bbd2065bcdc4b58 = app.user.moneyTree.fishbucksPerDay;
                     _b5735eefce8e37a35ac4e607 = app.user.moneyTree.fishcoinsPerDay;
                  }
                  _4dbf96fd2c7d282ae09ce20c();
               }
            });
         }
         else
         {
            --this._e770fdf30f286ade555c401b;
         }
      }
      
      private function _7459de47c1fa5792944ee556() : void
      {
         if(this._b5735eefce8e37a35ac4e607 > (-1768271892 ^ 0x0EFF8163 ^ 0x428A3887 ^ -621808120) || this._f3c0f7414bbd2065bcdc4b58 > (-862796303 ^ 0x7E421CA0 ^ -1060858766 ^ 0x72144D23) || this._e770fdf30f286ade555c401b != ConstantsBase.INDEX_NONE)
         {
            return;
         }
         this._e770fdf30f286ade555c401b = _74fa7a26e1770f1ebc52ddda;
         this._b3c3bc3bdfba99ceb67c87cb.loadInitData(this._1afa094f92496223ac14bd0e);
         this._2a48cfd4d223b58cecab282a();
      }
      
      private function _1afa094f92496223ac14bd0e(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ResponseMoneyTreeInit = param1 as ResponseMoneyTreeInit;
         if(_loc2_ != null && this._b5735eefce8e37a35ac4e607 <= (0x1724DC46 ^ 0x2922BD39 ^ 0x0E1C2742 ^ 0x301A463D) && this._f3c0f7414bbd2065bcdc4b58 <= (-2082769414 ^ 0x397CD4FD ^ -126818372 ^ 0x42D746BB))
         {
            this._e770fdf30f286ade555c401b = _loc2_.timeToNextGenerate;
         }
      }
      
      private function _4dbf96fd2c7d282ae09ce20c() : void
      {
         this._4c95b4a2db4956a3d9b2287d = _8229c7214eff22d410b6c87b(this._f3c0f7414bbd2065bcdc4b58 / _5f059e686552bea9a1bb96de);
         this._65595c589a807fe1560c502c = _8229c7214eff22d410b6c87b(this._b5735eefce8e37a35ac4e607 / _97864b0a00c6769f0f83fcee);
         var _loc1_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc1_ is _c24229eda44b942058106fae)
         {
            (_loc1_ as _c24229eda44b942058106fae)._613eb83c28344259810a6cc4();
         }
      }
      
      public function _1e7bccca067076ffc310012b(param1:Point, param2:Function) : void
      {
         var position:Point = param1;
         var callback:Function = param2;
         var callbackWrapper:Function = function(param1:_5e1bab759fcaea6d1f84faa7):void
         {
            _0b7934e987aa0e840bb1787a(param1,position);
            if(callback != null)
            {
               callback(param1);
            }
         };
         this._b3c3bc3bdfba99ceb67c87cb.collectReward(_5f059e686552bea9a1bb96de,0x6FF5E086 ^ 0x6DDC57AD ^ -1157337801 ^ -1188177380,callbackWrapper);
      }
      
      public function _2656cbce19f26e3b5c014b9c(param1:Point, param2:Function) : void
      {
         var position:Point = param1;
         var callback:Function = param2;
         var callbackWrapper:Function = function(param1:_5e1bab759fcaea6d1f84faa7):void
         {
            _91131ac753fe834f0b932aaf(param1,position);
            if(callback != null)
            {
               callback(param1);
            }
         };
         this._b3c3bc3bdfba99ceb67c87cb.collectReward(-270254823 ^ 0x6C09C04E ^ -738463699 ^ 0x50160D7A,_97864b0a00c6769f0f83fcee,callbackWrapper);
      }
      
      override protected function _439d80393042874b6a3d501f() : void
      {
         app.user.moneyTree = _dbecfebe6ff32acd9f5d6208(app.user.moneyTree.number);
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_MONEY_TREE_LEVEL,_22437dfd77f65dbf9dbc4281.EDT_MONEY_TREE);
         var _loc1_:_c24229eda44b942058106fae = GameSwf.currentLocationDialog as _c24229eda44b942058106fae;
         if(_loc1_ != null && _loc1_.isOwnHouse)
         {
            (_loc1_ as _c24229eda44b942058106fae).locationLayers.viewMoneyTree.level = app.user.moneyTree.number;
         }
      }
      
      private function _2a48cfd4d223b58cecab282a() : void
      {
         var _loc1_:int = -1876306162 ^ 0x27E8E9EF ^ 0x5B3097B1 ^ 0x7C0C2FD0;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-978542454 ^ 0x3A9E4DF4 ^ 0x45479874 ^ 0x2A88F388))
            {
               case 0:
                  return;
               case 1:
                  this.updateGroup1S._475178699397df7592a9026e(this._e9da0999c689320e7d3e824d);
                  this._4b612af33730d3fad5eed917 = true;
                  return;
               case 2:
                  if(this._4b612af33730d3fad5eed917)
                  {
                     _loc1_ = -1493964086 ^ 0x25CAD51F ^ -1716693667 ^ -1972769782;
                  }
                  else
                  {
                     _loc1_ = 0x42301086 ^ -895326933 ^ -1502912404 ^ -1106996414;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _ccde8b79ecef7b0cc1b1767a() : void
      {
         Debug.assert(this._4b612af33730d3fad5eed917,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勸剷劶加刂刕勉刊勸分剼刹判劸剗刄劥勘勂则剡刟剝劮励勬劅利勇勪刵刍刈刕勆効剈券劜务剴刞劎剎剔前剻務划办剋刃劆勃刂勘剻副勎剰勼勜刺勊勯勑剷剭勼勉劐剓删剀勲剃勞刨","勍劤劜刱刮劁劢刢到刾副劭勩勊劤刓"));
         this._4b612af33730d3fad5eed917 = false;
         this.updateGroup1S._95b5d5379ad5d337e4cae733(this._e9da0999c689320e7d3e824d);
         this._e770fdf30f286ade555c401b = 0x5867FCC5 ^ 0x1766B1F9 ^ 0x6E84FEEB ^ -562410456;
      }
   }
}

