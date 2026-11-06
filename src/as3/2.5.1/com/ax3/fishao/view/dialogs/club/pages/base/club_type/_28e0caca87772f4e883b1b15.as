package com.ax3.fishao.view.dialogs.club.pages.base.club_type
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.club.model._c47dd344395f9f377962c5cf;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows._489fd34e49d71588dd236847;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class _28e0caca87772f4e883b1b15 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _566c0d11750a9915ede3b5e8:_489fd34e49d71588dd236847;
      
      private var _b9a21e4ee35da928d5873a4c:Array;
      
      public function _28e0caca87772f4e883b1b15(param1:DisplayObjectContainer)
      {
         this._566c0d11750a9915ede3b5e8 = new _489fd34e49d71588dd236847(this,param1);
         super(this._566c0d11750a9915ede3b5e8);
         this.init();
      }
      
      private static function _8f55287769d4fc21605daf3e(param1:String) : String
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case _c47dd344395f9f377962c5cf.ECT_CLOSED:
               §§push(-671044882 ^ -1590509255 ^ -1797844224 ^ -303728425);
               break;
            case _c47dd344395f9f377962c5cf.ECT_OPENED:
               §§push(-338824398 ^ -553974167 ^ -1194824950 ^ -1912693168);
               break;
            case _c47dd344395f9f377962c5cf.ECT_PRIVATE:
               §§push(0x4F4FD359 ^ 0x6EE9D4F9 ^ 0x4701C185 ^ 0x66A7C627);
               break;
            default:
               §§push(0x157E7DF1 ^ 0x4E045FF9 ^ -1365282484 ^ -169520313);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TYPE_CLOSED;
               break;
            case 1:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TYPE_OPENED;
               break;
            case 2:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TYPE_PRIVATE;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
      
      public function get type() : String
      {
         return this._b9a21e4ee35da928d5873a4c[this._566c0d11750a9915ede3b5e8.pageCurrent];
      }
      
      public function set type(param1:String) : void
      {
         this._566c0d11750a9915ede3b5e8.pageCurrent = this._b9a21e4ee35da928d5873a4c.indexOf(param1);
         this._0edc55f220568e922757a3a2();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._566c0d11750a9915ede3b5e8.buttonLeft:
                  §§push(-1578123394 ^ -382192116 ^ 0x0C77C84B ^ 0x44A04139);
                  break;
               case this._566c0d11750a9915ede3b5e8.buttonRight:
                  §§push(0x30DCFD7F ^ -2121579068 ^ -139109467 ^ 0x46E2E31F);
                  break;
               default:
                  §§push(0x4C131E39 ^ 0x4F217D69 ^ 0x585573F5 ^ 0x5B6710A7);
            }
            switch(§§pop())
            {
               case 0:
               case 1:
                  this._0edc55f220568e922757a3a2();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._b9a21e4ee35da928d5873a4c = [_c47dd344395f9f377962c5cf.ECT_OPENED,_c47dd344395f9f377962c5cf.ECT_CLOSED,_c47dd344395f9f377962c5cf.ECT_PRIVATE];
         this._566c0d11750a9915ede3b5e8.pagesTotal = this._b9a21e4ee35da928d5873a4c.length;
         this._566c0d11750a9915ede3b5e8.pageCurrent = -175164467 ^ 0x42AFD54F ^ 0x1C284167 ^ -1425496091;
         this._566c0d11750a9915ede3b5e8.title = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_TYPE_TITLE);
         this._0edc55f220568e922757a3a2();
      }
      
      private function _0edc55f220568e922757a3a2() : void
      {
         var _loc1_:String = _8f55287769d4fc21605daf3e(this.type);
         this._566c0d11750a9915ede3b5e8.text = _c2ad9d37d7be0097d6d2e977.get(_loc1_);
      }
   }
}

