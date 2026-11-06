package com.ax3.fishao.utils
{
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.ProfileSwfDialog;
   import com.ax3.fishao.view.dialogs.simple.DialogSimpleWithButton;
   import com.ax3.fishao.view.dialogs.simple.DialogSimpleWithTwoButtons;
   import com.ax3.fishao.view.dialogs.simple.DialogSimpleWithoutButtons;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.base.ResponseError;
   
   public class UtilsDialog
   {
      
      public function UtilsDialog()
      {
         super();
      }
      
      public static function showConfirmDialog(param1:String, param2:Function) : void
      {
         var _loc3_:DialogSimpleWithTwoButtons = new DialogSimpleWithTwoButtons();
         _loc3_.title = I18n.get(EStringType.EST_CONFIRM_ACTION);
         _loc3_.description = param1;
         _loc3_.buttonActionLeft.label = I18n.get(EStringType.EST_COMMON_YES);
         _loc3_.callbackButtonLeft = param2;
         _loc3_.buttonActionRight.label = I18n.get(EStringType.EST_COMMON_NO);
         _loc3_.show();
      }
      
      public static function showDialogInfo(param1:String, param2:String) : void
      {
         var _loc3_:DialogSimpleWithoutButtons = new DialogSimpleWithoutButtons();
         _loc3_.title = param1;
         _loc3_.description = param2;
         _loc3_.show();
      }
      
      public static function showDialogInfoWithButton(param1:String, param2:String, param3:String, param4:Function) : DialogSimpleWithButton
      {
         var _loc5_:DialogSimpleWithButton = new DialogSimpleWithButton();
         _loc5_.title = param1;
         _loc5_.description = param2;
         _loc5_.buttonAction.label = param3;
         _loc5_.callback = param4;
         _loc5_.show();
         return _loc5_;
      }
      
      public static function tryHandleResponseError(param1:ServerResp) : Boolean
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         var _loc6_:ResponseError = param1 as ResponseError;
         if(_loc6_ != null)
         {
            _loc2_ = I18n.get(_loc6_.description);
            _loc3_ = _loc6_.descriptionData;
            if(_loc3_ != null)
            {
               for(_loc4_ in _loc3_)
               {
                  _loc2_ = _loc2_.replace(_loc4_,_loc3_[_loc4_]);
               }
            }
            UtilsDialog.showDialogInfo(I18n.get(EStringType.EST_COMMON_ERROR),_loc2_);
            _loc5_ = true;
         }
         return _loc5_;
      }
      
      public static function showProfileDialog(param1:String) : ProfileSwfDialog
      {
         var _loc2_:ProfileSwfDialog = app.dialogFactory.getDialog(ProfileSwfDialog);
         _loc2_.initData(param1);
         _loc2_.show();
         return _loc2_;
      }
   }
}

