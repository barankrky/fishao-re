package com.ax3.fishao.display.panels.inventory.fishingLine
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.panels.inventory.base.SourceButtonInventory;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   
   public class SourceButtonFishingLine extends SourceButtonInventory
   {
      
      private var _lineLength:Number;
      
      private var _lineLevel:uint;
      
      public function SourceButtonFishingLine()
      {
         super();
      }
      
      public function set lineLength(param1:Number) : void
      {
         this._lineLength = param1;
      }
      
      public function set lineLevel(param1:uint) : void
      {
         this._lineLevel = param1;
      }
      
      override public function set tooltipText(param1:String) : void
      {
         Debug.assert(false,"Please use lineLength instead tooltipText");
      }
      
      override public function getTooltipConfig() : Object
      {
         var _loc1_:Object = null;
         var _loc2_:String = I18n.get(EStringType.EST_UI_BUTTON_FISHING_LINE_TOOLTIP);
         _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_LEVEL,this._lineLevel);
         _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_LENGTH,I18n.formatDistance(this._lineLength));
         return {"text":_loc2_};
      }
   }
}

