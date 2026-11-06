package com.ax3.fishao.view.dialogs.club.pages.base
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base._009582d19d1c5695c49f2ed8;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import com.ax3.fishao.view.dialogs.club.pages.create._5f99a3a728a205a424eace0d;
   import com.ax3.fishao.view.dialogs.club.pages.goals._88ae430af03d2344051b380e;
   import com.ax3.fishao.view.dialogs.club.pages.info._af9365e175b1855c52c61ab0;
   import com.ax3.fishao.view.dialogs.club.pages.logs._e1b3f244d69775702364a1fc;
   import com.ax3.fishao.view.dialogs.club.pages.management._9272641b4204dc22c29f9eb4;
   import com.ax3.fishao.view.dialogs.club.pages.rankings._7787d4762ede09455f5db142;
   import com.ax3.fishao.view.dialogs.club.pages.recommended._d9c25250ef41670f6d803ce2;
   import com.ax3.fishao.view.dialogs.club.pages.tournament._308f65d1af1b2fa55fd15be8;
   import flash.display.DisplayObjectContainer;
   import protocol.api.clubs.page.EClubPageType;
   
   public class _ff531b0cb8c37891be30486f
   {
      
      public function _ff531b0cb8c37891be30486f()
      {
         super();
      }
      
      public static function _baf4509274732f5e4f248de1(param1:String, param2:_009582d19d1c5695c49f2ed8, param3:DisplayObjectContainer, param4:_8a55e6919385386ebc54f870, param5:String) : _a86dadbf5fed875ec9c2c515
      {
         var _loc6_:_a86dadbf5fed875ec9c2c515 = null;
         switch(param1)
         {
            case EClubPageType.ECPT_CREATE:
               §§push(0x6AADE026 ^ -1772187526 ^ -670911201 ^ 0x24F1C543);
               break;
            case EClubPageType.ECPT_GOALS:
               §§push(0x45647BC8 ^ -912265983 ^ 0x79BA2B2C ^ -180240924);
               break;
            case EClubPageType.ECPT_INFO:
               §§push(-957335878 ^ -595067212 ^ 0x2683DA0D ^ 0x3CF41201);
               break;
            case EClubPageType.ECPT_LOGS:
               §§push(-1073808937 ^ -1663769947 ^ 0x0C6BFC59 ^ 0x2F41E728);
               break;
            case EClubPageType.ECPT_MANAGEMENT:
               §§push(-1542725734 ^ -1920704102 ^ -465406920 ^ -842151364);
               break;
            case EClubPageType.ECPT_RANKINGS:
               §§push(0x3BA9BE88 ^ -1345240216 ^ 0x5EB684F5 ^ -892438256);
               break;
            case EClubPageType.ECPT_RECOMMENDED:
               §§push(0x32023ADB ^ -1386931807 ^ -1360619192 ^ 0x31B1BA34);
               break;
            case EClubPageType.ECPT_TOURNAMENT:
               §§push(-1248874779 ^ 0x0C37413C ^ 0x4D3FECEB ^ -192478411);
               break;
            default:
               §§push(0x569AA64A ^ 0x38FBAA15 ^ -1738894883 ^ -163865206);
         }
         switch(§§pop())
         {
            case 0:
               _loc6_ = new _5f99a3a728a205a424eace0d(param3);
               break;
            case 1:
               _loc6_ = new _88ae430af03d2344051b380e(param3);
               break;
            case 2:
               _loc6_ = new _af9365e175b1855c52c61ab0(param3);
               break;
            case 3:
               _loc6_ = new _e1b3f244d69775702364a1fc(param3);
               break;
            case 4:
               _loc6_ = new _9272641b4204dc22c29f9eb4(param3);
               break;
            case 5:
               _loc6_ = new _7787d4762ede09455f5db142(param3,param5);
               break;
            case 6:
               _loc6_ = new _d9c25250ef41670f6d803ce2(param3);
               break;
            case 7:
               _loc6_ = new _308f65d1af1b2fa55fd15be8(param3);
               break;
            default:
               Debug.assert(false);
         }
         _loc6_.entity = param4;
         _loc6_.type = param1;
         _loc6_.owner = param2;
         return _loc6_;
      }
   }
}

