package com.ax3.fishao.locations.club_area
{
   import com.ax3.fishao.locations.base._24fc30cfc3c855ea21a231e8;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.club_area.views._343a2873b29368b83ebeb686;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.club.model._518280cac6f3ae016ad4f350;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import com.ax3.fishao.view.dialogs.monster_fishes._b67c1d3d17b81c7d30715584;
   import com.ax3.fishao.view.dialogs.monster_fishes.base._134fd42783f6464556f090a0;
   import flash.events.Event;
   
   public class _d5b5fd2cb7b428793abaa639 extends _67f8febc099eaa05c48aa41e
   {
      
      private var _cea9dfead001686ae5561985:_518280cac6f3ae016ad4f350;
      
      private var _b223f1082c4e6d1f61652ba1:_b67c1d3d17b81c7d30715584;
      
      private var _6dce321c3eed08cec20fd8b2:_1905259467717136435ce7db;
      
      public function _d5b5fd2cb7b428793abaa639(param1:_4039c287ddb4ef46ab65ab0e)
      {
         super(param1);
         this.init();
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._5c49ec0db78d68f0bb897b76(false);
      }
      
      override protected function _382676b04b2c0983e96eb2da() : void
      {
         super._382676b04b2c0983e96eb2da();
         _2a0f34975fb1d4e797ed0b1a(null);
         _gui.mainMenu.tournamentIcon.disable();
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._6dce321c3eed08cec20fd8b2 = super._3536e00a076cf84463e9eaaa() as _1905259467717136435ce7db;
         return this._6dce321c3eed08cec20fd8b2;
      }
      
      private function init() : void
      {
         this._cea9dfead001686ae5561985 = GameSwf.instance.managerClubs;
         this._b223f1082c4e6d1f61652ba1 = GameSwf.instance.managerMonsterFishes;
      }
      
      public function _5c49ec0db78d68f0bb897b76(param1:Boolean = true) : void
      {
         var _loc2_:_343a2873b29368b83ebeb686 = this._6dce321c3eed08cec20fd8b2.controller;
         var _loc3_:_8a55e6919385386ebc54f870 = this._cea9dfead001686ae5561985.userClub;
         _loc2_.emblemID = _loc3_.emblemID;
         _loc2_.name = _loc3_.name;
         var _loc4_:Number = this._b223f1082c4e6d1f61652ba1._0aa8a7a9a3adf510f859f876(_134fd42783f6464556f090a0.EMFT_CLUB);
         _loc2_._fde3121556e9d8d958fdfddb(_loc4_,param1);
      }
      
      override protected function _8baab790e59e91e8d64bc4d2(param1:int) : void
      {
         var _loc2_:int = param1;
         switch(_24fc30cfc3c855ea21a231e8.CLUB_AREA.id === _loc2_ ? -370082702 ^ -1201159092 ^ -959465991 ^ -1755804217 : -1783168762 ^ 0x2ACFE1AB ^ -79583309 ^ 0x4439471F)
         {
            case 0:
               GameSwf.instance._e4c0a8256604a3984faf9862(this.locationModel.prevLocationID);
               break;
            default:
               super._8baab790e59e91e8d64bc4d2(param1);
         }
      }
      
      override public function updateWithType(param1:String) : void
      {
         super.updateWithType(param1);
         var _loc2_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_MONSTER_FISH_UPDATE === _loc2_ ? 0x645D9CA4 ^ -1720860768 ^ 0x790F0D43 ^ -2076234169 : -1841373850 ^ 0x30EDA958 ^ 0x41F2597A ^ -484364987)
         {
            case 0:
               this._5c49ec0db78d68f0bb897b76();
         }
      }
   }
}

