package com.ax3.fishao.view.dialogs.club.base.tabs
{
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.geom.Point;
   import protocol.api.clubs.page.EClubPageType;
   
   public class SourceButtonTabClubs extends gViewTabClubs implements IToolTipTarget
   {
      
      private var _tooltipConfig:Object;
      
      public function SourceButtonTabClubs()
      {
         super();
         this.init();
      }
      
      public static function getTooltipFor(param1:String) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EClubPageType.ECPT_INFO:
               _loc2_ = EStringType.EST_CLUB_TOOLTIP_INFO;
               break;
            case EClubPageType.ECPT_CREATE:
               _loc2_ = EStringType.EST_CLUB_TOOLTIP_CREATE;
               break;
            case EClubPageType.ECPT_RECOMMENDED:
               _loc2_ = EStringType.EST_CLUB_TOOLTIP_RECOMMENDED;
               break;
            case EClubPageType.ECPT_RANKINGS:
               _loc2_ = EStringType.EST_CLUB_TOOLTIP_RANKINGS;
               break;
            case EClubPageType.ECPT_GOALS:
               _loc2_ = EStringType.EST_CLUB_TOOLTIP_GOALS;
               break;
            case EClubPageType.ECPT_LOGS:
               _loc2_ = EStringType.EST_CLUB_TOOLTIP_LOGS;
               break;
            case EClubPageType.ECPT_MANAGEMENT:
               _loc2_ = EStringType.EST_CLUB_TOOLTIP_MANAGEMENT;
               break;
            case EClubPageType.ECPT_TOURNAMENT:
               _loc2_ = EStringType.EST_CLUB_TOOLTIP_TOURNAMENT;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
      
      public function set pageType(param1:String) : void
      {
         this._tooltipConfig = {"text":I18n.get(getTooltipFor(param1))};
      }
      
      private function init() : void
      {
         this._tooltipConfig = {"text":""};
         this.mouseChildren = false;
         this.mouseEnabled = true;
      }
      
      public function getTooltipType() : TooltipType
      {
         return TooltipType.TEXT_TOOLTIP;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         return this._tooltipConfig;
      }
   }
}

