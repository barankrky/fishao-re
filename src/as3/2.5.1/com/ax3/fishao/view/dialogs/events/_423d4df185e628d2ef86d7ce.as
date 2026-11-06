package com.ax3.fishao.view.dialogs.events
{
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.events.controllers._80d547984c95294a5d560071;
   
   public class _423d4df185e628d2ef86d7ce extends _f4554265a67737334df8ecda
   {
      
      private var _630a75a649d9fcd6fdf125f2:_80d547984c95294a5d560071;
      
      public function _423d4df185e628d2ef86d7ce()
      {
         super();
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_EVENTS_UPCOMING;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this._630a75a649d9fcd6fdf125f2 = new _80d547984c95294a5d560071(_asset);
         super._935ac2966ddad68dfc449202();
      }
   }
}

