package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.wrappers.impl.AvailableItemWrapper;
   import com.ax3.fishao.vars.app;
   import flash.events.MouseEvent;
   
   public class FishboxPrizesSwfDialog extends FishboxPrizesSwfDialogAsset
   {
      
      private var _data:String;
      
      public function FishboxPrizesSwfDialog()
      {
         super();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         okButton.handler = this.onOkButtonClick;
         super.onAssetCreationComplete();
      }
      
      private function onOkButtonClick(param1:MouseEvent) : void
      {
         this.close();
      }
      
      public function updatePage() : void
      {
         var _loc1_:Vector.<Object> = null;
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:uint = 0;
         var _loc5_:AvailableItemWrapper = null;
         var _loc6_:Array = new Array();
         prizesList.visible = false;
         var _loc7_:Object = JSON.parse(this._data);
         var _loc8_:Object = null;
         for(_loc3_ in _loc7_)
         {
            if(_loc7_[_loc3_].type == AvailableItemWrapper.TYPE_ENERGY)
            {
               if(_loc8_ == null)
               {
                  _loc8_ = _loc7_[_loc3_];
                  _loc8_.type = AvailableItemWrapper.TYPE_ENERGY_PRIZE;
               }
               else
               {
                  _loc8_.quantity += _loc7_[_loc3_].quantity;
               }
            }
            else if(_loc7_[_loc3_].type == AvailableItemWrapper.TYPE_LEVEL_UP)
            {
               if(_loc8_ == null)
               {
                  _loc8_ = _loc7_[_loc3_];
                  _loc8_.type = AvailableItemWrapper.TYPE_LEVEL_UP_PRIZE;
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
         if(_loc9_ > 0)
         {
            prizesList.visible = true;
            _loc4_ = 0;
            while(_loc4_ < _loc9_)
            {
               _loc5_ = AvailableItemWrapper(prizesList.add(_loc6_[_loc4_]));
               _loc5_.elementData = _loc6_[_loc4_];
               _loc4_++;
            }
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.updatePage();
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
         this._data = param1;
      }
   }
}

