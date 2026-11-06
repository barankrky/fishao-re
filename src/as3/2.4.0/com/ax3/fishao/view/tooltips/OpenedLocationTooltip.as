package com.ax3.fishao.view.tooltips
{
   import com.ax3.fishao.model.interfaces.ILocationTooltip;
   import com.ax3.fishao.utils.I18n;
   
   public class OpenedLocationTooltip extends OpenedLocationTooltipAsset implements ILocationTooltip
   {
      
      public function OpenedLocationTooltip()
      {
         super();
         mouseEnabled = false;
         mouseChildren = false;
         _title.cacheAsBitmap = true;
         _playersCount.cacheAsBitmap = true;
         _asset.cacheAsBitmap = true;
      }
      
      public function set title(param1:String) : void
      {
         _title.text = param1.toUpperCase();
         if(_playersCount.width < _title.width - 15)
         {
            _playersCount.width = _title.width - 15;
            _playersCount.x = -_playersCount.width * 0.5;
         }
      }
      
      public function set description(param1:String) : void
      {
         _playersCount.text = I18n.template("tooltip_players_count",{"count":param1});
      }
   }
}

