package com.ax3.fishao.view.dialogs.club_fish.item
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.requirements._200c41bbe68d5cdf5a0f8ad3;
   import com.ax3.fishao.requirements._486f3b64ee967395c7114ca7;
   import com.ax3.fishao.requirements._db402f1977e6d9d227c729aa;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._aaf40c474cdac784463304b5;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.club_fish._3f734be840cbb058ecba9ba4;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.events.Event;
   
   public class _7e98e2c3d17e975494bcfcd2 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _65090182cd30f2d7344ac479:_4e7f3e3bd2f00c6aad290b0c = new _4e7f3e3bd2f00c6aad290b0c(this);
      
      private var _6f022651de245aecc8624b47:Boolean;
      
      private var _b4309d7bdf9b1d8d98e12e7a:_cff30366d510ea862540bfef;
      
      private var _508a0a3056b14437ab15d0fd:_3f734be840cbb058ecba9ba4;
      
      private var _3bf4375d400ad52bff34d5b7:int;
      
      public function _7e98e2c3d17e975494bcfcd2(param1:_3f734be840cbb058ecba9ba4, param2:_cff30366d510ea862540bfef, param3:Boolean, param4:int)
      {
         super(this._65090182cd30f2d7344ac479);
         this._508a0a3056b14437ab15d0fd = param1;
         this._b4309d7bdf9b1d8d98e12e7a = param2;
         this._6f022651de245aecc8624b47 = param3;
         this._3bf4375d400ad52bff34d5b7 = param4;
         this.init();
      }
      
      private function _f7270b48a75d4848f5339759(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:int = 0x09E62C7D ^ 0x0FC42849 ^ 0x34317226 ^ 0x486565A1;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-792778334 ^ -1606247515 ^ -1901864075 ^ -2077721919))
            {
               case 0:
                  if(_fa8d5efc34d8920757369351._ecb681b2bff0915b270b914b(param1))
                  {
                     _loc2_ = 0x180E73AF ^ 0x1AA5B84B ^ -95049517 ^ -2104987515;
                  }
                  else
                  {
                     _loc2_ = -1083658571 ^ -1692661415 ^ 0x09B4E80F ^ 0x57B65C52;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._508a0a3056b14437ab15d0fd._434cd9463d2f5b407fe037d4(this._b4309d7bdf9b1d8d98e12e7a.id);
                  this._65090182cd30f2d7344ac479.isLocked = false;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_aaf40c474cdac784463304b5 = null;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._65090182cd30f2d7344ac479.buttonBuy:
                  §§push(0x2A956E6E ^ -658665727 ^ -1558586829 ^ 0x51313B5C);
                  break;
               case this._65090182cd30f2d7344ac479.viewFish:
                  §§push(-623765911 ^ -731948628 ^ 0x63CA5A55 ^ 0x6D471591);
                  break;
               default:
                  §§push(0x12F0458A ^ 0x689F5E9D ^ 0x4FEB5C40 ^ 0x35844755);
            }
            switch(§§pop())
            {
               case 0:
                  _dfa25706e58a240c1e33e5c6.fscModel.extensionFishes.unlockClub(this._b4309d7bdf9b1d8d98e12e7a.id,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._f7270b48a75d4848f5339759));
                  _loc4_ = true;
                  break;
               case 1:
                  _loc3_ = app.dialogFactory._a0d214350fb42da9f32557e6(_aaf40c474cdac784463304b5);
                  _loc3_._fb2737826eacd0c722842d87(this._b4309d7bdf9b1d8d98e12e7a.id);
                  _loc3_.show();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         this._65090182cd30f2d7344ac479.fishID = this._b4309d7bdf9b1d8d98e12e7a.id;
         var _loc1_:_200c41bbe68d5cdf5a0f8ad3 = this._b4309d7bdf9b1d8d98e12e7a._5ad2af1d65e4995e96c623b7(_486f3b64ee967395c7114ca7.ERT_CLUB_UNLOCK_BY_FISHCOINS) as _200c41bbe68d5cdf5a0f8ad3;
         var _loc2_:_db402f1977e6d9d227c729aa = this._b4309d7bdf9b1d8d98e12e7a._5ad2af1d65e4995e96c623b7(_486f3b64ee967395c7114ca7.ERT_CLUB_POINTS) as _db402f1977e6d9d227c729aa;
         var _loc3_:Boolean = _loc1_ != null;
         var _loc4_:Boolean = _loc2_ != null && this._3bf4375d400ad52bff34d5b7 < _loc2_.points;
         if(this._6f022651de245aecc8624b47)
         {
            this._65090182cd30f2d7344ac479.isLocked = false;
         }
         else if(_loc4_)
         {
            this._65090182cd30f2d7344ac479._005f04e3f504600c930ccbfa(_loc2_.points);
         }
         else if(_loc3_)
         {
            this._65090182cd30f2d7344ac479._aa5b7ba2d7be77d5ff6109e2(_loc1_.price);
         }
         else
         {
            this._65090182cd30f2d7344ac479.isLocked = false;
         }
      }
   }
}

