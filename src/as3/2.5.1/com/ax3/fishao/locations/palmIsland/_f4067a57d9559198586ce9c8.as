package com.ax3.fishao.locations.palmIsland
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.items._f53c51098527c84835f32b98;
   import com.ax3.fishao.locations.items.model._4aa243954966c493c452eb64;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.features._354d2881bbbfb4c44045fd10;
   import com.ax3.fishao.view.dialogs.features._f49970bf420b737db92228d1;
   import com.ax3.fishao.view.dialogs.fruits._a98277cf6d130b0c84f83078;
   import com.ax3.fishao.view.dialogs.periodicFeatures._6a0453eff1aa3e0ec6453376;
   import com.ax3.fishao.view.dialogs.periodicFeatures._8135ed6dd5e1e5392891fb21;
   import com.ax3.fishao.view.dialogs.periodicFeatures._ba6c47609da4d1f0e53303f9;
   import com.ax3.fishao.view.dialogs.periodicFeatures._fa65181d93876f76516f87eb;
   import flash.events.Event;
   
   public class _f4067a57d9559198586ce9c8 extends _67f8febc099eaa05c48aa41e
   {
      
      private var _b7fff5518435008f411eac07:_1b141b5c2c59d77012d7d70f;
      
      private var _824d9787826fee652d3914fe:_e046183eeba639641c53acdd;
      
      private var _a2e80fb864328e90463dd655:_a98277cf6d130b0c84f83078;
      
      private var _0cfc84bea29c22d7abdd5a7d:_f49970bf420b737db92228d1;
      
      private var _fed064307cf4ca8850cc8f8c:_ba6c47609da4d1f0e53303f9;
      
      public function _f4067a57d9559198586ce9c8(param1:_4039c287ddb4ef46ab65ab0e)
      {
         this._824d9787826fee652d3914fe = param1 as _e046183eeba639641c53acdd;
         super(param1);
         this.init();
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._b20aa719fc7cd73417a2749f();
         this._824d9787826fee652d3914fe._c17c6bbb6ddc332c4fe2d2b6();
      }
      
      override protected function _d889edf75abb4c06a7560452(param1:Object) : void
      {
         var _loc2_:_4aa243954966c493c452eb64 = _f53c51098527c84835f32b98.parse(param1);
         var _loc3_:Boolean = GameSwf.instance.managerFeatures.isFeatureEnabled(_354d2881bbbfb4c44045fd10.EUF_LOCATION_TREE_CAVE);
         if(_loc2_.resourceType != _67282af25befe9778e5c8dd1.FOSSIL.id || _loc3_)
         {
            super._d889edf75abb4c06a7560452(param1);
         }
      }
      
      override protected function _331b3b3569f81ea28d9c6be9(param1:Object) : void
      {
         var _loc2_:_4aa243954966c493c452eb64 = _f53c51098527c84835f32b98.parse(param1);
         if(_loc2_.resourceType != _67282af25befe9778e5c8dd1.FOSSIL.id)
         {
            super._331b3b3569f81ea28d9c6be9(param1);
         }
         else
         {
            _locationItems._61cb7e47776cad4e42786ba2();
         }
      }
      
      private function init() : void
      {
         this._0cfc84bea29c22d7abdd5a7d = GameSwf.instance.managerFeatures;
         this._a2e80fb864328e90463dd655 = GameSwf.instance.managerFruits;
         this._fed064307cf4ca8850cc8f8c = GameSwf.instance.managerPeriodicFeatures;
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._b7fff5518435008f411eac07 = super._3536e00a076cf84463e9eaaa() as _1b141b5c2c59d77012d7d70f;
         return this._b7fff5518435008f411eac07;
      }
      
      override protected function inspectPlayerPosition() : void
      {
         var _loc1_:int = -1270520800 ^ 0x65E3354D ^ -1974978158 ^ 0x41945DB6;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1126858110 ^ 0x486F0788 ^ -205548055 ^ 0x1D7F25A8))
            {
               case 0:
                  return;
               case 1:
                  _locationItems._1aa92192e9ddb1aa40cc5563(_playerChar.graphic.x,_playerChar.graphic.y,0x4A0608A6 ^ 0x78D0539B ^ -1408142533 ^ -1631115252);
                  return;
               case 2:
                  super.inspectPlayerPosition();
                  if(_playerChar == null)
                  {
                     _loc1_ = 0x631579CF ^ -534797645 ^ -133469417 ^ 0x617B8520;
                  }
                  else
                  {
                     _loc1_ = -149733076 ^ 0x14602CB4 ^ 0x20E32891 ^ -638947261;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _b24937139cc44ffe53f7fc23(param1:Number, param2:Number, param3:_08c120b706560fce9302bcab = null) : Boolean
      {
         var _loc4_:Boolean = super._b24937139cc44ffe53f7fc23(param1,param2,param3);
         return _loc4_ || this._b7fff5518435008f411eac07.viewMegalodon != null && this._b7fff5518435008f411eac07.viewMegalodon.hitTest(param1,param2) || this._b7fff5518435008f411eac07.viewPirateCave != null && this._b7fff5518435008f411eac07.viewPirateCave.hitTest(param1,param2,false);
      }
      
      private function _b20aa719fc7cd73417a2749f() : void
      {
         var _loc1_:_8135ed6dd5e1e5392891fb21 = this._fed064307cf4ca8850cc8f8c._8bb0ac0fa6a0e4076a4fed15(_fa65181d93876f76516f87eb.EPFT_MEGALODON);
         switch(_loc1_.state)
         {
            case _6a0453eff1aa3e0ec6453376.EPFS_ACTIVE:
               §§push(0x2F8A426B ^ 0x72C96638 ^ -359141227 ^ -1210788666);
               break;
            case _6a0453eff1aa3e0ec6453376.EPFS_UNACTIVE:
               §§push(0x71268C7C ^ -1541031872 ^ 0x53FF0419 ^ -2030292956);
               break;
            default:
               §§push(0x08C376BC ^ -233596681 ^ -2043031865 ^ 0x7CE9208E);
         }
         switch(§§pop())
         {
            case 0:
               this._b7fff5518435008f411eac07.viewMegalodon.isEnabled = true;
               break;
            case 1:
               this._b7fff5518435008f411eac07.viewMegalodon.isEnabled = false;
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剶别刑勭刯劺刦労勅勦刪刎券到刈勳剗劷分劼勻剽勹勜勘刋勸勥剦劲勒劰剺勓勨劲刮劧劅刳刹勱剁勔劃剨动刷劾勗剜剩剒劫劻刟剸剭剭勱努剡刏刚劷勥刏劏剂别劉勿刐創制判勡剛勬刴勥刘剰刲剽刬劁剨剡劒勬删劸剺劆勏勊募刱劯勻刳勳刬功剓刲劾到刹刹剼勳勀剬刎勞劢剅剗动勞剁剨刚勒剁剕勐剥劒劕劫劏刳劒勧剶初劥剄剼勛勓劐劒勩刷勧刎刼則刀剘剧劄刡副勠刻刧刔劇刏剳剪勐初劁劔勵剣刕剾劈劜剜勈勑刃励刊刐勐劓刜刪剘劙勌劮刏","劙剤勸効剆勱剼刢勦剞剫劯劻勅劳努") + _loc1_.state);
         }
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_PERIODIC_FEATURES_MEGALODON_UPDATED:
               §§push(0x4E11AE02 ^ 0x40E09460 ^ 0x4CCDCDAB ^ 0x423CF7C9);
               break;
            case _6b63fd0a4028eb279b227831.ECU_QUESTS_PIRATE_CAVE_INFO_UPDATED:
               §§push(-1242591564 ^ 0x0D8A6C13 ^ -228839393 ^ 0x4A39D2B9);
               break;
            default:
               §§push(-1249247697 ^ 0x650B8A58 ^ -347051043 ^ 0x3BD21FA8);
         }
         switch(§§pop())
         {
            case 0:
               if(this._b7fff5518435008f411eac07 != null && this._b7fff5518435008f411eac07.viewMegalodon != null)
               {
                  this._b20aa719fc7cd73417a2749f();
               }
               break;
            case 1:
               this._824d9787826fee652d3914fe._c17c6bbb6ddc332c4fe2d2b6();
               break;
            default:
               super.updateWithType(param1);
         }
      }
   }
}

