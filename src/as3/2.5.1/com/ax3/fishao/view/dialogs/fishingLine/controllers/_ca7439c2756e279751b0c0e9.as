package com.ax3.fishao.view.dialogs.fishingLine.controllers
{
   import com.ax3.fishao.core._d9fcc7126f55b8a550ecc5ee;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.fishingLine.model._fd92d83b064db0d4701d8b0f;
   import com.ax3.fishao.view.dialogs.fishingLine.views._77f54a3b2f8ffb3d05a91a00;
   import flash.display.DisplayObjectContainer;
   import protocol.api.fishingLine.data.FishingLineLevelInfo;
   
   public class _ca7439c2756e279751b0c0e9 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _0262b01b37833fa4fd846f44:_77f54a3b2f8ffb3d05a91a00;
      
      private var _b1a73b764571b5cfe79e5d53:FishingLineLevelInfo;
      
      private var _2e046f105e8a62b4cb244d86:_fd92d83b064db0d4701d8b0f;
      
      private var _e17b4877af9ed848161b0469:Boolean;
      
      private var _847b01a1c688be2862a5a4af:Array;
      
      public function _ca7439c2756e279751b0c0e9(param1:DisplayObjectContainer, param2:Boolean)
      {
         this._0262b01b37833fa4fd846f44 = new _77f54a3b2f8ffb3d05a91a00(this,param1);
         super(this._0262b01b37833fa4fd846f44);
         this._e17b4877af9ed848161b0469 = param2;
         this.init();
      }
      
      public function set entity(param1:FishingLineLevelInfo) : void
      {
         var _loc2_:String = null;
         var _loc3_:_a92a742da0323a1d9ea6f682 = null;
         this._9a7fc6a66c9f050a63340403();
         this._b1a73b764571b5cfe79e5d53 = Debug.assertNotEqual(param1,null);
         this._0262b01b37833fa4fd846f44.fishLength = this._b1a73b764571b5cfe79e5d53.lineLength;
         this._0262b01b37833fa4fd846f44.percentLineMax = this._b1a73b764571b5cfe79e5d53.lineLength / this._2e046f105e8a62b4cb244d86.levelInfoMaxFishingLine.lineLength * (0x5CA5F86E ^ 0x04B56275 ^ 0x064928E2 ^ 0x5E59B29D);
         this._847b01a1c688be2862a5a4af = [];
         var _loc4_:Array = [];
         for each(_loc2_ in this._b1a73b764571b5cfe79e5d53.availableColors)
         {
            _loc3_ = new _a92a742da0323a1d9ea6f682(_loc2_);
            _loc3_.enableSelection = this._e17b4877af9ed848161b0469;
            this._847b01a1c688be2862a5a4af.push(_loc3_);
            _loc4_.push(_loc3_.view);
         }
         this._0262b01b37833fa4fd846f44.items = _loc4_;
         this._0262b01b37833fa4fd846f44._63b9041bf855ea499da8554e(false);
      }
      
      private function init() : void
      {
         this._2e046f105e8a62b4cb244d86 = GameSwf.instance.managerFishingLine;
         this._847b01a1c688be2862a5a4af = [];
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:_988093efdfa36e13bfd6c6cf = null;
         var _loc3_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_FISHING_LINE_COLOR === _loc3_ ? -1311733817 ^ -899432263 ^ -2054887750 ^ -29908540 : 0x5E1214D5 ^ -1531821454 ^ 0x6D8F9CC3 ^ -1758475675)
         {
            case 0:
               for each(_loc2_ in this._847b01a1c688be2862a5a4af)
               {
                  _loc2_.update(param1);
               }
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function _9a7fc6a66c9f050a63340403() : void
      {
         var _loc1_:_d9fcc7126f55b8a550ecc5ee = null;
         for each(_loc1_ in this._847b01a1c688be2862a5a4af)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
         }
         this._847b01a1c688be2862a5a4af = null;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._9a7fc6a66c9f050a63340403();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

