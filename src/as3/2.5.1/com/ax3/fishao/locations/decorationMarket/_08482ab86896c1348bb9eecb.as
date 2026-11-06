package com.ax3.fishao.locations.decorationMarket
{
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.privateHouse._c24229eda44b942058106fae;
   import com.ax3.fishao.locations.privateHouse.interior.model._b96ff5cb658b59458748ed64;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.view.dialogs.interior._6a8967ac4d1067e2adb0979a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class _08482ab86896c1348bb9eecb extends _c24229eda44b942058106fae
   {
      
      private var _278ccd59fbf66e4d46fa1530:_b28b8f38ab58a6efb3567720;
      
      private var _e71027b39862c0f70498197d:_6a8967ac4d1067e2adb0979a;
      
      public function _08482ab86896c1348bb9eecb(param1:_4039c287ddb4ef46ab65ab0e)
      {
         super(param1);
         this.init();
      }
      
      override public function get interiorItemsLocation() : String
      {
         return _b96ff5cb658b59458748ed64.EIIL_DECORATION_SHOP;
      }
      
      override protected function _debeb0e5fad676445283f257() : void
      {
         this._278ccd59fbf66e4d46fa1530.viewDoorCenter.isEnabled = false;
         this._278ccd59fbf66e4d46fa1530.viewDoorLeft.isEnabled = false;
      }
      
      private function init() : void
      {
         this._e71027b39862c0f70498197d = GameSwf.instance.managerInterior;
         var _temp_3:* = _8e13ffc955ce803f9ca06283;
         var _temp_2:* = 0x79868EBC ^ 0x7C318168 ^ -84715781 ^ -12297938;
         var _temp_1:* = -1260907601 ^ 0x71F63301 ^ -1883289252 ^ 0x4A9169FE;
         _furnitureMap = _temp_3._5ce3f4e8aa24a7bd3ffb9787([_temp_2,_temp_1,_temp_1]);
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._278ccd59fbf66e4d46fa1530 = super._3536e00a076cf84463e9eaaa() as _b28b8f38ab58a6efb3567720;
         return this._278ccd59fbf66e4d46fa1530;
      }
      
      override public function destroy() : void
      {
         _controllerInterior._90eac9ca552fe54c2ca0299f();
         super.destroy();
      }
      
      override public function show() : void
      {
         super.show();
         _95223275024345738660ad36();
      }
      
      override protected function _0b905154637e928500b2f706(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         this._e71027b39862c0f70498197d._d9ed651d0ce75eca3b6b49e9("",true);
      }
      
      override protected function inspectPlayerPosition() : void
      {
         var _loc1_:int = 0x1A27562A ^ 0x48ABEF00 ^ 0x43E12AD1 ^ -317511583;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x09A84830 ^ 0x2F67130D ^ -1292670124 ^ 0x68428BF2))
            {
               case 0:
                  super.inspectPlayerPosition();
                  _loc1_ = 0x0BCAF00E ^ -714790845 ^ -1660245480 ^ -1076114996;
                  break;
               case 1:
                  if(this._278ccd59fbf66e4d46fa1530 != null)
                  {
                     _loc1_ = 0x58C9E617 ^ 0x3DD30833 ^ 0x78F06129 ^ -510380906;
                  }
                  else
                  {
                     _loc1_ = 0x0B52F6CB ^ -1963838688 ^ 0x3A67A7C0 ^ 0x47B9D9B2;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function get isOwnHouse() : Boolean
      {
         return false;
      }
      
      override public function _c047644bcf874f1a67d20ce2() : void
      {
         super._c047644bcf874f1a67d20ce2();
         _gui.mainMenu.tournamentIcon.enable();
      }
   }
}

