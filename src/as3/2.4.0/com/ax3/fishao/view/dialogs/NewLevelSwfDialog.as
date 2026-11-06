package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.wrappers.impl.AvailableItemWrapper;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.mediators.FishboxLevelUpMediator;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.CheckBoxState;
   import flash.events.MouseEvent;
   
   public class NewLevelSwfDialog extends NewLevelSwfDialogAsset
   {
      
      private var _data:Object;
      
      public function NewLevelSwfDialog()
      {
         super();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         okButton.handler = this.onOkButtonClick;
         shareButton.visible = false;
         okButton.x = bg.width / 2 - okButton.width / 2;
         labelShareProgress.visible = false;
         checkShareProgress.visible = false;
         checkShareProgress.state = CheckBoxState.UNSELECTED;
         super.onAssetCreationComplete();
      }
      
      private function onOkButtonClick(param1:MouseEvent) : void
      {
         if(app.user.oldLevel < 3 && app.user.level >= 3)
         {
            GameSwf.instance.showAvailableFishMarketDialog();
         }
         app.user.oldLevel = app.user.level;
         this.close();
      }
      
      public function updatePage() : void
      {
         var _loc1_:Vector.<Object> = null;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:uint = 0;
         var _loc9_:Array = null;
         var _loc10_:Object = null;
         var _loc11_:AvailableItemWrapper = null;
         var _loc12_:Array = [];
         levelTextField.text = this._data.level;
         shareButton.enable();
         availableList.visible = false;
         nowAvailableLabel.visible = false;
         if(this._data["newLocations"] != null)
         {
            _loc7_ = this._data.newLocations.split(",");
            _loc8_ = 0;
            while(_loc8_ < _loc7_.length)
            {
               _loc2_ = {};
               _loc2_.type = AvailableItemWrapper.TYPE_LOCATION;
               _loc2_.id = _loc7_[_loc8_];
               _loc12_.push(_loc2_);
               _loc8_++;
            }
         }
         if(this._data["newClothes"] != null)
         {
            _loc9_ = String(this._data.newClothes).split(",");
            _loc8_ = 0;
            while(_loc8_ < _loc9_.length)
            {
               _loc2_ = {};
               _loc2_.type = ResourceType.CLOTHE.id;
               _loc2_.id = String(_loc9_[_loc8_]).replace(" ","");
               _loc12_.push(_loc2_);
               _loc8_++;
            }
         }
         _loc1_ = app.looksDict.getAll();
         for each(_loc3_ in _loc1_)
         {
            _loc10_ = {};
            if(_loc3_.req != null && _loc3_.req != "")
            {
               _loc10_ = JSON.parse(String(_loc3_.req));
               if(_loc10_.player_level_req != null)
               {
                  if(parseInt(_loc10_.player_level_req) == this._data.level)
                  {
                     _loc2_ = {};
                     _loc2_.type = ResourceType.CLOTHE.id;
                     _loc2_.id = _loc3_.id;
                     _loc12_.push(_loc2_);
                  }
               }
            }
         }
         _loc1_ = app.rodsDict.getAll();
         for each(_loc4_ in _loc1_)
         {
            if(parseInt(_loc4_.player_level_req) == this._data.level)
            {
               _loc2_ = new Object();
               _loc2_.type = ResourceType.ROD.id;
               _loc2_.id = _loc4_.id;
               _loc12_.push(_loc2_);
            }
         }
         _loc1_ = app.baitsDict.getAll();
         for each(_loc5_ in _loc1_)
         {
            if(parseInt(_loc5_.player_level_req) == this._data.level)
            {
               _loc2_ = new Object();
               _loc2_.type = ResourceType.BAIT.id;
               _loc2_.id = _loc5_.id;
               _loc12_.push(_loc2_);
            }
         }
         _loc1_ = app.resourcesDict.getAll();
         for each(_loc6_ in _loc1_)
         {
            _loc10_ = new Object();
            if(_loc6_.req != null && _loc6_.req != "")
            {
               _loc10_ = JSON.parse(String(_loc6_.req));
               if(_loc10_.player_level_req != null)
               {
                  if(parseInt(_loc10_.player_level_req) == this._data.level)
                  {
                     _loc2_ = new Object();
                     _loc2_.type = _loc6_.type_id;
                     _loc2_.id = _loc6_.id;
                     _loc12_.push(_loc2_);
                  }
               }
            }
         }
         if(this._data[AvailableItemWrapper.TYPE_ENERGY] != null)
         {
            _loc2_ = new Object();
            _loc2_.type = AvailableItemWrapper.TYPE_ENERGY;
            _loc12_.push(_loc2_);
         }
         if(this._data[AvailableItemWrapper.TYPE_TRADING] != null)
         {
            _loc2_ = new Object();
            _loc2_.type = AvailableItemWrapper.TYPE_TRADING;
            _loc12_.push(_loc2_);
         }
         var _loc13_:int = int(_loc12_.length);
         if(_loc13_ > 0)
         {
            availableList.visible = true;
            nowAvailableLabel.visible = true;
            _loc8_ = 0;
            while(_loc8_ < _loc13_)
            {
               _loc11_ = AvailableItemWrapper(availableList.add(_loc12_[_loc8_]));
               _loc11_.elementData = _loc12_[_loc8_];
               _loc8_++;
            }
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.updatePage();
      }
      
      public function setData(param1:Object) : void
      {
         this._data = param1;
      }
      
      override public function onShowComplete() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_066_MUS_Tournament_win);
      }
      
      override public function show() : void
      {
         if(!app.fishboxLevelUpMediator.fishboxPrizeDialogShown)
         {
            super.show();
         }
         else if(!app.fishboxLevelUpMediator.hasEventListener(FishboxLevelUpMediator.FISHBOX_DIALOG_CLOSED))
         {
            app.fishboxLevelUpMediator.addEventListener(FishboxLevelUpMediator.FISHBOX_DIALOG_CLOSED,this.onFishboxPrizeDialogClosed);
         }
      }
      
      private function onFishboxPrizeDialogClosed(param1:* = null) : void
      {
         app.fishboxLevelUpMediator.removeEventListener(FishboxLevelUpMediator.FISHBOX_DIALOG_CLOSED,this.onFishboxPrizeDialogClosed);
         this.show();
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}

