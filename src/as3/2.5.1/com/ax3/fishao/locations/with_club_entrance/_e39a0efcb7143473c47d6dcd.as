package com.ax3.fishao.locations.with_club_entrance
{
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.locations._eb33c79ced81d8f5ac0ea91d;
   import com.ax3.fishao.locations.base._24fc30cfc3c855ea21a231e8;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.club.club_outside._fb60627e993e6700597a9c2e;
   import com.ax3.fishao.view.dialogs.club.model._518280cac6f3ae016ad4f350;
   import flash.geom.Point;
   
   public class _e39a0efcb7143473c47d6dcd extends _67f8febc099eaa05c48aa41e
   {
      
      private var _d24eb33d9765f2b1a17cb8f8:_2a5b0677926a7fd9cc6d1019;
      
      private var _e131dd3a894d00743a5b450f:Point;
      
      private var _8ba9c1c4576b626b56d23781:Point;
      
      private var _5a4d4426a8a1fc712b148728:Boolean;
      
      private var _3fc6918fb4d1959116daf8c1:Boolean;
      
      private var _e3a02b9c7ee6fc9307ee13d8:_518280cac6f3ae016ad4f350;
      
      public function _e39a0efcb7143473c47d6dcd(param1:_4039c287ddb4ef46ab65ab0e)
      {
         super(param1);
         this.init();
      }
      
      override protected function _dbf22fe5130730391ec889be() : void
      {
         var _loc1_:int = -193103563 ^ 0x5E28906A ^ -360350038 ^ 0x6AD68C14;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x06630703 ^ -785522895 ^ -2065766988 ^ 0x79962666))
            {
               case 0:
                  this._5a4d4426a8a1fc712b148728 = false;
                  _playerChar._9ec5ae7ccbeebf37b003f58d(true);
                  this._64743aae867340aef595ac63();
                  _loc1_ = 0x3250D419 ^ -1103641649 ^ -1038487034 ^ 0x6478FE33;
                  break;
               case 1:
                  _playerChar.programmedMove = false;
                  _programmedCharMoveTarget = null;
                  if(this._5a4d4426a8a1fc712b148728)
                  {
                     _loc1_ = 0x58322316 ^ 0x72C9BAD0 ^ -967094702 ^ -962147212;
                  }
                  else
                  {
                     _loc1_ = 0x0A38186E ^ 0x0CC1B071 ^ -1194668274 ^ -1808433933;
                  }
                  break;
               case 2:
                  if(this._3fc6918fb4d1959116daf8c1)
                  {
                     _loc1_ = -1592686290 ^ -276893217 ^ 0x067784F1 ^ 0x621EE7E5;
                  }
                  else
                  {
                     _loc1_ = 0x476571F3 ^ -944905207 ^ -56034459 ^ 0x5666757B;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  super._dbf22fe5130730391ec889be();
                  _loc1_ = 0x22508852 ^ -1604592960 ^ 0x4DF4CFD6 ^ -436631897;
                  break;
               case 5:
                  this._3fc6918fb4d1959116daf8c1 = false;
                  _playerChar._9ec5ae7ccbeebf37b003f58d(true);
                  _loc1_ = -1888251097 ^ -864438786 ^ 0x7AB0D520 ^ 0x13BCE81A;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _0ecb5b20a04e560e4bb8d4c1() : void
      {
         var _loc1_:int = 0x53718B04 ^ 0x7113A27D ^ 0x2154311E ^ 0x6BB7D79F;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x3D475313 ^ 0x3BC2FE51 ^ 0x1B75484D ^ 0x75712AF7))
            {
               case 0:
                  if(this._e3a02b9c7ee6fc9307ee13d8.userInClub)
                  {
                     _loc1_ = 0x7027A45A ^ -1328623324 ^ 0x3C22BE79 ^ -1807088388;
                  }
                  else
                  {
                     _loc1_ = -163212339 ^ 0x7DDE57FA ^ -877256494 ^ 0x28AC2B1C;
                  }
                  break;
               case 1:
                  this._3fc6918fb4d1959116daf8c1 = true;
                  _16bdb56d599c22bb9eebc6e3(this._8ba9c1c4576b626b56d23781);
                  _loc1_ = 0x6C9756A8 ^ -553615342 ^ 0x30389B8F ^ -349273393;
                  break;
               case 2:
                  return;
               case 3:
                  GameSwf.instance._8baab790e59e91e8d64bc4d2(_24fc30cfc3c855ea21a231e8.CLUB_AREA.id,this.locationModel.id);
                  _loc1_ = 0x665F0830 ^ -460590026 ^ -1279435646 ^ 0x59E86F7E;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._d24eb33d9765f2b1a17cb8f8 = super._3536e00a076cf84463e9eaaa() as _2a5b0677926a7fd9cc6d1019;
         var _loc1_:Point = this._d24eb33d9765f2b1a17cb8f8.clubEntrancePosition;
         this._e131dd3a894d00743a5b450f = _loc1_.add(new Point(0x70F58B56 ^ 0x5C2F4838 ^ 0x2166043C ^ 0x0DBCC752,-514219860 ^ 0x07F861BB ^ 0x5CBA266D ^ 0x45E41881));
         this._8ba9c1c4576b626b56d23781 = _loc1_.add(new Point(-1780717388 ^ 0x10016D28 ^ 0x2A8B014D ^ -1353317167,0x5721EA48 ^ -2041224884 ^ 0x625DFF12 ^ -1289128924));
         return this._d24eb33d9765f2b1a17cb8f8;
      }
      
      override protected function _151c44613ce836f6c26d6d36() : Vector.<_eb33c79ced81d8f5ac0ea91d>
      {
         var _loc1_:Vector.<_eb33c79ced81d8f5ac0ea91d> = super._151c44613ce836f6c26d6d36();
         if(_loc1_ == null)
         {
            _loc1_ = new Vector.<_eb33c79ced81d8f5ac0ea91d>(0x2C3FCB73 ^ 0x11B7C73B ^ -966748910 ^ -68642470);
         }
         _loc1_.push(new _eb33c79ced81d8f5ac0ea91d(_3a8a2602dcf9bf49b62e62af.SFX_077_CLUB_AREA_ENTRANCE,this._d24eb33d9765f2b1a17cb8f8.clubEntrancePosition,0x44F4EBB8 ^ 0x5F3CB8D5 ^ 0x038935C7 ^ 0x184164F2));
         return _loc1_;
      }
      
      private function init() : void
      {
         this._e3a02b9c7ee6fc9307ee13d8 = GameSwf.instance.managerClubs;
      }
      
      override protected function _8baab790e59e91e8d64bc4d2(param1:int) : void
      {
         var _loc2_:int = param1;
         switch(_24fc30cfc3c855ea21a231e8.CLUB_AREA.id === _loc2_ ? 0x45E9136D ^ -1698488767 ^ -691725085 ^ 0x09EF11CF : -102432828 ^ 0x689A3BD2 ^ -1787256868 ^ 0x04065BCB)
         {
            case 0:
               GameSwf.instance.lastVirtualLocationID = param1;
               this._5a4d4426a8a1fc712b148728 = true;
               _16bdb56d599c22bb9eebc6e3(this._e131dd3a894d00743a5b450f);
               break;
            default:
               super._8baab790e59e91e8d64bc4d2(param1);
         }
      }
      
      public function _64743aae867340aef595ac63() : void
      {
         var _loc1_:_fb60627e993e6700597a9c2e = null;
         if(GameSwf._d3e1b275b210647ff7fe10f6())
         {
            return;
         }
         if(this._e3a02b9c7ee6fc9307ee13d8.userInClub)
         {
            GameSwf.instance._df816f93264e69cddcda0540();
         }
         else
         {
            _loc1_ = app.dialogFactory._a0d214350fb42da9f32557e6(_fb60627e993e6700597a9c2e);
            _loc1_.canOpenDialogInside = false;
            _loc1_.callbackClose = this._0ecb5b20a04e560e4bb8d4c1;
            _loc1_.show();
         }
      }
      
      override public function _d884928dd68180fa7fdbb4e7(param1:int) : void
      {
         var _loc2_:int = 0x20FCE0F9 ^ 0x1523DACD ^ 0x302EBFE4 ^ 0x29A8D86B;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-577737421 ^ 0x4FA4C772 ^ 0x246BD244 ^ -1710873155))
            {
               case 0:
                  _16bdb56d599c22bb9eebc6e3(this._8ba9c1c4576b626b56d23781);
                  _loc2_ = -1741195140 ^ -1359174907 ^ -1903159075 ^ -1811767784;
                  break;
               case 1:
                  return;
               case 2:
                  if(param1 == (-255121561 ^ 0x68E7E39B ^ -1742075875 ^ 0x06CC91))
                  {
                     _loc2_ = 0x25B1A124 ^ 0x6ACB0537 ^ -1143341323 ^ -654702754;
                  }
                  else
                  {
                     _loc2_ = -900364675 ^ 0x287A3F97 ^ 0x711EA71E ^ -1083686072;
                  }
                  break;
               case 3:
                  if(player == null)
                  {
                     _loc2_ = 0x2880A74F ^ 0x1663132D ^ 0x4B4F1389 ^ 0x59F5FA52;
                  }
                  else
                  {
                     _loc2_ = -1950199897 ^ 0x1D771794 ^ 0x376C1CED ^ -1920984732;
                  }
                  break;
               case 4:
                  GameSwf.instance.needSetPositionAfterExitVirtualLocation = false;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

