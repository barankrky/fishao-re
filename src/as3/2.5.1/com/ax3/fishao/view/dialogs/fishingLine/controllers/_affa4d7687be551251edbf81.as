package com.ax3.fishao.view.dialogs.fishingLine.controllers
{
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.views.implementations.improvable._5f1c0f7d981f2b4a82612e61;
   import flash.display.DisplayObjectContainer;
   import protocol.api.fishingLine.data.FishingLineLevelInfo;
   
   public class _affa4d7687be551251edbf81 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _b583bd4a3e34f6324265b331:_5f1c0f7d981f2b4a82612e61;
      
      private var _61dff1016f8a150f344c2619:FishingLineLevelInfo;
      
      private var _65fbf78216a7a1685fbc5382:_ca7439c2756e279751b0c0e9;
      
      public function _affa4d7687be551251edbf81(param1:DisplayObjectContainer)
      {
         this._b583bd4a3e34f6324265b331 = new _5f1c0f7d981f2b4a82612e61(this,param1);
         super(this._b583bd4a3e34f6324265b331);
         this.init();
      }
      
      public function set entity(param1:FishingLineLevelInfo) : void
      {
         var _loc2_:int = -596230913 ^ 0x500B630E ^ -1638577845 ^ 0x2D04E1DF;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1779665205 ^ 0x1365767E ^ -1872519667 ^ 0x29C669DD))
            {
               case 0:
                  if(this._61dff1016f8a150f344c2619 == param1)
                  {
                     _loc2_ = -551044717 ^ 0x1AB1DFC6 ^ 0x645610B8 ^ -1628667510;
                  }
                  else
                  {
                     _loc2_ = 0x733CB943 ^ 0x08DA9515 ^ -526561851 ^ -1537763593;
                  }
                  break;
               case 1:
                  this._61dff1016f8a150f344c2619 = param1;
                  this._9bafe9da07dba75619303d2f();
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._65fbf78216a7a1685fbc5382 = new _ca7439c2756e279751b0c0e9(this._b583bd4a3e34f6324265b331.sourceLevelInfo,false);
      }
      
      private function _9bafe9da07dba75619303d2f() : void
      {
         this._b583bd4a3e34f6324265b331.number = this._61dff1016f8a150f344c2619.number;
         this._65fbf78216a7a1685fbc5382.entity = this._61dff1016f8a150f344c2619;
      }
   }
}

