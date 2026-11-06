package com.ax3.fishao.core
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.core.App;
   import com.ax3.core.SwfDialogManager;
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view._bb0f9e9a01c071b5076b8b0b;
   import com.ax3.fishao.view.dialogs.IPopupGroup;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   
   public class _2b922c40cfbe68a935a56e36 extends SwfDialogManager
   {
      
      public function _2b922c40cfbe68a935a56e36(param1:App)
      {
         super(param1);
         _applicationModel.dispatcher.dialogManager.dialogAssetCreatingStart.add(_27e51cc5cda4ca410ff9d2cd);
         _applicationModel.dispatcher.dialogManager.dialogAssetCreatingComplete.add(_b2f638a2e997c30d0f60c38a);
      }
      
      private static function _27e51cc5cda4ca410ff9d2cd() : void
      {
         var _loc1_:int = 0x3A85390A ^ 0x66881949 ^ 0x3239A114 ^ 0x63F6121F;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-400306882 ^ -1382511332 ^ 0x10239103 ^ 0x585A426B))
            {
               case 0:
                  _bb0f9e9a01c071b5076b8b0b._4bdbebb16d5eedb611b99185(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勛動劄劄勒勏勃剄刈刻勾勢勚勀刞劰别勾刐剚剫剗勸到刵勍刑勞剉剁勮勡切刞加刽刵劸削剾剜力刽剣勤剙刹刎劸刦列剳剥剮剀剸剅刹刼剔","功劻勗剓剠刭劽勉剝剐劃刁勶刱勣劻")),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掖挅掮挳挻捿揯捣掘掬挎掲捶揥挩揀挠捃揉挛揨揌挥授掽揈捽挂挬掜掂掆捥挵掔掋","挞捚揗捋挬掕挻措捰揸挚掺揺揖挰掵"));
                  _loc1_ = -1731765536 ^ -1592821690 ^ -1350537734 ^ -1685398505;
                  break;
               case 1:
                  return;
               case 2:
                  if(!_bb0f9e9a01c071b5076b8b0b.isActive())
                  {
                     _loc1_ = 0x1B498AB8 ^ 0x047E7120 ^ -649064962 ^ -878353108;
                  }
                  else
                  {
                     _loc1_ = 0x3F3E5853 ^ -2069063391 ^ 0x586D715A ^ -297983133;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private static function _b2f638a2e997c30d0f60c38a() : void
      {
         var _loc1_:int = 0x680FA44A ^ 0x6B96C8BA ^ 0x376EE93F ^ -1515911807;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-668926414 ^ -1207046890 ^ -606085359 ^ 0x2AA04C7B))
            {
               case 0:
                  if(_bb0f9e9a01c071b5076b8b0b.isActive())
                  {
                     _loc1_ = -454222255 ^ -86159919 ^ 0x6499E649 ^ -335858298;
                  }
                  else
                  {
                     _loc1_ = -1558771607 ^ -1792612709 ^ -1742619650 ^ 0x3F42D540;
                  }
                  break;
               case 1:
                  _bb0f9e9a01c071b5076b8b0b._a8f0ef786384468f5be3db4f(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႐၁၅ဣၶჭဝူၘ჉႕ဋူဗ჎ႊဃၳႳၝဇၫၚ႔ၳ၍ၜဘჳძ၌႘ဪႿჄႮ","ၳယၻ၁ၯ჎ဝးၬ၆Ⴧၢာ႓Ⴧ၏"));
                  _loc1_ = 0x7E14D4FD ^ -188318039 ^ -1072022765 ^ -610660085;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function showDialog(param1:IBaseDialog) : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance().showDialog(IBaseDialog(param1));
      }
      
      override public function showDialogWithOverlay(param1:IBaseDialog) : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance().showDialogWithOverlay(IBaseDialog(param1));
      }
      
      override public function closeDialog(param1:IBaseDialog) : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance().close(IBaseDialog(param1));
      }
      
      override public function showPopup(param1:IBaseDialog) : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance().showDialogWithOverlay(IBaseDialog(param1));
      }
      
      override public function showAt(param1:IPopupGroup, param2:IBaseDialog) : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance().showAt(param1,param2);
      }
   }
}

