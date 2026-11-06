package com.ax3.fishao.locations.club_area.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem._1c73633a6a4f4f6050258c2a;
   import flash.display.DisplayObjectContainer;
   
   public class _53a668138aad358ddf90ffdc extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _e1761b4d8ad07bb6fc6d0783:_73899a4de8f83c8d2c26f545;
      
      private var _666de008fd7606ac1c84f1c3:_1c73633a6a4f4f6050258c2a;
      
      public function _53a668138aad358ddf90ffdc(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set name(param1:String) : void
      {
         this._e1761b4d8ad07bb6fc6d0783.text = param1;
      }
      
      public function set emblemID(param1:int) : void
      {
         this._666de008fd7606ac1c84f1c3.emblemID = param1;
      }
      
      private function init() : void
      {
         this._666de008fd7606ac1c84f1c3 = new _1c73633a6a4f4f6050258c2a(controller,Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挥挂挫挚捝捫掛挏捫挅捸捭捂揉揘揃揆捤挋掘捵掮揞捭挈揹挭揍挫掻","掁挗挐援揄捑挈掂揽挂捥捹挊揌换捭")));
         this._e1761b4d8ad07bb6fc6d0783 = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掲挘挲挤揤揂揎挚掣挄捶掇措揰损揲揔捴","揤捶捯捆挫挲掇捃揔挊掓挷挶捤挳捴"),null);
      }
   }
}

