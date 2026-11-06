package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.wrappers.impl._9e3f9276aaf5cba0766361f2;
   import com.ax3.fishao.view.wrappers.impl._89027603939c39853027fd04;
   import flash.events.MouseEvent;
   
   public class _d351f4e064d7aab830940b30 extends _4f9849bac89b44cdebc6e7b7
   {
      
      private var _d7d69625294ddd6635d20070:Object;
      
      private var _6e0b5bde2fdbef134d941be9:int;
      
      public function _d351f4e064d7aab830940b30()
      {
         super();
         _canClosedByEsc = false;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         okButton.handler = this._b2511fa4c28ba3f7f68041ad;
         labelShareProgress.visible = false;
         checkShareProgress.visible = false;
         checkShareProgress.state = _89027603939c39853027fd04.UNSELECTED;
         super._935ac2966ddad68dfc449202();
      }
      
      private function _b2511fa4c28ba3f7f68041ad(param1:MouseEvent) : void
      {
         close();
      }
      
      public function _3d866f07adb02a6079215c17() : void
      {
         var _loc1_:Vector.<Object> = null;
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:uint = uint(0x7549C3BF ^ -1108006243 ^ 0x0699BC80 ^ -836414046);
         var _loc5_:_9e3f9276aaf5cba0766361f2 = null;
         var _loc6_:Array = new Array();
         prizesList.visible = false;
         if(this._d7d69625294ddd6635d20070 == null && this._d7d69625294ddd6635d20070.list == null)
         {
            return;
         }
         prizeIcon.gotoAndStop(this._6e0b5bde2fdbef134d941be9 + (0x731E9AD1 ^ -250042721 ^ 0x6D7DF14D ^ -277099262));
         var _loc7_:Object = JSON.parse(this._d7d69625294ddd6635d20070.list);
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
         if(_loc9_ > (0x35782614 ^ -1662917062 ^ 0x34D6F445 ^ -1655753621))
         {
            prizesList.visible = true;
            _loc4_ = uint(-1696814756 ^ -673867240 ^ 0x5EC58893 ^ 0x13CCBBD7);
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
      
      public function setData(param1:Object) : void
      {
         this._d7d69625294ddd6635d20070 = param1;
      }
      
      public function _8e673db76dea2e6759d533e6(param1:int) : void
      {
         this._6e0b5bde2fdbef134d941be9 = param1;
      }
   }
}

