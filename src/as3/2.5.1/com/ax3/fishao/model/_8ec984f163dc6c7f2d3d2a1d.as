package com.ax3.fishao.model
{
   import com.ax3.fishao.events._4986c362bed569a2ffb299b4;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.weather._da93b7e4b1cf62dcb698e0bd;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.view.dialogs.tournaments._9adbacee9e79da53f4cf55bb;
   
   public class _8ec984f163dc6c7f2d3d2a1d extends _4039c287ddb4ef46ab65ab0e
   {
      
      private var _248bf807f4004aae602ee533:_9adbacee9e79da53f4cf55bb;
      
      public function _8ec984f163dc6c7f2d3d2a1d(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function get weather() : _da93b7e4b1cf62dcb698e0bd
      {
         return _da93b7e4b1cf62dcb698e0bd.SUNNY;
      }
      
      override public function get absoluteId() : int
      {
         return _id < (-1058700144 ^ 0x1E8AFBDE ^ -915564137 ^ 0x1702E611) ? int(_id + (0x67E0CB09 ^ 0x56086B50 ^ 0x16FEC809 ^ 0x27166898)) : _id;
      }
      
      private function init() : void
      {
         _dayCycleEnabled = false;
         isSublocation = false;
         isTournament = true;
         this._248bf807f4004aae602ee533 = GameSwf.instance.managerTournaments;
      }
      
      override public function _80557ec7c85c6def233bada4() : void
      {
         _db484614a71f0398bdc80d31();
         dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.ENTER_TO_LOCATION));
         this._248bf807f4004aae602ee533._8766b98a29c98c56b6d4409b(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb());
      }
   }
}

