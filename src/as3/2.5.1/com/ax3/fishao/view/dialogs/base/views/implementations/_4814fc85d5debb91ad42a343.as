package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import com.ax3.fishao.utils._d3d70238b67f17bb35699a2c;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   
   public class _4814fc85d5debb91ad42a343 extends _3eb93417cc9a297c2bc6ce2e
   {
      
      private var _4b573d4fdc43a6ddd45837c5:gCheckboxColor = new gCheckboxColor();
      
      public function _4814fc85d5debb91ad42a343(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._4b573d4fdc43a6ddd45837c5);
      }
      
      public function set color(param1:uint) : void
      {
         _d3d70238b67f17bb35699a2c._d17bd5f6393cd1cc84711ab8(this._4b573d4fdc43a6ddd45837c5.viewColor,param1);
      }
      
      override public function set isChecked(param1:Boolean) : void
      {
         var _loc2_:int = -684987980 ^ -1170352739 ^ 0x1C6D59F1 ^ 0x5B28C305;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x02D8087E ^ -388262738 ^ -104567728 ^ 0x3994565D))
            {
               case 0:
                  if(this.isChecked == param1)
                  {
                     _loc2_ = 0x6697E0FE ^ -325892532 ^ 0x2E470B4C ^ -1911551198;
                  }
                  else
                  {
                     _loc2_ = 0x060AA78F ^ -567299358 ^ -1806805874 ^ 0x6638E73C;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  super.isChecked = param1;
                  this._4b573d4fdc43a6ddd45837c5.viewEffect.visible = !param1;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set enableSelection(param1:Boolean) : void
      {
         var _loc2_:int = 0x125C886D ^ 0x386A134C ^ -1464991304 ^ -2009780082;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1677950302 ^ -1418946380 ^ -1837683160 ^ -1471504855))
            {
               case 0:
                  this._4b573d4fdc43a6ddd45837c5.buttonMode = param1;
                  if(param1)
                  {
                     _loc2_ = -2127793629 ^ 0x152717DF ^ -379332661 ^ 0x77C51822;
                  }
                  else
                  {
                     _loc2_ = -894154093 ^ 0x4465309C ^ 0x76AAD2F1 ^ -220855574;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._fc17178734ae7cc816dbcc2f(true,false,true,true,true);
                  _loc2_ = 0x0D0D28A8 ^ -741582654 ^ -1219836594 ^ 0x63261F32;
                  break;
               case 3:
                  this._fc17178734ae7cc816dbcc2f();
                  _loc2_ = 0x2C3B1BEF ^ -1542605243 ^ -82249669 ^ 0x7983FF87;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

