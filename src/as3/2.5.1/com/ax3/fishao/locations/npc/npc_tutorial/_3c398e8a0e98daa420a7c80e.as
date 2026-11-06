package com.ax3.fishao.locations.npc.npc_tutorial
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations.npc.base._95e09934be04b5ca92831e4b;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.tutorial._283b592e1b144e604db439f2;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.vars.app;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class _3c398e8a0e98daa420a7c80e extends _ba120ae720a391732e866217
   {
      
      private var _c985bcbd5ed0e2e3778021f1:_283b592e1b144e604db439f2;
      
      public function _3c398e8a0e98daa420a7c80e(param1:_810c4ade948afb64e9c7ee25, param2:_3e7dee0195ecd6b652b730f1)
      {
         super(param1,param2);
         this._c985bcbd5ed0e2e3778021f1 = GameSwf.instance.managerTutorial;
      }
      
      override protected function _58f0b8852995b42532b1552e(param1:Event) : void
      {
         super._58f0b8852995b42532b1552e(param1);
         this._541207d1c18afd24874a9007();
      }
      
      override public function onClick(param1:MouseEvent = null) : void
      {
         if(app.user.inFishingProcess.value)
         {
            return;
         }
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(!_ab376ae0025d75a943d06517())
         {
            _dfa25706e58a240c1e33e5c6.locationExtension._abd393c870e6d7f9e4acc6dd(npcName,position,_dialogStep,_95e09934be04b5ca92831e4b.ENA_NO,_dialogStep > (-84587728 ^ -2043475936 ^ -68505152 ^ 0x78D30D2F) ? _745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb() : null);
            _17d1307788aadfaf6218377c();
         }
      }
      
      override public function _418df8970de8f29cbeee5a0f(param1:String, param2:int) : void
      {
         super._418df8970de8f29cbeee5a0f(param1,param2);
         this._541207d1c18afd24874a9007();
      }
      
      protected function _541207d1c18afd24874a9007() : void
      {
         var _loc1_:_9b5482b3978b7abe1547abb8 = this._c985bcbd5ed0e2e3778021f1.tutorialInProgress;
         if(_loc1_ != null)
         {
            _loc1_._0e1bc13a989d12a3776df86c();
         }
      }
   }
}

