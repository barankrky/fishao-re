package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.tournaments.models._2a31502166ae419b5332a782;
   import com.ax3.fishao.view.dialogs.tournaments.models._4a26c3e739ada00470a83032;
   import com.ax3.fishao.view.dialogs.tournaments.views._56ed3d2d857d2a48a522b16e;
   import com.ax3.utils.sound._c5aa52fca149ae6f0be6dc5b;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class _014e781226c96aec4508ead9 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _407ed42d31453516afa2d4f9:_56ed3d2d857d2a48a522b16e;
      
      private var _ed8d0a1888ed35c90a38def4:Array;
      
      private var _cbf0ac8bfce28f16e52652e6:int;
      
      private var _35d9c44c491dc010615a2ed9:int;
      
      private var _187e9e895e52011be0a92964:Array;
      
      private var _8a57a0cbeabd1a88ce8711a1:_2a31502166ae419b5332a782;
      
      public function _014e781226c96aec4508ead9(param1:DisplayObjectContainer)
      {
         this._407ed42d31453516afa2d4f9 = new _56ed3d2d857d2a48a522b16e(this,param1);
         super(this._407ed42d31453516afa2d4f9);
         this.init();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         switch(param1)
         {
            case this._407ed42d31453516afa2d4f9.buttonPrevious:
               §§push(0x513A2553 ^ -1820967518 ^ 0x70DD45A6 ^ -1299096233);
               break;
            case this._407ed42d31453516afa2d4f9.buttonNext:
               §§push(0x5694D142 ^ 0x276E9808 ^ 0x58FEA101 ^ 0x2904E84A);
               break;
            case this._407ed42d31453516afa2d4f9.buttonOk:
               §§push(-1753391335 ^ 0x0DA16909 ^ -1106082435 ^ 0x24CEB36F);
               break;
            default:
               §§push(-1343915749 ^ 0x4E885E42 ^ 0x329EACD3 ^ -739013751);
         }
         switch(§§pop())
         {
            case 0:
               --this._cbf0ac8bfce28f16e52652e6;
               this._e2adac667dfb0b046d0138f2();
               this._79678e4935f4f9bec5097f11();
               break;
            case 1:
               ++this._cbf0ac8bfce28f16e52652e6;
               this._e2adac667dfb0b046d0138f2();
               this._79678e4935f4f9bec5097f11();
               break;
            case 2:
               _0737efdbd5337ba3fbc64b2e.getInstance()._f42ac7342cf11c48018af906().close();
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         var _loc1_:_4a26c3e739ada00470a83032 = null;
         var _loc2_:_3177bc01848c1371c40a856c = null;
         this._8a57a0cbeabd1a88ce8711a1 = GameSwf.instance.managerTournaments.tournamentCurrent;
         this._187e9e895e52011be0a92964 = this._8a57a0cbeabd1a88ce8711a1.members;
         this._187e9e895e52011be0a92964.sort(_4a26c3e739ada00470a83032._19732dd0d7063a3c949aeaa3);
         this._ed8d0a1888ed35c90a38def4 = [];
         this._cbf0ac8bfce28f16e52652e6 = -1837135516 ^ 0x45BA2E12 ^ 0x3966CA12 ^ -291279515;
         for each(_loc1_ in this._187e9e895e52011be0a92964)
         {
            _loc2_ = new _3177bc01848c1371c40a856c(_loc1_);
            this._ed8d0a1888ed35c90a38def4.push(_loc2_);
         }
         this._35d9c44c491dc010615a2ed9 = Math.floor(this._ed8d0a1888ed35c90a38def4.length / this._407ed42d31453516afa2d4f9.itemsOnPage) + (-1014851406 ^ -648585973 ^ 0x30969C2A ^ 0x2A435992);
         this._0f21dd7ccd14e1602d79616d();
         this._e2adac667dfb0b046d0138f2();
         _3a8a2602dcf9bf49b62e62af._f4f1a2408cf18e8e24ae195c(this._8a57a0cbeabd1a88ce8711a1._386b700ee35253aed185d2b6().position == (0x55EB1615 ^ -580868251 ^ -1654255135 ^ 0x15EDA090) ? _3a8a2602dcf9bf49b62e62af.SFX_066_MUS_Tournament_win : _3a8a2602dcf9bf49b62e62af.SFX_067_MUS_Tournament_lose);
         GameSwf.instance.managerTournaments._830d08eff95ab1e54a3b983c();
         this._407ed42d31453516afa2d4f9._63b9041bf855ea499da8554e(false);
      }
      
      private function _0f21dd7ccd14e1602d79616d() : void
      {
         var _loc1_:String = null;
         var _loc2_:_4a26c3e739ada00470a83032 = this._8a57a0cbeabd1a88ce8711a1._386b700ee35253aed185d2b6();
         if(_loc2_.position == (0x062D1AE4 ^ -1241190505 ^ -682147119 ^ 0x677EB7A3))
         {
            _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_RESULTS_MESSAGE_WIN);
         }
         else if(_loc2_.position <= (-393993175 ^ 0x23DBD4A2 ^ 0x6B0FFCC5 ^ -1605366707))
         {
            _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_RESULTS_MESSAGE_IN_TOP_THREE);
         }
         else
         {
            _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_RESULTS_MESSAGE_LOSE);
         }
         _loc1_ = _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_POSITION,_loc2_.position);
         _loc1_ = _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_USERNAME,_loc2_.login);
         _loc1_ = _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_COUNT,_loc2_.rewardFishcoins);
         this._407ed42d31453516afa2d4f9.message = _loc1_;
         this._407ed42d31453516afa2d4f9.tournamentType = this._8a57a0cbeabd1a88ce8711a1.type;
      }
      
      private function _e2adac667dfb0b046d0138f2() : void
      {
         this._ec985e43a843514058d36631();
         this._ac6f8cf66868740e9f478b42();
         this._79678e4935f4f9bec5097f11();
      }
      
      private function _ec985e43a843514058d36631() : void
      {
         var _loc1_:_3177bc01848c1371c40a856c = null;
         var _loc2_:Array = this._6e97eabe6f69fb093c014a26;
         var _loc3_:Array = [];
         for each(_loc1_ in _loc2_)
         {
            _loc3_.push(_loc1_.view.source);
         }
         this._407ed42d31453516afa2d4f9.items = _loc3_;
      }
      
      private function _ac6f8cf66868740e9f478b42() : void
      {
         var _loc1_:_988093efdfa36e13bfd6c6cf = null;
         var _loc2_:uint = uint(0x2A4B5C55 ^ -1121814745 ^ 0x7AB81685 ^ -305054217);
         var _loc3_:int = 0x5B5FEF7A ^ -2116999238 ^ -950058838 ^ 0x1DD1886A;
         while(_loc3_ < this._ed8d0a1888ed35c90a38def4.length)
         {
            _loc1_ = this._ed8d0a1888ed35c90a38def4[_loc3_];
            _loc2_ = Math.ceil((_loc3_ + (0x4E019ADD ^ 0x6B17BCFF ^ 0x22645B80 ^ 0x07727DA3)) / this._407ed42d31453516afa2d4f9.itemsOnPage);
            if(_loc2_ == this._cbf0ac8bfce28f16e52652e6)
            {
               _loc1_.view.show();
            }
            else
            {
               _loc1_.view.hide();
            }
            _loc3_++;
         }
         var _loc4_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_RESULTS_PAGE);
         _loc4_ = _loc4_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,this._cbf0ac8bfce28f16e52652e6);
         _loc4_ = _loc4_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,this._35d9c44c491dc010615a2ed9);
         this._407ed42d31453516afa2d4f9.labelPage.text = _loc4_;
      }
      
      private function _79678e4935f4f9bec5097f11() : void
      {
         this._407ed42d31453516afa2d4f9.buttonNext.enabled = this._cbf0ac8bfce28f16e52652e6 < this._35d9c44c491dc010615a2ed9;
         this._407ed42d31453516afa2d4f9.buttonPrevious.enabled = this._cbf0ac8bfce28f16e52652e6 > (-1367457290 ^ -536482836 ^ 0x2E5110B2 ^ 0x602ABAA9);
      }
      
      private function get _6e97eabe6f69fb093c014a26() : Array
      {
         var _loc1_:int = (this._cbf0ac8bfce28f16e52652e6 - 1) * this._407ed42d31453516afa2d4f9.itemsOnPage;
         var _loc2_:Array = [];
         var _loc3_:int = _loc1_;
         while(_loc3_ < this._ed8d0a1888ed35c90a38def4.length && _loc3_ < _loc1_ + this._407ed42d31453516afa2d4f9.itemsOnPage)
         {
            _loc2_.push(this._ed8d0a1888ed35c90a38def4[_loc3_]);
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function _db324bad2afc5434f14d8dc4() : void
      {
         var _loc1_:_988093efdfa36e13bfd6c6cf = null;
         for each(_loc1_ in this._ed8d0a1888ed35c90a38def4)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
         }
         this._ed8d0a1888ed35c90a38def4.length = -888897523 ^ -1044642154 ^ -1736787194 ^ -1832764003;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._db324bad2afc5434f14d8dc4();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

