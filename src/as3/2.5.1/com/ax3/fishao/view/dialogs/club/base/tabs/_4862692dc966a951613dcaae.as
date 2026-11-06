package com.ax3.fishao.view.dialogs.club.base.tabs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.geom.Point;
   import protocol.api.clubs.page.EClubPageType;
   
   public class _4862692dc966a951613dcaae extends gViewTabClubs implements IToolTipTarget
   {
      
      private var _6b354315142db74317072c75:Object;
      
      public function _4862692dc966a951613dcaae()
      {
         super();
         this.init();
      }
      
      public static function _48c239eac6ad43b77369cc02(param1:String) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EClubPageType.ECPT_INFO:
               §§push(0x2EB0BAE8 ^ -2091590588 ^ 0x2A7A7583 ^ -2019683537);
               break;
            case EClubPageType.ECPT_CREATE:
               §§push(0x6D50EDCC ^ 0x2D1DB933 ^ 0x4D430BEA ^ 0x0D0E5F14);
               break;
            case EClubPageType.ECPT_RECOMMENDED:
               §§push(0x36A34859 ^ 0x27397661 ^ -1477671427 ^ -1233732665);
               break;
            case EClubPageType.ECPT_RANKINGS:
               §§push(-132934116 ^ -452463579 ^ -1943876595 ^ -1858687433);
               break;
            case EClubPageType.ECPT_GOALS:
               §§push(0x315F8E64 ^ -951325233 ^ -212323386 ^ 0x054C5069);
               break;
            case EClubPageType.ECPT_LOGS:
               §§push(0x7285FD03 ^ -1436210568 ^ 0x3693CEC3 ^ -294446659);
               break;
            case EClubPageType.ECPT_MANAGEMENT:
               §§push(0x35844DCE ^ 0x64BBAB8E ^ 0x5F8AC2EE ^ 0x0EB524A8);
               break;
            case EClubPageType.ECPT_TOURNAMENT:
               §§push(0x145E62DD ^ -658861196 ^ 0x2F64B5D2 ^ -478133124);
               break;
            default:
               §§push(-290765740 ^ -1877386528 ^ -1518116168 ^ -617513980);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TOOLTIP_INFO;
               break;
            case 1:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TOOLTIP_CREATE;
               break;
            case 2:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TOOLTIP_RECOMMENDED;
               break;
            case 3:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TOOLTIP_RANKINGS;
               break;
            case 4:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TOOLTIP_GOALS;
               break;
            case 5:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TOOLTIP_LOGS;
               break;
            case 6:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TOOLTIP_MANAGEMENT;
               break;
            case 7:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TOOLTIP_TOURNAMENT;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
      
      public function set pageType(param1:String) : void
      {
         this._6b354315142db74317072c75 = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掚挩揙捁挭揌掎揕振挚掺捌掴捼掊捫","捹掜掅捾换捉捴捝捝揬挤排捾捜损掮")):_c2ad9d37d7be0097d6d2e977.get(_48c239eac6ad43b77369cc02(param1))};
      }
      
      private function init() : void
      {
         this._6b354315142db74317072c75 = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掸捳挴挷捀挑揘捷捇揉揶揜捛挥揑捥","掩捭挆挶挰捒换捶挭挗掩掫掛捓捼掿")):""};
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
         return this._6b354315142db74317072c75;
      }
   }
}

