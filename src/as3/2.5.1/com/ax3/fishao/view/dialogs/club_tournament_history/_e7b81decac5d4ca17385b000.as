package com.ax3.fishao.view.dialogs.club_tournament_history
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._f6788106409c49494058e542;
   import com.ax3.fishao.view.dialogs.club_tournament_history.item._67215a32032b9f0dcf0bed74;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.clubs.tournament_history.ResponseClubsTournamentHistory;
   
   public class _e7b81decac5d4ca17385b000 extends _f6788106409c49494058e542
   {
      
      private var _215a48a33e5c4cdf5173514f:Array;
      
      private var _89d9c508a88a010c4692eaef:int;
      
      private var _345ad282b85de367a5ab61f2:_20dcd15348be3dd1807a94f5;
      
      public function _e7b81decac5d4ca17385b000(param1:DisplayObjectContainer)
      {
         this._345ad282b85de367a5ab61f2 = new _20dcd15348be3dd1807a94f5(this,param1);
         super(this._345ad282b85de367a5ab61f2);
         this.init();
      }
      
      private function _07726529a8427fd9ab3aa28a(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_67215a32032b9f0dcf0bed74 = null;
         var _loc4_:DisplayObject = null;
         if(_fa8d5efc34d8920757369351._ecb681b2bff0915b270b914b(param1))
         {
            return;
         }
         var _loc5_:ResponseClubsTournamentHistory = param1 as ResponseClubsTournamentHistory;
         var _loc6_:DisplayObjectContainer = this._345ad282b85de367a5ab61f2.source as DisplayObjectContainer;
         var _loc7_:Array = _loc5_.historyData;
         _loc7_.sortOn(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勻勍劝剝务刉勓劘务劷勌勤剸刷剽剏勧刲剥劏刉劌剷勞剡劊力刕","勭剂剺勶剉刮剽刕剀刲刣列刾剘剩勅"),Array.NUMERIC | Array.DESCENDING);
         for each(_loc2_ in _loc7_)
         {
            _loc3_ = new _67215a32032b9f0dcf0bed74(_loc2_);
            _loc4_ = _loc3_.view.source;
            _loc6_.addChild(_loc4_);
            _loc4_.x = -1672833717 ^ 0x1AC92FF9 ^ -1095245552 ^ 0x38345B8F;
            this._215a48a33e5c4cdf5173514f.push(_loc3_);
         }
         this._345ad282b85de367a5ab61f2.viewPagination.pagesTotal = Math.ceil(this._215a48a33e5c4cdf5173514f.length / this._89d9c508a88a010c4692eaef);
         this._345ad282b85de367a5ab61f2.viewPagination.pageCurrent = 0x45E70ECE ^ 0x0D795BB5 ^ -1814707266 ^ -615803195;
         _2366485e451061bdda2a0f22(this._215a48a33e5c4cdf5173514f,-152724643 ^ 0x5F88135D ^ -101680887 ^ 0x509DF153,this._89d9c508a88a010c4692eaef,0x258B5A41 ^ 0x0948110B ^ 0x54FD21F0 ^ 0x783E6AB8);
         this._4e1f1d02ffed576fdba29f6b();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._345ad282b85de367a5ab61f2.viewPagination.buttonLeft:
                  §§push(0x1259ED0A ^ 0x2429D9AB ^ -1744476687 ^ -1368043184);
                  break;
               case this._345ad282b85de367a5ab61f2.viewPagination.buttonRight:
                  §§push(0x7751E054 ^ -2147034538 ^ 0x7119FC85 ^ -2041657722);
                  break;
               default:
                  §§push(-1351988325 ^ 0x3F7B79E1 ^ -1278925627 ^ 0x23D416BD);
            }
            switch(§§pop())
            {
               case 0:
               case 1:
                  this._4e1f1d02ffed576fdba29f6b();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._215a48a33e5c4cdf5173514f = [];
         this._89d9c508a88a010c4692eaef = -1982329384 ^ -656800789 ^ -1591427636 ^ -265899021;
         GameSwf.instance.managerClubs.getTournamentHistory(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._07726529a8427fd9ab3aa28a));
      }
      
      private function _4e1f1d02ffed576fdba29f6b() : void
      {
         _3d866f07adb02a6079215c17(this._215a48a33e5c4cdf5173514f,this._345ad282b85de367a5ab61f2.viewPagination.pageCurrent,this._89d9c508a88a010c4692eaef);
      }
   }
}

