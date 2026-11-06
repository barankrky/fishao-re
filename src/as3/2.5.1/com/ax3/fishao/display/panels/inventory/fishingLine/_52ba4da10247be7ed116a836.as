package com.ax3.fishao.display.panels.inventory.fishingLine
{
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.fishingLine._2308dd1c4f5a21679f69cea3;
   import flash.events.Event;
   import protocol.api.fishingLine.data.FishingLineLevelInfo;
   
   public class _52ba4da10247be7ed116a836 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _2f3fca17cf33dcd2ee0d0c5f:_081e31187f044f0b9051c087 = new _081e31187f044f0b9051c087(this);
      
      private var _df65e3856128194d79bb251f:Boolean;
      
      public function _52ba4da10247be7ed116a836()
      {
         super(this._2f3fca17cf33dcd2ee0d0c5f);
         this.init();
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var _loc2_:int = 0x349739DE ^ 0x336C052D ^ 0x52BE491B ^ 0x7DCCE3AC;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x7D769E5E ^ 0x6787415C ^ 0x158560D1 ^ 0x27FD2997))
            {
               case 0:
                  if(this._df65e3856128194d79bb251f == param1)
                  {
                     _loc2_ = -962876653 ^ -2017970431 ^ 0x57CFAAF7 ^ 0x3E65A0A3;
                  }
                  else
                  {
                     _loc2_ = -80838092 ^ 0x52F3A960 ^ 0x2FB44865 ^ -1360988812;
                  }
                  break;
               case 1:
                  this._df65e3856128194d79bb251f = param1;
                  this._2f3fca17cf33dcd2ee0d0c5f.isEnabled = !this._df65e3856128194d79bb251f;
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_2308dd1c4f5a21679f69cea3 = null;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc4_)
         {
            if(!GameSwf._d3e1b275b210647ff7fe10f6())
            {
               _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_051_UI_Open_menu);
               _loc3_ = app.dialogFactory._8f0a01c04a2d76e011c3f408();
               _loc3_.show();
            }
            _loc4_ = true;
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         var _loc1_:int = -712400433 ^ -1489818558 ^ -1216754772 ^ 0x50FECEA5;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x082B1169 ^ 0x0E6F02D2 ^ 0x3F419585 ^ -1405612360))
            {
               case 0:
                  this.update(_6b63fd0a4028eb279b227831.ECU_FISHING_LINE_COLOR);
                  this.update(_6b63fd0a4028eb279b227831.ECU_FISHING_LINE_LEVEL);
                  _loc1_ = 0x71EEC673 ^ -1805499282 ^ -1090282974 ^ -810381128;
                  break;
               case 1:
                  return;
               case 2:
                  if(GameSwf.instance.managerFishingLine.isDataLoaded)
                  {
                     _loc1_ = 0x1AD70142 ^ 0x7BDC77A4 ^ 0x142E92E9 ^ -535270263;
                  }
                  else
                  {
                     _loc1_ = 0x1A24E967 ^ -158693845 ^ 0x0E793DBE ^ 0x77EADA75;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:FishingLineLevelInfo = null;
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_FISHING_LINE_COLOR:
               §§push(0x4CF32EF4 ^ 0x050EFBDF ^ 0x43E36EE0 ^ 0x0A1EBBCB);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FISHING_LINE_LEVEL:
               §§push(-223535620 ^ -1159035634 ^ 0x5B75C1EC ^ 0x1332591F);
               break;
            default:
               §§push(0x1F2C033C ^ 0x4C3CC977 ^ -1918876566 ^ -558854621);
         }
         switch(§§pop())
         {
            case 0:
               this._2f3fca17cf33dcd2ee0d0c5f.color = app.user.fishingLineColor;
               break;
            case 1:
               _loc2_ = app.user.fishingLine;
               this._2f3fca17cf33dcd2ee0d0c5f._0991684a9b4e5ef27c138835(_loc2_.number,_loc2_.lineLength);
               break;
            default:
               Debug.assert(false);
         }
      }
   }
}

