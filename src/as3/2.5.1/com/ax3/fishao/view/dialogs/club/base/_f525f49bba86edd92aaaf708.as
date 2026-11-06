package com.ax3.fishao.view.dialogs.club.base
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base._009582d19d1c5695c49f2ed8;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.club.base.tabs._b2c93fdfd042497d8959b2e8;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import com.ax3.fishao.view.dialogs.club.pages.base._a86dadbf5fed875ec9c2c515;
   import com.ax3.fishao.view.dialogs.club.pages.base._ff531b0cb8c37891be30486f;
   import flash.display.DisplayObjectContainer;
   import flash.utils.Dictionary;
   import protocol.api.clubs.page.EClubPageType;
   
   public class _f525f49bba86edd92aaaf708 extends _009582d19d1c5695c49f2ed8
   {
      
      protected var _entity:_8a55e6919385386ebc54f870;
      
      protected var _controllerTabs:_b2c93fdfd042497d8959b2e8;
      
      private var _7d6dc5a3c7fa80927b2b4421:Dictionary;
      
      private var _5176051b920cae7a18be6f22:Boolean;
      
      private var _f233b22188d7e3e47688c1bc:String;
      
      public function _f525f49bba86edd92aaaf708(param1:String)
      {
         super(param1);
         this._7d6dc5a3c7fa80927b2b4421 = new Dictionary(true);
      }
      
      public function get entity() : _8a55e6919385386ebc54f870
      {
         return this._entity;
      }
      
      public function set entity(param1:_8a55e6919385386ebc54f870) : void
      {
         this._entity = param1;
      }
      
      protected function get tabsTypes() : Array
      {
         return [];
      }
      
      public function set canOpenDialogInside(param1:Boolean) : void
      {
         this._5176051b920cae7a18be6f22 = param1;
      }
      
      public function set openOnPage(param1:String) : void
      {
         this._f233b22188d7e3e47688c1bc = param1;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this._8fad741ae759c6c85dd249d0();
         super._935ac2966ddad68dfc449202();
      }
      
      protected function _8fad741ae759c6c85dd249d0() : void
      {
         var _loc1_:String = null;
         var _loc2_:DisplayObjectContainer = null;
         var _loc3_:_a86dadbf5fed875ec9c2c515 = null;
         var _loc4_:DisplayObjectContainer = Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剘刚剎勹勾加勱刡刈别加勼剘刁势剞勇劳勓動刔勋劻判","勤刻刲勰劇刵别劑勼劖動務刀別剺劎"));
         var _loc5_:Array = this.tabsTypes;
         this._controllerTabs = new _b2c93fdfd042497d8959b2e8(_loc5_,_loc4_,this._entity);
         for each(_loc1_ in EClubPageType.all)
         {
            _loc2_ = Debug.assertProperty(_asset,_loc1_);
            if(_loc5_.indexOf(_loc1_) == (0x11CCCF48 ^ -1125323706 ^ -1534655854 ^ -161948061))
            {
               _loc2_.visible = false;
            }
            else
            {
               _loc3_ = _ff531b0cb8c37891be30486f._baf4509274732f5e4f248de1(_loc1_,this,_loc2_,this._entity,dialogAssetURL);
               _loc3_.canOpenDialogInside = this._5176051b920cae7a18be6f22;
               this._7d6dc5a3c7fa80927b2b4421[_loc1_] = _loc3_;
            }
         }
         this._controllerTabs.pagesMap = this._7d6dc5a3c7fa80927b2b4421;
         this._controllerTabs._e766e5f7d19f596664697329(this._f233b22188d7e3e47688c1bc);
      }
      
      override public function close() : void
      {
         var _loc1_:String = null;
         var _loc2_:_988093efdfa36e13bfd6c6cf = null;
         this._controllerTabs._90eac9ca552fe54c2ca0299f();
         this._controllerTabs = null;
         for(_loc1_ in this._7d6dc5a3c7fa80927b2b4421)
         {
            _loc2_ = this._7d6dc5a3c7fa80927b2b4421[_loc1_];
            _loc2_._90eac9ca552fe54c2ca0299f();
         }
         this._7d6dc5a3c7fa80927b2b4421 = null;
         super.close();
      }
   }
}

