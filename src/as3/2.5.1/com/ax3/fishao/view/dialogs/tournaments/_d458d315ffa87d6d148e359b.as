package com.ax3.fishao.view.dialogs.tournaments
{
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.tournaments.controllers._014e781226c96aec4508ead9;
   
   public class _d458d315ffa87d6d148e359b extends _77175e1ba54813a6fb315d04
   {
      
      private var _53c00771c334cdfa351f0a44:_014e781226c96aec4508ead9;
      
      public function _d458d315ffa87d6d148e359b()
      {
         super();
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_TOURNAMENT_RESULTS;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this._53c00771c334cdfa351f0a44 = new _014e781226c96aec4508ead9(_asset);
      }
      
      override public function onCloseComplete() : void
      {
         this._53c00771c334cdfa351f0a44._90eac9ca552fe54c2ca0299f();
         super.onCloseComplete();
      }
   }
}

