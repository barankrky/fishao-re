package com.ax3.fishao.view.dialogs.club.pages.base
{
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.view.dialogs.base._009582d19d1c5695c49f2ed8;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._f6788106409c49494058e542;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import com.ax3.fishao.view.dialogs.club.model._518280cac6f3ae016ad4f350;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class _a86dadbf5fed875ec9c2c515 extends _f6788106409c49494058e542
   {
      
      protected var _managerClubs:_518280cac6f3ae016ad4f350;
      
      protected var _entity:_8a55e6919385386ebc54f870;
      
      protected var _type:String;
      
      protected var _canOpenDialogInside:Boolean;
      
      protected var _owner:_009582d19d1c5695c49f2ed8;
      
      public function _a86dadbf5fed875ec9c2c515(param1:_ebeac595a62fba6d6fcea1c2)
      {
         super(param1);
         this.init();
      }
      
      public function set entity(param1:_8a55e6919385386ebc54f870) : void
      {
         this._entity = param1;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function set owner(param1:_009582d19d1c5695c49f2ed8) : void
      {
         this._owner = param1;
      }
      
      public function set canOpenDialogInside(param1:Boolean) : void
      {
         this._canOpenDialogInside = param1;
      }
      
      protected function _3d45492cb1b715a713c0c8d0(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         _fa8d5efc34d8920757369351._ecb681b2bff0915b270b914b(param1);
      }
      
      public function _1ca02568f97f6901b3c3003f() : void
      {
      }
      
      private function init() : void
      {
         this._managerClubs = GameSwf.instance.managerClubs;
      }
      
      public function _bd82e272777ed3124374ba32() : void
      {
         this._managerClubs.loadDataForPage(this._type,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._3d45492cb1b715a713c0c8d0));
      }
   }
}

