package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.wrappers.impl._9e3f9276aaf5cba0766361f2;
   import com.ax3.fishao.vars.app;
   import flash.events.MouseEvent;
   
   public class _96e026aaf1277a947309f9ff extends _f545170d6caa199cbee0525f
   {
      
      private var _8a38ba8ace4bee596b13b924:String;
      
      public function _96e026aaf1277a947309f9ff()
      {
         super();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         okButton.handler = this._1b66444f65284f3091b64dc9;
         super._935ac2966ddad68dfc449202();
      }
      
      private function _1b66444f65284f3091b64dc9(param1:MouseEvent) : void
      {
         this.close();
      }
      
      public function _3d866f07adb02a6079215c17() : void
      {
         var _loc1_:Vector.<Object> = null;
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:uint = uint(-1359031051 ^ -245648303 ^ -1718596390 ^ -969593730);
         var _loc5_:_9e3f9276aaf5cba0766361f2 = null;
         var _loc6_:Array = new Array();
         prizesList.visible = false;
         var _loc7_:Object = JSON.parse(this._8a38ba8ace4bee596b13b924);
         var _loc8_:Object = null;
         for(_loc3_ in _loc7_)
         {
            if(_loc7_[_loc3_].type == _9e3f9276aaf5cba0766361f2.TYPE_ENERGY)
            {
               if(_loc8_ == null)
               {
                  _loc8_ = _loc7_[_loc3_];
                  _loc8_.type = _9e3f9276aaf5cba0766361f2.TYPE_ENERGY_PRIZE;
               }
               else
               {
                  _loc8_.quantity += _loc7_[_loc3_].quantity;
               }
            }
            else if(_loc7_[_loc3_].type == _9e3f9276aaf5cba0766361f2.TYPE_LEVEL_UP)
            {
               if(_loc8_ == null)
               {
                  _loc8_ = _loc7_[_loc3_];
                  _loc8_.type = _9e3f9276aaf5cba0766361f2.TYPE_LEVEL_UP_PRIZE;
               }
               else
               {
                  _loc8_.quantity += _loc7_[_loc3_].quantity;
               }
            }
            else
            {
               _loc6_.push(_loc7_[_loc3_]);
            }
         }
         if(_loc8_ != null)
         {
            _loc6_.push(_loc8_);
         }
         var _loc9_:int = int(_loc6_.length);
         if(_loc9_ > (-775242372 ^ 0x32A70863 ^ 0x0604792D ^ -446051278))
         {
            prizesList.visible = true;
            _loc4_ = uint(0x67D22C97 ^ 0x329F6D11 ^ -1228931058 ^ -477281912);
            while(_loc4_ < _loc9_)
            {
               _loc5_ = _9e3f9276aaf5cba0766361f2(prizesList.add(_loc6_[_loc4_]));
               _loc5_.elementData = _loc6_[_loc4_];
               _loc4_++;
            }
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this._3d866f07adb02a6079215c17();
      }
      
      override public function show() : void
      {
         app.fishboxLevelUpMediator.fishboxPrizeDialogShown = true;
         super.show();
      }
      
      override public function close() : void
      {
         super.close();
         app.fishboxLevelUpMediator.fishboxPrizeDialogShown = false;
      }
      
      public function setData(param1:String) : void
      {
         this._8a38ba8ace4bee596b13b924 = param1;
      }
   }
}

