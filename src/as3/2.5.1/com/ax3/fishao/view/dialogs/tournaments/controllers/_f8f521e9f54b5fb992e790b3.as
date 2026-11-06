package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.tournaments.models._4a26c3e739ada00470a83032;
   import com.ax3.fishao.view.dialogs.tournaments.views._d4797ddff6d58f7cfbfecd05;
   import flash.display.DisplayObjectContainer;
   
   public class _f8f521e9f54b5fb992e790b3 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _983377452f0190aabbd7f875:_d4797ddff6d58f7cfbfecd05;
      
      private var _b0e4c26ea653dc1a49b4250d:_4a26c3e739ada00470a83032;
      
      public function _f8f521e9f54b5fb992e790b3(param1:_4a26c3e739ada00470a83032, param2:DisplayObjectContainer)
      {
         this._b0e4c26ea653dc1a49b4250d = param1;
         this._983377452f0190aabbd7f875 = new _d4797ddff6d58f7cfbfecd05(this,param2);
         super(this._983377452f0190aabbd7f875);
         this.init();
      }
      
      public function get entity() : _4a26c3e739ada00470a83032
      {
         return this._b0e4c26ea653dc1a49b4250d;
      }
      
      private function init() : void
      {
         this._c9aef71caac01218bc064356();
      }
      
      public function _c9aef71caac01218bc064356() : void
      {
         var _loc1_:int = -260516103 ^ 0x7414ECAE ^ 0x2BBBE679 ^ -989049324;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x21B55895 ^ 0x5195F0B7 ^ 0x7F1071FA ^ 0x65EB4BE0))
            {
               case 0:
                  return;
               case 1:
                  this._983377452f0190aabbd7f875.statusText = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_STATUS_NOT_READY);
                  _loc1_ = -1313129388 ^ -1080306693 ^ -1733514293 ^ -61352356;
                  break;
               case 2:
                  this._983377452f0190aabbd7f875.login = this._b0e4c26ea653dc1a49b4250d.login;
                  this._983377452f0190aabbd7f875.level = this._b0e4c26ea653dc1a49b4250d.level;
                  this._983377452f0190aabbd7f875.isReady = this._b0e4c26ea653dc1a49b4250d.isReady;
                  if(this._b0e4c26ea653dc1a49b4250d.isReady)
                  {
                     _loc1_ = -713537563 ^ 0x57EAB73C ^ 0x51D51E48 ^ -1180926806;
                  }
                  else
                  {
                     _loc1_ = 0x51C9A803 ^ -1645886577 ^ 0x50F11C6E ^ -167320101;
                  }
                  break;
               case 3:
                  this._983377452f0190aabbd7f875.statusText = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_STATUS_READY);
                  _loc1_ = 0x2ED07497 ^ 0x558ED160 ^ -1326915631 ^ -1586632674;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

