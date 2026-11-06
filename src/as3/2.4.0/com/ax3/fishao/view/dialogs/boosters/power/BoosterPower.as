package com.ax3.fishao.view.dialogs.boosters.power
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.EBoosterType;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.boosters.base.BoosterInfo;
   
   public class BoosterPower extends BoosterInfo
   {
      
      private var _powerMultiply:Number;
      
      public function BoosterPower(param1:uint)
      {
         super(EBoosterType.EBT_POWER_BOOSTER,param1);
         this.init();
      }
      
      public function get powerMultiply() : Number
      {
         return this._powerMultiply;
      }
      
      private function init() : void
      {
         var _loc1_:Object = app.resourcesDict.get(id);
         Debug.assertNotEqual(_loc1_,null,"Could get power booster data. Possible JSON not generated on admin panel");
         if(!_loc1_.hasOwnProperty("param"))
         {
            return;
         }
         var _loc2_:Object = JSON.parse(_loc1_.param.toString());
         if(_loc2_.hasOwnProperty("power_multiply"))
         {
            this._powerMultiply = _loc2_.power_multiply;
         }
      }
   }
}

