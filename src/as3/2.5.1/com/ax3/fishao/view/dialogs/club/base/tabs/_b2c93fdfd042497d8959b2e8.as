package com.ax3.fishao.view.dialogs.club.base.tabs
{
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.club.model._518280cac6f3ae016ad4f350;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import com.ax3.fishao.view.dialogs.club.pages.base._a86dadbf5fed875ec9c2c515;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.utils.Dictionary;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.get_tabs_data.ResponseClubsGetTabsData;
   import protocol.api.clubs.page.EClubPageType;
   
   public class _b2c93fdfd042497d8959b2e8 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _894f2ccbdda0ce5b97a001d9:_c3f471652c61d67c712baeeb;
      
      private var _380241aa2c83d7f48a17d898:Array;
      
      private var _09ba08ecf1df7de50dbebee0:Dictionary;
      
      private var _2f9976cb1e9779cebbb37f6a:Dictionary;
      
      private var _ba2eeeff2f9fa4811418b89c:_8a55e6919385386ebc54f870;
      
      private var _56cea83dcfb428e80a9bda1b:String;
      
      private var _15d6e8ef71ea7dbc8c13feff:_518280cac6f3ae016ad4f350;
      
      public function _b2c93fdfd042497d8959b2e8(param1:Array, param2:DisplayObjectContainer, param3:_8a55e6919385386ebc54f870)
      {
         this._380241aa2c83d7f48a17d898 = param1;
         this._ba2eeeff2f9fa4811418b89c = param3;
         this._894f2ccbdda0ce5b97a001d9 = new _c3f471652c61d67c712baeeb(this,param2);
         super(this._894f2ccbdda0ce5b97a001d9);
         this.init();
      }
      
      public function set pagesMap(param1:Dictionary) : void
      {
         this._2f9976cb1e9779cebbb37f6a = param1;
      }
      
      public function _c4d22385b80b659fb18fbc27(param1:String) : void
      {
         var _loc6_:_a86dadbf5fed875ec9c2c515 = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:_a86dadbf5fed875ec9c2c515 = null;
         var _loc5_:_64d5efd3fdc98852c2ccd7b4 = null;
         _loc6_ = null;
         var _loc7_:DisplayObject = null;
         if(this._56cea83dcfb428e80a9bda1b != null)
         {
            _loc4_ = this._2f9976cb1e9779cebbb37f6a[this._56cea83dcfb428e80a9bda1b];
            _loc4_._1ca02568f97f6901b3c3003f();
         }
         for(_loc2_ in this._09ba08ecf1df7de50dbebee0)
         {
            _loc5_ = this._09ba08ecf1df7de50dbebee0[_loc2_];
            _loc5_.isActive = _loc5_.type == param1;
         }
         for(_loc3_ in this._2f9976cb1e9779cebbb37f6a)
         {
            _loc6_ = this._2f9976cb1e9779cebbb37f6a[_loc3_];
            _loc7_ = _loc6_.view.source;
            if(param1 == _loc3_)
            {
               _loc7_.visible = true;
               _loc6_._bd82e272777ed3124374ba32();
            }
            else
            {
               _loc7_.visible = false;
            }
         }
         if(param1 == EClubPageType.ECPT_INFO)
         {
            this._894f2ccbdda0ce5b97a001d9.title = this._ba2eeeff2f9fa4811418b89c.name;
         }
         else
         {
            this._894f2ccbdda0ce5b97a001d9.pageType = param1;
         }
         var _loc8_:Boolean = this._ba2eeeff2f9fa4811418b89c != null && this._15d6e8ef71ea7dbc8c13feff._b8d84096df59019d1d24ecdc(this._ba2eeeff2f9fa4811418b89c.ID);
         if(_loc8_)
         {
            this._15d6e8ef71ea7dbc8c13feff.loadDataForTabsPages(this._ba2eeeff2f9fa4811418b89c.ID,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._9ce8087107e29a778b051498));
         }
         else
         {
            this._8e0d44d6a74fbe66693b3d24({});
         }
         this._56cea83dcfb428e80a9bda1b = param1;
         this._e9e86822531794c16696cad8();
      }
      
      private function _9ce8087107e29a778b051498(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(param1 is ResponseError)
         {
            return;
         }
         var _loc2_:ResponseClubsGetTabsData = param1 as ResponseClubsGetTabsData;
         this._8e0d44d6a74fbe66693b3d24(_loc2_.tabsData);
      }
      
      private function init() : void
      {
         var _loc1_:String = null;
         var _loc2_:_64d5efd3fdc98852c2ccd7b4 = null;
         this._15d6e8ef71ea7dbc8c13feff = GameSwf.instance.managerClubs;
         this._09ba08ecf1df7de50dbebee0 = new Dictionary(true);
         var _loc3_:Array = [];
         for each(_loc1_ in this._380241aa2c83d7f48a17d898)
         {
            _loc2_ = new _64d5efd3fdc98852c2ccd7b4(this,_loc1_);
            _loc2_.isEnabled = true;
            this._09ba08ecf1df7de50dbebee0[_loc1_] = _loc2_;
            _loc3_.push(_loc2_.view);
         }
         this._894f2ccbdda0ce5b97a001d9.tabsViews = _loc3_;
         this._e9e86822531794c16696cad8();
      }
      
      private function _8e0d44d6a74fbe66693b3d24(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0x1216F0E0 ^ -1190075788 ^ 0x175EB069 ^ -1135041795;
         var _loc4_:_64d5efd3fdc98852c2ccd7b4 = null;
         for(_loc2_ in this._09ba08ecf1df7de50dbebee0)
         {
            _loc3_ = int(int(param1[_loc2_]) || -846630748 ^ -652801942 ^ 0x61785E13 ^ 0x75E626DD);
            _loc4_ = this._09ba08ecf1df7de50dbebee0[_loc2_];
            _loc4_.notifications = _loc3_;
         }
      }
      
      private function _e9e86822531794c16696cad8() : void
      {
         if(this._ba2eeeff2f9fa4811418b89c == null)
         {
            return;
         }
         var _loc1_:_64d5efd3fdc98852c2ccd7b4 = this._09ba08ecf1df7de50dbebee0[EClubPageType.ECPT_INFO];
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_._31e100dcdd321f4baab6c222(this._ba2eeeff2f9fa4811418b89c.emblemID);
      }
      
      public function _e766e5f7d19f596664697329(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = this._380241aa2c83d7f48a17d898[-181909039 ^ 0x7AD3E814 ^ 0x6831FFBD ^ -406167944];
         }
         this._c4d22385b80b659fb18fbc27(param1);
      }
   }
}

