package com.ax3.fishao.view.dialogs.club_tournament_history.item
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   
   public class _1f18c4a41dd19869776da261 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _e0ded16e9262122186cb101e:gViewClubsItemTournamentHistory = new gViewClubsItemTournamentHistory();
      
      private var _ed97c10855973815544a110f:_73899a4de8f83c8d2c26f545;
      
      private var _6cb4bf39599ae5c215edde59:_73899a4de8f83c8d2c26f545;
      
      private var _152537b4db9abfda636f0443:_73899a4de8f83c8d2c26f545;
      
      public function _1f18c4a41dd19869776da261(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._e0ded16e9262122186cb101e);
         this.init();
      }
      
      public function set position(param1:int) : void
      {
         this._6cb4bf39599ae5c215edde59.text = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勜刑刌勅刖刌刑刮剴剱","刜刌剶剭前勖刋劷前劧勡剔勠剞刕劲") + param1.toString();
      }
      
      public function set reward(param1:int) : void
      {
         this._152537b4db9abfda636f0443.text = param1.toString();
      }
      
      public function set tournamentType(param1:String) : void
      {
         this._ed97c10855973815544a110f.text = _c2ad9d37d7be0097d6d2e977.get(param1);
      }
      
      private function init() : void
      {
         this._ed97c10855973815544a110f = new _73899a4de8f83c8d2c26f545(this._e0ded16e9262122186cb101e.labelTournamentType);
         this._6cb4bf39599ae5c215edde59 = new _73899a4de8f83c8d2c26f545(this._e0ded16e9262122186cb101e.labelPosition);
         this._152537b4db9abfda636f0443 = new _73899a4de8f83c8d2c26f545(this._e0ded16e9262122186cb101e.labelReward);
      }
   }
}

