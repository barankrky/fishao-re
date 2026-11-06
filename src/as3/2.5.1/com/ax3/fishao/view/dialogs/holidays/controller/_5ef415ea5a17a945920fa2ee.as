package com.ax3.fishao.view.dialogs.holidays.controller
{
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.holidays.model.base._4321d2f9e1f062249cff5e0c;
   import com.ax3.fishao.view.dialogs.holidays.views._51ba0158a860b043fa168db6;
   import flash.display.DisplayObjectContainer;
   
   public class _5ef415ea5a17a945920fa2ee extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _1596fd974f071e14da635c96:_4321d2f9e1f062249cff5e0c;
      
      private var _42eedd77555fb34024be93b5:_51ba0158a860b043fa168db6;
      
      public function _5ef415ea5a17a945920fa2ee(param1:_4321d2f9e1f062249cff5e0c, param2:DisplayObjectContainer)
      {
         this._1596fd974f071e14da635c96 = param1;
         this._42eedd77555fb34024be93b5 = new _51ba0158a860b043fa168db6(this,param2);
         super(this._42eedd77555fb34024be93b5);
         this.init();
      }
      
      public function get entity() : _4321d2f9e1f062249cff5e0c
      {
         return this._1596fd974f071e14da635c96;
      }
      
      private function init() : void
      {
         this._42eedd77555fb34024be93b5.source.x = this._1596fd974f071e14da635c96.position.x;
         this._42eedd77555fb34024be93b5.source.y = this._1596fd974f071e14da635c96.position.y;
      }
   }
}

