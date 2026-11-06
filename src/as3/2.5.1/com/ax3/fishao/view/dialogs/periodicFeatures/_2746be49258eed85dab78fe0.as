package com.ax3.fishao.view.dialogs.periodicFeatures
{
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   
   public class _2746be49258eed85dab78fe0 extends _8135ed6dd5e1e5392891fb21
   {
      
      public function _2746be49258eed85dab78fe0()
      {
         super();
      }
      
      override public function set state(param1:String) : void
      {
         super.state = param1;
         var _loc2_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc2_ != null)
         {
            _loc2_.updateWithType(_6b63fd0a4028eb279b227831.ECU_PERIODIC_FEATURES_MEGALODON_UPDATED);
         }
      }
   }
}

