package com.ax3.fishao.view.dialogs.club_fish
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.view.dialogs.base._009582d19d1c5695c49f2ed8;
   
   public class _29f5c33033541e3bf59fe40c extends _009582d19d1c5695c49f2ed8
   {
      
      private var _1d833c5f34fedf7c6022464f:_3f734be840cbb058ecba9ba4;
      
      private var _71411e2d1d1f50050775e5d2:Boolean;
      
      public function _29f5c33033541e3bf59fe40c()
      {
         super(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႂჍၖႉတၥညဧႮჿჸჺဂდჸၨხၷჶდႥႲၠჀႏဋၳჳၷာი္ჂဢဎქၖဇလႿႶკႹჟဂညၹ჊","ွგრဧၤჳჲတყၥအႯပჺპႚ"));
      }
      
      public function set isSalt(param1:Boolean) : void
      {
         this._71411e2d1d1f50050775e5d2 = param1;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this._1d833c5f34fedf7c6022464f = new _3f734be840cbb058ecba9ba4(this._asset,this._71411e2d1d1f50050775e5d2);
      }
      
      override public function destroy() : void
      {
         this._1d833c5f34fedf7c6022464f._90eac9ca552fe54c2ca0299f();
         this._1d833c5f34fedf7c6022464f = null;
         super.destroy();
      }
   }
}

