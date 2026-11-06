package com.ax3.fishao.view.dialogs.club.pages.info
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_leader._c4a7ea998d4926a2ee20c49c;
   import com.ax3.fishao.view.dialogs.club.pages.base._a86dadbf5fed875ec9c2c515;
   import com.ax3.fishao.view.dialogs.club.pages.base.club_info._52c19122f139122657341333;
   import com.ax3.fishao.view.dialogs.club.pages.info.item._ebb4ccd6cc47e618f119ff73;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.page.info.ResponseClubsGetPageInfo;
   
   public class _af9365e175b1855c52c61ab0 extends _a86dadbf5fed875ec9c2c515
   {
      
      private var _cb1527c19afb385937d241de:_cad6b9236e6b3f30ad336974;
      
      private var _f12aea04379dbd654c940a99:_52c19122f139122657341333;
      
      private var _1d1cbf671358e80449425455:Object;
      
      private var _13921b5983dc10737d10b5fd:int;
      
      private var _429b20a9bb6728c3cb664f28:String;
      
      private var _be3f022df8d42c2e2ca4d7ef:Array;
      
      private var _8607fd81df1afc5ed391814d:int;
      
      private var _7e95fdb2633db11bd9c221c9:_c4a7ea998d4926a2ee20c49c;
      
      public function _af9365e175b1855c52c61ab0(param1:DisplayObjectContainer)
      {
         this._cb1527c19afb385937d241de = new _cad6b9236e6b3f30ad336974(this,param1);
         super(this._cb1527c19afb385937d241de);
         this.init();
      }
      
      private function get _34670a7aef32efa4be9b08b5() : int
      {
         var _loc1_:_ebb4ccd6cc47e618f119ff73 = null;
         var _loc2_:int = -758354590 ^ -1922502956 ^ 0x2563C1D4 ^ 0x7AC74262;
         var _loc3_:int = 0x5D6EF05B ^ 0x20928F62 ^ -1099868180 ^ -1014159147;
         while(_loc3_ < this._be3f022df8d42c2e2ca4d7ef.length)
         {
            _loc1_ = this._be3f022df8d42c2e2ca4d7ef[_loc3_];
            if(_loc1_.isCurrentUser)
            {
               _loc2_ = Math.floor(_loc3_ / this._8607fd81df1afc5ed391814d);
               break;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      override protected function _3d45492cb1b715a713c0c8d0(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._3d45492cb1b715a713c0c8d0(param1);
         if(param1 is ResponseError)
         {
            _owner.close();
            return;
         }
         var _loc2_:ResponseClubsGetPageInfo = param1 as ResponseClubsGetPageInfo;
         this._1d1cbf671358e80449425455 = _loc2_.clubInfo;
         this._f12aea04379dbd654c940a99.clubData = this._1d1cbf671358e80449425455;
         this._cb1527c19afb385937d241de.description = Debug.assertProperty(this._1d1cbf671358e80449425455,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဨသჾႭႉჵჂၵკႋ႞ქ်ၤလჹၿထსႼფႜၽბჷၓၕႢიၚ","ფაფၐჟჸုာၣၾၢၩႾႳბზ"));
         this._13921b5983dc10737d10b5fd = Debug.assertProperty(this._1d1cbf671358e80449425455,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႷႇაးჂႸငၳလဧႣၒ","ჟႨძဍဈၢၕဩ၉ဢ၀შჳၜၻჇ"));
         this._429b20a9bb6728c3cb664f28 = Debug.assertProperty(this._1d1cbf671358e80449425455,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揘挵掘插挖捴揞捯掛挷捖掂掵捋捵挌捾掫揹挝损握捶掭揸捠揔指揤挄捫挃","掑揦控掐挀挛挕插掍挗挰捶掩掲揦挚"));
         this._17cab688761e26695181ba6f();
         this._cb1527c19afb385937d241de.viewPagination.pageCurrent = this._34670a7aef32efa4be9b08b5;
         this._3d97f248bcb8dca82df6d863();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._cb1527c19afb385937d241de.viewPagination.buttonLeft:
                  §§push(0x4EE7FEC5 ^ -1553905943 ^ 0x1E32941B ^ -206296009);
                  break;
               case this._cb1527c19afb385937d241de.viewPagination.buttonRight:
                  §§push(-543400371 ^ -824098738 ^ -978359237 ^ -724405703);
                  break;
               default:
                  §§push(-1787362414 ^ -1164094688 ^ -2075354796 ^ -1415132700);
            }
            switch(§§pop())
            {
               case 0:
               case 1:
                  this._3d97f248bcb8dca82df6d863();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function _67fc148ed69633889d0f6768(param1:String) : void
      {
         this._7e95fdb2633db11bd9c221c9.login = param1;
         this._7e95fdb2633db11bd9c221c9._5b0b922e5cc4a5322f6ea1d2(this._e9a8408dc11087782f471d92);
      }
      
      private function _e9a8408dc11087782f471d92(param1:String) : void
      {
         var _loc2_:_ebb4ccd6cc47e618f119ff73 = null;
         var _loc3_:DisplayObject = null;
         for each(_loc2_ in this._be3f022df8d42c2e2ca4d7ef)
         {
            if(_loc2_.login == param1)
            {
               _8e13ffc955ce803f9ca06283._1b520a4567f7aef011d3fe68(this._be3f022df8d42c2e2ca4d7ef,_loc2_);
               _loc3_ = _loc2_.view.source;
               _loc3_.parent.removeChild(_loc3_);
               this._c3ae00923db2dc893cb5f22b();
               break;
            }
         }
         this._f12aea04379dbd654c940a99.membersCount = this._be3f022df8d42c2e2ca4d7ef.length;
         this._06e364bc9bd554dfcaf78895();
         this._3d97f248bcb8dca82df6d863();
      }
      
      private function init() : void
      {
         this._8607fd81df1afc5ed391814d = -963342995 ^ -1943189635 ^ -59432351 ^ -1228085132;
         this._be3f022df8d42c2e2ca4d7ef = [];
         this._f12aea04379dbd654c940a99 = new _52c19122f139122657341333(this._cb1527c19afb385937d241de.viewInfo);
         this._7e95fdb2633db11bd9c221c9 = new _c4a7ea998d4926a2ee20c49c();
      }
      
      override public function _bd82e272777ed3124374ba32() : void
      {
         var _loc1_:Object = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剗剼副剮剣别刘務勆加劂剜劼剹勻勎剀劀剉剦剣劳","劣剼剿勇剌劃勪勶勜勷劣剨勻勃剖刈")):_entity.ID};
         _managerClubs.loadDataForPage(_type,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._3d45492cb1b715a713c0c8d0),_loc1_);
      }
      
      private function _17cab688761e26695181ba6f() : void
      {
         var _loc1_:Object = null;
         var _loc2_:_ebb4ccd6cc47e618f119ff73 = null;
         _f2f26e7a66175d89c6f850e5(this._be3f022df8d42c2e2ca4d7ef);
         var _loc3_:Array = Debug.assertProperty(this._1d1cbf671358e80449425455,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劳剅劄劓刢劝劌剗剎勤势労劐刬剨勔割劋劲前剅刯","刴劭刔勮刴劮刘制勒劳剨剃剺勆則助"));
         var _loc4_:DisplayObjectContainer = view.source as DisplayObjectContainer;
         for each(_loc1_ in _loc3_)
         {
            _loc2_ = new _ebb4ccd6cc47e618f119ff73(this._13921b5983dc10737d10b5fd,_loc1_,this._429b20a9bb6728c3cb664f28,this._67fc148ed69633889d0f6768);
            _loc4_.addChild(_loc2_.view.source);
            if(_loc2_.login == this._429b20a9bb6728c3cb664f28)
            {
               this._be3f022df8d42c2e2ca4d7ef.unshift(_loc2_);
            }
            else
            {
               this._be3f022df8d42c2e2ca4d7ef.push(_loc2_);
            }
         }
         this._06e364bc9bd554dfcaf78895();
         this._c3ae00923db2dc893cb5f22b();
      }
      
      private function _c3ae00923db2dc893cb5f22b() : void
      {
         _2366485e451061bdda2a0f22(this._be3f022df8d42c2e2ca4d7ef,0x0C11BEAC ^ 0x7931D6F8 ^ -2002817730 ^ -37812830,this._8607fd81df1afc5ed391814d,0x1431EED8 ^ -1364896519 ^ 0x306A2283 ^ -1963026270);
      }
      
      private function _06e364bc9bd554dfcaf78895() : void
      {
         this._cb1527c19afb385937d241de.viewPagination.pagesTotal = Math.ceil(this._be3f022df8d42c2e2ca4d7ef.length / this._8607fd81df1afc5ed391814d);
      }
      
      private function _3d97f248bcb8dca82df6d863() : void
      {
         _3d866f07adb02a6079215c17(this._be3f022df8d42c2e2ca4d7ef,this._cb1527c19afb385937d241de.viewPagination.pageCurrent,this._8607fd81df1afc5ed391814d);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._f12aea04379dbd654c940a99._90eac9ca552fe54c2ca0299f();
         this._f12aea04379dbd654c940a99 = null;
         this._be3f022df8d42c2e2ca4d7ef.length = 0x37300703 ^ -803384958 ^ 0x2EA28DE5 ^ -913319068;
         this._be3f022df8d42c2e2ca4d7ef = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

