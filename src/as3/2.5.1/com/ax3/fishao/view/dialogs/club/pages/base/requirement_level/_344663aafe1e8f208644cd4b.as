package com.ax3.fishao.view.dialogs.club.pages.base.requirement_level
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows._489fd34e49d71588dd236847;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class _344663aafe1e8f208644cd4b extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _c78053fe1b63badeb7d9842c:_489fd34e49d71588dd236847;
      
      public function _344663aafe1e8f208644cd4b(param1:DisplayObjectContainer)
      {
         this._c78053fe1b63badeb7d9842c = new _489fd34e49d71588dd236847(this,param1);
         super(this._c78053fe1b63badeb7d9842c);
         this.init();
      }
      
      public function get requiredLevel() : int
      {
         return this._c78053fe1b63badeb7d9842c.pageCurrent + (-337638954 ^ 0x16E371C7 ^ 0x7DB85557 ^ -2135216825);
      }
      
      public function set requiredLevel(param1:int) : void
      {
         this._c78053fe1b63badeb7d9842c.pageCurrent = param1 - 1;
         this._31b927f69bf0df0bba0f4161();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._c78053fe1b63badeb7d9842c.buttonLeft:
                  §§push(0x66721BAA ^ 0x03863E7A ^ -1831667999 ^ -148450511);
                  break;
               case this._c78053fe1b63badeb7d9842c.buttonRight:
                  §§push(0x01C284E8 ^ -670967770 ^ -1520298373 ^ 0x7CA14AB4);
                  break;
               default:
                  §§push(0x2D5E3639 ^ 0x4438D559 ^ -1677671500 ^ -177856298);
            }
            switch(§§pop())
            {
               case 0:
               case 1:
                  this._31b927f69bf0df0bba0f4161();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._c78053fe1b63badeb7d9842c.pageCurrent = 0x31073872 ^ 0x5B6F1EEF ^ -743759666 ^ -1178401197;
         this._c78053fe1b63badeb7d9842c.pagesTotal = ConstantsBase.LEVEL_MAX;
         this._31b927f69bf0df0bba0f4161();
         this._c78053fe1b63badeb7d9842c.title = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_LEVEL_REQUIREMENT_TITLE);
      }
      
      private function _31b927f69bf0df0bba0f4161() : void
      {
         this._c78053fe1b63badeb7d9842c.text = this.requiredLevel.toString();
      }
   }
}

