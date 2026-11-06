package com.ax3.fishao.view.tooltips
{
   import com.ax3.fishao.model.interfaces.ILocationTooltip;
   import com.ax3.fishao.view.dialogs.ConfirmFrameButtonWrapper;
   
   public class LockedLocationTooltip extends LockedLocationTooltipAsset implements ILocationTooltip
   {
      
      public function LockedLocationTooltip()
      {
         super();
         mouseEnabled = false;
         mouseChildren = false;
         _title.cacheAsBitmap = true;
         _reasone.cacheAsBitmap = true;
         _asset.cacheAsBitmap = true;
      }
      
      public function set title(param1:String) : void
      {
         _title.text = param1.toUpperCase();
         if(_reasone.width < _title.width)
         {
            _reasone.width = _title.width;
            _reasone.x = -_reasone.width * 0.5;
            _reasoneBg.width = _reasone.width + 20;
            _reasoneBg.x = -_reasoneBg.width * 0.5;
         }
      }
      
      public function set description(param1:String) : void
      {
         _reasone.text = param1;
         _reasone.height = _reasone.textHeight + 10;
         _reasoneBg.height = _reasone.height + 20;
      }
      
      public function get buttonBuy() : ConfirmFrameButtonWrapper
      {
         return _buttonBuy;
      }
   }
}

