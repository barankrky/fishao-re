package com.ax3.fishao.view.dialogs.fruits
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.fruits.model._273a0e8d279da2c95b553430;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.fruits.FscExtensionFruits;
   import protocol.api.fruits.crush.ResponseFruitsCrush;
   
   public class _a98277cf6d130b0c84f83078 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _f6b6d975a6d0f7f3700be9b7:FscExtensionFruits;
      
      private var _27d2b071634ec6589a2fe4d0:Array;
      
      public function _a98277cf6d130b0c84f83078()
      {
         super();
         this.init();
      }
      
      public function get selectedFruits() : Array
      {
         return this._27d2b071634ec6589a2fe4d0;
      }
      
      private function _b759117ef24f0b4a3426e910(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc2_:ResponseFruitsCrush = param1 as ResponseFruitsCrush;
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_FINISHED,_22437dfd77f65dbf9dbc4281.EDT_FRUITS_CRUSH);
         this._27d2b071634ec6589a2fe4d0 = [];
      }
      
      private function init() : void
      {
         this._f6b6d975a6d0f7f3700be9b7 = _dfa25706e58a240c1e33e5c6.fscModel.extensionFruits;
         this._27d2b071634ec6589a2fe4d0 = [];
         _4575c3ec15103b43cbf2be04(ResponseFruitsCrush,this._b759117ef24f0b4a3426e910);
      }
      
      public function _9a7f06030243bbd3dd4938c5(param1:_273a0e8d279da2c95b553430) : void
      {
         var _loc2_:int = 0x30755E26 ^ -1416979467 ^ 0x16680285 ^ 0x5F1B8AB9;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1536405248 ^ -1710245037 ^ -488143165 ^ 0x0E08217F))
            {
               case 0:
                  if(this._27d2b071634ec6589a2fe4d0.length == (0x203DB2E8 ^ 0x590D02F6 ^ -1080386708 ^ -961926287))
                  {
                     _loc2_ = 0x5E54B718 ^ -135807416 ^ 0x5B9669B6 ^ 0x20A92D08;
                  }
                  else
                  {
                     _loc2_ = 0x07A85E01 ^ -455328672 ^ -897916743 ^ -75313355;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._27d2b071634ec6589a2fe4d0.push(param1);
                  _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_UPDATE,_22437dfd77f65dbf9dbc4281.EDT_FRUITS_CRUSH);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _98be45c3f269ae750423fa8d(param1:_273a0e8d279da2c95b553430) : void
      {
         var _loc2_:_273a0e8d279da2c95b553430 = this._55c01186e72b501898f991c8(param1);
         Debug.assertNotEqual(_loc2_,null,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劣剓剋副勚勎剮刑剭努劳勀刢助剌勀劃劥勃剦勛剃券劯剤励劐剹刾劲効剚剖剄勡列勨勘剆剼劯加剫劒勍刜勦剦剝刧劦刿前刳刅劊前刅劧制劻創","勚剑删劻刦刍剡剦刪功劍劑刢刔勬刭"));
         this._27d2b071634ec6589a2fe4d0.splice(this._27d2b071634ec6589a2fe4d0.indexOf(_loc2_),-592715375 ^ 0x7CAE9966 ^ -1083882651 ^ 0x1F603B93);
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_UPDATE,_22437dfd77f65dbf9dbc4281.EDT_FRUITS_CRUSH);
      }
      
      public function crushFruits() : void
      {
         var _loc1_:_273a0e8d279da2c95b553430 = null;
         if(this._27d2b071634ec6589a2fe4d0.length == (-1463448057 ^ 0x5C8A8AEC ^ -971896081 ^ 0x325D0E04))
         {
            this._4d7295bf7750a5d22ee74c06();
            return;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this._27d2b071634ec6589a2fe4d0)
         {
            _loc2_.push(_loc1_.id);
         }
         this._f6b6d975a6d0f7f3700be9b7.crushFruits(_loc2_);
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_STARTED,_22437dfd77f65dbf9dbc4281.EDT_FRUITS_CRUSH);
      }
      
      private function _55c01186e72b501898f991c8(param1:_273a0e8d279da2c95b553430) : _273a0e8d279da2c95b553430
      {
         var _loc2_:_273a0e8d279da2c95b553430 = null;
         var _loc3_:_273a0e8d279da2c95b553430 = null;
         for each(_loc2_ in this._27d2b071634ec6589a2fe4d0)
         {
            if(_loc2_.id == param1.id)
            {
               _loc3_ = _loc2_;
            }
         }
         return _loc3_;
      }
      
      public function _4d7295bf7750a5d22ee74c06() : void
      {
         this._27d2b071634ec6589a2fe4d0 = [];
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_CANCELED,_22437dfd77f65dbf9dbc4281.EDT_FRUITS_CRUSH);
      }
   }
}

