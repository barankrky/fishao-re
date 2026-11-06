package com.ax3.fishao.view.panels.user_popup
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem._1c73633a6a4f4f6050258c2a;
   
   public class _df096bac6ba6a98f642d7173 extends _39b7ed028860dccb673b513c
   {
      
      private var _a239a50c4ab08aaaf1c53d00:gViewUserInfoTooltipInClub = new gViewUserInfoTooltipInClub();
      
      private var _cb32794417e071a7d079576d:_1c73633a6a4f4f6050258c2a;
      
      public function _df096bac6ba6a98f642d7173(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._a239a50c4ab08aaaf1c53d00);
         this.init();
      }
      
      public function set emblemID(param1:int) : void
      {
         this._cb32794417e071a7d079576d.emblemID = param1;
      }
      
      public function set clubName(param1:String) : void
      {
         this._cb32794417e071a7d079576d._09d32aad035d4c6f4097c78b();
         this._cb32794417e071a7d079576d.tooltipText = param1;
      }
      
      override public function get viewEmblem() : _04cce4e240ff9bea66c1b7f7
      {
         return this._cb32794417e071a7d079576d;
      }
      
      private function init() : void
      {
         this._cb32794417e071a7d079576d = new _1c73633a6a4f4f6050258c2a(controller,this._a239a50c4ab08aaaf1c53d00.viewEmblem);
         this._cb32794417e071a7d079576d._fc17178734ae7cc816dbcc2f(true);
      }
   }
}

