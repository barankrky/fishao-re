package com.ax3.fishao.view.dialogs.club.pages.create
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._8071087ebe26c264282580d0;
   import com.ax3.fishao.view.dialogs.club.club_inside._e9af49bc0716fd8d9302dd14;
   import com.ax3.fishao.view.dialogs.club.club_outside._fb60627e993e6700597a9c2e;
   import com.ax3.fishao.view.dialogs.club.pages.base._a86dadbf5fed875ec9c2c515;
   import com.ax3.fishao.view.dialogs.club.pages.base.club_type._28e0caca87772f4e883b1b15;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem._6cc625326b445c0ded039b94;
   import com.ax3.fishao.view.dialogs.club.pages.base.requirement_level._344663aafe1e8f208644cd4b;
   import com.ax3.fishao.view.dialogs.simple._3d8db2a210b1c092ee7299be;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.base.ResponseError;
   
   public class _5f99a3a728a205a424eace0d extends _a86dadbf5fed875ec9c2c515
   {
      
      private var _15a0f91f8c4b1e4572cf9760:_52f493ff74c7337577a12a07;
      
      private var _88c447e6e5adf60a5a7a4082:_6cc625326b445c0ded039b94;
      
      private var _00b335a78b4a3635fea11af4:_28e0caca87772f4e883b1b15;
      
      private var _8f93548d1239275e05179a38:_344663aafe1e8f208644cd4b;
      
      public function _5f99a3a728a205a424eace0d(param1:DisplayObjectContainer)
      {
         this._15a0f91f8c4b1e4572cf9760 = new _52f493ff74c7337577a12a07(this,param1);
         super(this._15a0f91f8c4b1e4572cf9760);
         this.init();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Function = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0x1DB308FB ^ 0x36AC00AA ^ -1872488602 ^ -1149558985;
         var _loc7_:String = null;
         var _loc8_:int = 0x3672F09A ^ -178895823 ^ 0x0686901B ^ -979229520;
         var _loc9_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc9_)
         {
            var _loc10_:Object = param1;
            switch(this._15a0f91f8c4b1e4572cf9760.buttonCreate === _loc10_ ? -866462464 ^ -240216764 ^ -1825772621 ^ -1361531913 : 0x3307D834 ^ 0x3D8DC93A ^ 0x065F3758 ^ 0x08D52657)
            {
               case 0:
                  _loc3_ = _745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._d5ace4efba0f3b211daa0a01);
                  _loc4_ = this._15a0f91f8c4b1e4572cf9760.viewInputName.label.text;
                  _loc5_ = this._15a0f91f8c4b1e4572cf9760.viewInputDescription.label.text;
                  _loc6_ = this._88c447e6e5adf60a5a7a4082.emblem;
                  _loc7_ = this._00b335a78b4a3635fea11af4.type;
                  _loc8_ = this._8f93548d1239275e05179a38.requiredLevel;
                  _managerClubs.createClub(_loc4_,_loc5_,_loc8_,_loc7_,_loc6_,_loc3_);
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc9_;
      }
      
      private function _d5ace4efba0f3b211daa0a01(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:_3d8db2a210b1c092ee7299be = null;
         var _loc3_:_e9af49bc0716fd8d9302dd14 = null;
         var _loc4_:ResponseError = param1 as ResponseError;
         if(_loc4_ != null)
         {
            _loc2_ = new _3d8db2a210b1c092ee7299be();
            _loc2_.title = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_ERROR);
            _loc2_.description = _c2ad9d37d7be0097d6d2e977.get(_loc4_.description);
            _loc2_.show();
            return;
         }
         var _loc5_:_8071087ebe26c264282580d0 = GameSwf.instance._4aeac9e48c0facbd15fae3ba(_fb60627e993e6700597a9c2e);
         _loc5_.close();
         if(_canOpenDialogInside)
         {
            _loc3_ = app.dialogFactory._a0d214350fb42da9f32557e6(_e9af49bc0716fd8d9302dd14);
            _loc3_.entity = _managerClubs.userClub;
            _loc3_.show();
         }
      }
      
      private function init() : void
      {
         this._8f93548d1239275e05179a38 = new _344663aafe1e8f208644cd4b(this._15a0f91f8c4b1e4572cf9760.sourceRequirementLevel);
         this._88c447e6e5adf60a5a7a4082 = new _6cc625326b445c0ded039b94(this._15a0f91f8c4b1e4572cf9760.sourceEmblem);
         this._00b335a78b4a3635fea11af4 = new _28e0caca87772f4e883b1b15(this._15a0f91f8c4b1e4572cf9760.sourceClubType);
         this._15a0f91f8c4b1e4572cf9760.viewInputName.label.maxChars = ConstantsBase.CLUB_NAME_CHARACTERS_MAX;
         this._15a0f91f8c4b1e4572cf9760.viewInputDescription.label.maxChars = ConstantsBase.CLUB_DESCRIPTION_CHARACTERS_MAX;
         this._15a0f91f8c4b1e4572cf9760.buttonCreate.label = _managerClubs.createCost.toString();
      }
      
      override public function _bd82e272777ed3124374ba32() : void
      {
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._8f93548d1239275e05179a38._90eac9ca552fe54c2ca0299f();
         this._8f93548d1239275e05179a38 = null;
         this._88c447e6e5adf60a5a7a4082._90eac9ca552fe54c2ca0299f();
         this._88c447e6e5adf60a5a7a4082 = null;
         this._00b335a78b4a3635fea11af4._90eac9ca552fe54c2ca0299f();
         this._00b335a78b4a3635fea11af4 = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

