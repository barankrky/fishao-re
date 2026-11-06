package com.ax3.fishao.view.dialogs.club.base.tabs
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import protocol.api.clubs.page.EClubPageType;
   
   public class _c3f471652c61d67c712baeeb extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _7da4cb8a49dfd8e336312917:_ab72f7798754bf7a51d8acb3;
      
      public function _c3f471652c61d67c712baeeb(param1:_e2bbbb1ef110bb0aa28b913f, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public static function _9d37a9b9f3e822c68921f54c(param1:String) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EClubPageType.ECPT_CREATE:
               §§push(-1477748233 ^ 0x0E1705CE ^ 0x466F442A ^ -275572717);
               break;
            case EClubPageType.ECPT_RECOMMENDED:
               §§push(0x63F2380A ^ 0x419C1765 ^ -2084927355 ^ -1579898901);
               break;
            case EClubPageType.ECPT_RANKINGS:
               §§push(-2027432513 ^ -1416019128 ^ 0x24621558 ^ 0x08DC83AD);
               break;
            case EClubPageType.ECPT_GOALS:
               §§push(0x5D1286B5 ^ 0x4B61EB34 ^ -255897862 ^ -422829192);
               break;
            case EClubPageType.ECPT_LOGS:
               §§push(0x173C8C5F ^ -425072417 ^ -587665038 ^ 0x2D6D95F6);
               break;
            case EClubPageType.ECPT_MANAGEMENT:
               §§push(0x3D0D173B ^ 0x5E28CE20 ^ -962806581 ^ -1514576427);
               break;
            case EClubPageType.ECPT_TOURNAMENT:
               §§push(-688766922 ^ 0x4F7BB057 ^ -1273295634 ^ 0x2D92FC89);
               break;
            default:
               §§push(0x7025334E ^ 0x3B1BCEF4 ^ 0x06C4CF8C ^ 0x4DFA3231);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TITLE_CREATE;
               break;
            case 1:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TITLE_RECOMMENDED;
               break;
            case 2:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TITLE_RANKINGS;
               break;
            case 3:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TITLE_GOALS;
               break;
            case 4:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TITLE_LOGS;
               break;
            case 5:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TITLE_MANAGEMENT;
               break;
            case 6:
               _loc2_ = _85b2141a2303f6545d411d7a.EST_CLUB_TITLE_TOURNAMENT;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
      
      public function set pageType(param1:String) : void
      {
         var _loc2_:String = _9d37a9b9f3e822c68921f54c(param1);
         this._7da4cb8a49dfd8e336312917.text = _c2ad9d37d7be0097d6d2e977.get(_loc2_);
      }
      
      public function set title(param1:String) : void
      {
         this._7da4cb8a49dfd8e336312917.text = param1;
      }
      
      public function set tabsViews(param1:Array) : void
      {
         var _loc2_:_ebeac595a62fba6d6fcea1c2 = null;
         var _loc3_:int = -1949620239 ^ -76520202 ^ 0x08E28753 ^ 0x7859C412;
         var _loc4_:DisplayObjectContainer = this.source as DisplayObjectContainer;
         for each(_loc2_ in param1)
         {
            _loc4_.addChild(_loc2_.source);
            _loc2_.source.y = _loc3_;
            _loc3_ += _loc2_.source.height + (0x267AD95B ^ 0x53A9EBEA ^ 0x4441DCC6 ^ 0x3192EE72);
         }
      }
      
      private function init() : void
      {
         this._7da4cb8a49dfd8e336312917 = new _ab72f7798754bf7a51d8acb3(controller,Debug.assertProperty(this.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("წჍထၩჇჹၰႢဉ႑჉ჅတႨკႣႿႠ","ီးႌჯၣႬႚထႼၫဝၟဓ၎ၿႄ")));
      }
   }
}

