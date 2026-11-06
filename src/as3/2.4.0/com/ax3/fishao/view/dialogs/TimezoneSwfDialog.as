package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.display.wrappers.impl.TimezoneListItemWrapper;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import protocol.sr.GetDataResp;
   
   public class TimezoneSwfDialog extends TimezoneSwfDialogAsset
   {
      
      public var onApply:Function;
      
      private var _currentTimezoneId:String;
      
      private var _updateTimeoutId:int;
      
      public function TimezoneSwfDialog()
      {
         super();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         var _loc1_:TimezoneListItemWrapper = null;
         var _loc2_:int = 0;
         title.text = I18n.getUpper("dialog_timezone_title");
         applyButton.label = I18n.getUpper("applyButton");
         description.text = "";
         closeButton.handler = this.onCloseClick;
         applyButton.handler = this.onApplyClick;
         var _loc3_:SwfFactoryWrapper = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,TimezoneListItemWrapper);
         _loc3_.process(continentsList.itemTemplate);
         continentsList.gap = 5;
         continentsList.itemFactory = _loc3_;
         placesList.itemFactory = _loc3_;
         var _loc4_:Array = app.timezones.getListFor();
         _loc2_ = 0;
         while(_loc2_ < _loc4_.length)
         {
            _loc1_ = TimezoneListItemWrapper(continentsList.add(_loc4_[_loc2_]));
            _loc1_.addEventListener(MouseEvent.CLICK,this.onContinentClick);
            _loc2_++;
         }
         applyButton.disable();
         placesList.updateData();
         placesList.updateScroll();
         super.onAssetCreationComplete();
      }
      
      private function onContinentClick(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Vector.<DisplayObject> = continentsList.elements;
         for(_loc2_ in _loc4_)
         {
            TimezoneListItemWrapper(_loc4_[_loc2_]).unselect();
         }
         TimezoneListItemWrapper(param1.currentTarget).select();
         _loc3_ = String(TimezoneListItemWrapper(param1.currentTarget).data).replace(/ /g,"_");
         description.text = _loc3_;
         this.fillPlacesFor(_loc3_);
         clearTimeout(this._updateTimeoutId);
         applyButton.disable();
      }
      
      private function fillPlacesFor(param1:String, param2:String = null) : void
      {
         var _loc3_:TimezoneListItemWrapper = null;
         var _loc4_:int = 0;
         placesList.removeAll();
         var _loc5_:Array = app.timezones.getListFor(param1);
         _loc4_ = 0;
         while(_loc4_ < _loc5_.length)
         {
            _loc3_ = TimezoneListItemWrapper(placesList.add(_loc5_[_loc4_]));
            _loc3_.addEventListener(MouseEvent.CLICK,this.onPlaceClick);
            if(param2 != null && param2 == _loc3_.data)
            {
               _loc3_.select();
            }
            _loc4_++;
         }
      }
      
      private function onPlaceClick(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         clearTimeout(this._updateTimeoutId);
         var _loc6_:Vector.<DisplayObject> = placesList.elements;
         for(_loc2_ in _loc6_)
         {
            TimezoneListItemWrapper(_loc6_[_loc2_]).unselect();
         }
         TimezoneListItemWrapper(param1.currentTarget).select();
         _loc3_ = String(TimezoneListItemWrapper(param1.currentTarget).data);
         _loc6_ = placesList.elements;
         _loc4_ = "";
         _loc6_ = continentsList.elements;
         for(_loc2_ in _loc6_)
         {
            if(TimezoneListItemWrapper(_loc6_[_loc2_]).isSelected)
            {
               _loc4_ = String(TimezoneListItemWrapper(_loc6_[_loc2_]).data);
               break;
            }
         }
         _loc4_ = _loc4_.replace(/ /g,"_");
         _loc3_ = _loc3_.replace(/ /g,"_");
         _loc5_ = app.timezones.getUTC(_loc4_,_loc3_);
         description.text = (_loc5_ != null ? "(UTC " + _loc5_ + ") " : "") + _loc4_ + "/" + _loc3_;
         this._currentTimezoneId = _loc4_ + "/" + _loc3_;
         applyButton.enable();
         this.requestCurrentTime();
      }
      
      private function updateCurrentTime(param1:GetDataResp) : void
      {
         currentTime.text = String(param1.data.getTimeForTimeZone);
         this._updateTimeoutId = setTimeout(this.requestCurrentTime,10000);
      }
      
      private function requestCurrentTime() : void
      {
         clearTimeout(this._updateTimeoutId);
         FishaoFscModelManager.locationExtension.getCurrentTime(this._currentTimezoneId,this.updateCurrentTime);
      }
      
      private function onCloseClick(param1:MouseEvent) : void
      {
         clearTimeout(this._updateTimeoutId);
         close();
      }
      
      private function onApplyClick(param1:MouseEvent) : void
      {
         if(this.onApply != null)
         {
            this.onApply.call(this,this._currentTimezoneId);
         }
         this.onCloseClick(param1);
      }
      
      public function setCurrentZone(param1:String) : void
      {
         var _loc2_:String = null;
         if(description == null)
         {
            setTimeout(this.setCurrentZone,200,param1);
            return;
         }
         description.text = param1;
         var _loc3_:Array = param1.split("/");
         var _loc4_:Vector.<DisplayObject> = continentsList.elements;
         for(_loc2_ in _loc4_)
         {
            if(TimezoneListItemWrapper(_loc4_[_loc2_]).data != _loc3_[0])
            {
               TimezoneListItemWrapper(_loc4_[_loc2_]).unselect();
            }
            else
            {
               TimezoneListItemWrapper(_loc4_[_loc2_]).select();
            }
         }
         this.fillPlacesFor(_loc3_[0],_loc3_.length > 1 ? _loc3_[1] : null);
      }
   }
}

