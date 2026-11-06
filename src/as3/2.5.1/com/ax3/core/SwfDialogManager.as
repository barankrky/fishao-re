package com.ax3.core
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog.DialogManager;
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.display.dialog.IDialogWithPreloader;
   import com.ax3.display.dialog.ISwfDialog;
   import com.ax3.display.wrappers.IAssetWrappersProcessor;
   import com.ax3.utils.ObjectCounter;
   import flash.utils.Dictionary;
   
   public class SwfDialogManager extends DialogManager
   {
      
      private var _dialogCounter:ObjectCounter = new ObjectCounter();
      
      private var _dialogByClass:Dictionary = new Dictionary();
      
      public var assetWrappersProcessor:IAssetWrappersProcessor;
      
      public function SwfDialogManager(param1:App)
      {
         super(param1);
      }
      
      public function getSwfDialogByClass(param1:Class) : ISwfDialog
      {
         var dialogClass:Class = param1;
         var dialog:ISwfDialog = null;
         try
         {
            dialog = new dialogClass();
         }
         catch(e:Error)
         {
            if(e.message != _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ეშჯစဍှ႓იႍႇႯဖၼ်ဪဇთეႂၡတ႕ာ၏ဆဲ","ဢႻ჉ႫლႫဧხႫဤႍၥვ္ჱႰ"))
            {
               throw e;
            }
            dialog = (dialogClass as Object).getInstance();
         }
         dialog.initialize(_applicationModel);
         return dialog;
      }
      
      public function onDialogAssetCreating(param1:Object) : void
      {
         var _loc2_:int = 0x2E828657 ^ 0x177E4206 ^ 0x3F271470 ^ 0x46393A42;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-2112696906 ^ 0x25C6FE75 ^ 0x7CDB3397 ^ -1678906825))
            {
               case 0:
                  if(param1 is IDialogWithPreloader)
                  {
                     _loc2_ = -1337246536 ^ -722165894 ^ 0x415A1CBA ^ 0x65075519;
                  }
                  else
                  {
                     _loc2_ = -2116918726 ^ -87358820 ^ 0x2FC54E0D ^ 0x143EC4C9;
                  }
                  break;
               case 1:
                  this.inspectActiveCreating();
                  return;
               case 2:
                  this._dialogCounter.add(param1);
                  _loc2_ = -319458949 ^ -1524285347 ^ 0x1EBBFA9F ^ 0x178921DB;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function inspectActiveCreating() : void
      {
         var _loc1_:int = 0x1EB4230E ^ -838342452 ^ 0x263D0660 ^ -821193977;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x50FC7AED ^ -1882248203 ^ 0x7676AFB5 ^ -1866031096))
            {
               case 0:
                  if(this._dialogCounter.count == (0x7C1715ED ^ -232548037 ^ 0x4D7E9E5C ^ -1018555766))
                  {
                     _loc1_ = -1217853247 ^ 0x450EE859 ^ -1573030190 ^ 0x69D9C8EE;
                  }
                  else
                  {
                     _loc1_ = 0x113C2413 ^ -1427379413 ^ 0x0896046C ^ -1966959115;
                  }
                  break;
               case 1:
                  _applicationModel.dispatcher.dialogManager.dialogAssetCreatingComplete.dispatch();
                  _loc1_ = 0x67C9C4EF ^ -1809485003 ^ 0x5DE0B30D ^ -1752212880;
                  break;
               case 2:
                  return;
               case 3:
                  _applicationModel.dispatcher.dialogManager.dialogAssetCreatingStart.dispatch();
                  _loc1_ = 0x2F4A358A ^ 0x4E10E89C ^ -112161417 ^ -1584853306;
                  break;
               case 4:
                  if(this._dialogCounter.count == (0x709889B5 ^ 0x273E697B ^ 0x31558DCD ^ 0x66F36D02))
                  {
                     _loc1_ = -1204937138 ^ -120869031 ^ -508342553 ^ -1730829994;
                  }
                  else
                  {
                     _loc1_ = -1160185713 ^ 0x33279CA2 ^ 0x67159F00 ^ -680942198;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function onCreatingDialogComplete(param1:Object) : void
      {
         var _loc2_:int = -820380220 ^ -1991271740 ^ 0x1C6E4AB2 ^ -164073241;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5F7C3DF0 ^ -2007102279 ^ -1006165100 ^ -1088073847))
            {
               case 0:
                  this._dialogCounter.remove(param1);
                  _loc2_ = -490844204 ^ 0x3C5BFCED ^ -408568964 ^ -1790946029;
                  break;
               case 1:
                  if(param1 is IDialogWithPreloader)
                  {
                     _loc2_ = 0x61CB5BD6 ^ 0x4A335AE9 ^ -1864255863 ^ 0x1719EAE2;
                  }
                  else
                  {
                     _loc2_ = -2097266646 ^ -76585490 ^ 0x3ED771D7 ^ -347731643;
                  }
                  break;
               case 2:
                  this.inspectActiveCreating();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function getSingleSwfDialogByClass(param1:Class) : ISwfDialog
      {
         var _loc2_:int = 0x0600F81C ^ 0x6C841483 ^ -1695488949 ^ -2124616307;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x57682B66 ^ -671556943 ^ -502872654 ^ 0x13BED13E))
            {
               case 0:
                  this._dialogByClass[param1] = this.getSwfDialogByClass(param1);
                  _loc2_ = -1957836188 ^ 0x11CD30B7 ^ -1934436561 ^ 0x671AC8A6;
                  break;
               case 1:
                  return this._dialogByClass[param1];
               case 2:
                  if(this._dialogByClass[param1] == null)
                  {
                     _loc2_ = -1813825673 ^ 0x47B3E5B0 ^ 0x67B0BE15 ^ -1027044983;
                  }
                  else
                  {
                     _loc2_ = 0x37D4B434 ^ 0x2438F21C ^ 0x0D18CCFD ^ 0x6FDC6F8F;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function getSingleDialogByClass(param1:Class) : IBaseDialog
      {
         var _loc2_:int = 0x2BB4C915 ^ -1275128338 ^ 0x139ECDC6 ^ -1027259750;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1072636224 ^ -2085281023 ^ 0x5B39FFB5 ^ 0x518C51D1))
            {
               case 0:
                  IBaseDialog(this._dialogByClass[param1]).reset();
                  return this._dialogByClass[param1];
               case 1:
                  this._dialogByClass[param1] = new param1();
                  _loc2_ = -1896334631 ^ -1816218804 ^ 0x04E6D4DC ^ 0x50B00EEC;
                  break;
               case 2:
                  if(this._dialogByClass[param1] == null)
                  {
                     _loc2_ = -714642654 ^ -1752406535 ^ -1942164494 ^ -2016954739;
                  }
                  else
                  {
                     _loc2_ = -1210238048 ^ -2118027950 ^ 0x26666329 ^ 0x596A7E7E;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function getDialogByClass(param1:Class) : IBaseDialog
      {
         var _loc2_:IBaseDialog = new param1();
         IBaseDialog(_loc2_).reset();
         return _loc2_;
      }
   }
}

