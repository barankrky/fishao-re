package com.ax3.fishao.locations.aquayama
{
   import com.ax3.fishao.locations.base._24fc30cfc3c855ea21a231e8;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.with_club_entrance._e39a0efcb7143473c47d6dcd;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import flash.events.Event;
   
   public class _4fe4be035fa328f89afd1c4a extends _e39a0efcb7143473c47d6dcd
   {
      
      private var _cdd6776315481f60ada549a0:_ebf8a819d6b9763d3314defe;
      
      private var _ceea0d2e0f21e891b787842e:_71e2d838266b5b3439b6d925;
      
      public function _4fe4be035fa328f89afd1c4a(param1:_4039c287ddb4ef46ab65ab0e)
      {
         this._ceea0d2e0f21e891b787842e = param1 as _71e2d838266b5b3439b6d925;
         super(param1);
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._ceea0d2e0f21e891b787842e._44e8358a14176e3c346a077b();
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._cdd6776315481f60ada549a0 = super._3536e00a076cf84463e9eaaa() as _ebf8a819d6b9763d3314defe;
         return this._cdd6776315481f60ada549a0;
      }
      
      override public function _b24937139cc44ffe53f7fc23(param1:Number, param2:Number, param3:_08c120b706560fce9302bcab = null) : Boolean
      {
         var _loc4_:Boolean = super._b24937139cc44ffe53f7fc23(param1,param2,param3);
         return _loc4_ || this._cdd6776315481f60ada549a0 != null && this._cdd6776315481f60ada549a0.viewSecretEntranceWall.hitTest(param1,param2);
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         var _loc2_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_QUESTS_GAME_END_INFO_UPDATED === _loc2_ ? -1005572424 ^ -1325998741 ^ 0x1371683F ^ 0x67979BEC : 0x630DEA4A ^ -475902328 ^ -811587607 ^ 0x4F0F832A)
         {
            case 0:
               this._ceea0d2e0f21e891b787842e._44e8358a14176e3c346a077b();
               break;
            default:
               super.updateWithType(param1);
         }
      }
      
      override protected function _8baab790e59e91e8d64bc4d2(param1:int) : void
      {
         var _loc2_:int = param1 < (-1563354530 ^ 0x06D333DD ^ -1113373808 ^ 0x19A16A77) ? int(param1 + (-1699202851 ^ -634777419 ^ -480840544 ^ -1547379540)) : param1;
         var _loc3_:int = _loc2_;
         switch(_24fc30cfc3c855ea21a231e8.SUBLOCATION_7_LOST_VALLEY.id === _loc3_ ? -1380093796 ^ -128175962 ^ 0x6A2DBFD4 ^ 0x3FCCFFEE : -1861593259 ^ 0x4BB31EF1 ^ 0x475690EA ^ -1645225649)
         {
            case 0:
               if(this._ceea0d2e0f21e891b787842e.isLostValleyAvailable)
               {
                  super._8baab790e59e91e8d64bc4d2(param1);
               }
               break;
            default:
               super._8baab790e59e91e8d64bc4d2(param1);
         }
      }
   }
}

