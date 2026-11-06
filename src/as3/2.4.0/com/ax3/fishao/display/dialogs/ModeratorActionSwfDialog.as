package com.ax3.fishao.display.dialogs
{
   import com.ax3.fishao.model.types.BanPeriod;
   import com.ax3.fishao.model.types.BanType;
   import com.ax3.fishao.model.types.ReportStatusType;
   import com.ax3.fishao.model.vo.ReportItemVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.ModeratorActionSwfDialogAsset;
   import com.ax3.fishao.view.dialogs.ProfileSwfDialog;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.empty;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import protocol.api.base.EErrorType;
   import protocol.sr.ErrorResp;
   
   public class ModeratorActionSwfDialog extends ModeratorActionSwfDialogAsset
   {
      
      private static var _allActions:Vector.<String>;
      
      private static var _banTypeByActionIndex:Vector.<BanType>;
      
      private static var _allPeriods:Vector.<String>;
      
      public var handlerReportSuccess:Function;
      
      private var _report:ReportItemVO;
      
      public function ModeratorActionSwfDialog()
      {
         super();
      }
      
      private static function getAllPeriods() : Vector.<String>
      {
         var _loc1_:Vector.<BanPeriod> = null;
         var _loc2_:BanPeriod = null;
         if(_allPeriods == null)
         {
            _allPeriods = new Vector.<String>();
            _loc1_ = BanPeriod.getAll();
            for each(_loc2_ in _loc1_)
            {
               _allPeriods.push(I18n.get("ban_" + _loc2_.name));
            }
         }
         return _allPeriods;
      }
      
      private function getAllActions() : Vector.<String>
      {
         var _loc1_:BanType = null;
         _allActions = new Vector.<String>();
         _banTypeByActionIndex = new Vector.<BanType>();
         var _loc2_:Vector.<BanType> = BanType.getAll();
         for each(_loc1_ in _loc2_)
         {
            if(_loc1_.selectable && this.hasDismissType(_loc1_))
            {
               _allActions.push(I18n.get(_loc1_.name));
               _banTypeByActionIndex.push(_loc1_);
            }
         }
         return _allActions;
      }
      
      private function hasDismissType(param1:BanType) : Boolean
      {
         return !(this._report.key == null && this._report.reportKey == null && param1 == BanType.DISMISS_REPORT);
      }
      
      private function onActionTypeChange(param1:Event) : void
      {
         periodDropdown.visible = _banTypeByActionIndex.length > actionDropdown.selectedItemIndex && _banTypeByActionIndex[actionDropdown.selectedItemIndex].hasTime;
         userDropdown.visible = !(_banTypeByActionIndex.length > actionDropdown.selectedItemIndex && _banTypeByActionIndex[actionDropdown.selectedItemIndex] == BanType.DISMISS_REPORT);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         applyButton.handler = this.onApplyButtonClick;
      }
      
      private function onApplyButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:MessageDialog = null;
         var _loc3_:BanPeriod = null;
         var _loc4_:BanType = null;
         var _loc5_:String = null;
         var _loc6_:int = userDropdown.selectedItemIndex;
         var _loc7_:int = actionDropdown.selectedItemIndex;
         if(_loc7_ == -1)
         {
            _loc2_ = app.dialogFactory.getMessageDialog();
            _loc2_.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.OK_BUTTON;
            _loc2_.setText(I18n.get("selectType"));
            _loc2_.closeOnOk = true;
            _loc2_.show();
            return;
         }
         _loc4_ = _banTypeByActionIndex[_loc7_];
         if(_loc6_ == -1 && _banTypeByActionIndex[_loc7_] != BanType.DISMISS_REPORT)
         {
            _loc2_ = app.dialogFactory.getMessageDialog();
            _loc2_.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.OK_BUTTON;
            _loc2_.setText(I18n.get("selectName"));
            _loc2_.closeOnOk = true;
            _loc2_.show();
            return;
         }
         var _loc8_:int = periodDropdown.selectedItemIndex;
         if(_banTypeByActionIndex[_loc7_] == BanType.COMMUNICATION_BAN || _banTypeByActionIndex[_loc7_] == BanType.FULL_BAN)
         {
            if(_loc8_ == -1)
            {
               _loc2_ = app.dialogFactory.getMessageDialog();
               _loc2_.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.OK_BUTTON;
               _loc2_.setText(I18n.get("selectDuration"));
               _loc2_.closeOnOk = true;
               _loc2_.show();
               return;
            }
            _loc3_ = BanPeriod.getAll()[_loc8_];
         }
         if(_loc6_ <= 0)
         {
            _loc5_ = this._report.abuserUsername;
         }
         else
         {
            _loc5_ = this._report.reporterUsername;
         }
         var _loc9_:String = scrollText.field.text;
         if(empty(_loc9_))
         {
            _loc2_ = app.dialogFactory.getMessageDialog();
            _loc2_.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.OK_BUTTON;
            _loc2_.setText(I18n.get("enterReason"));
            _loc2_.closeOnOk = true;
            _loc2_.show();
            return;
         }
         app.moderatorModel.applyPenalty(this._report.reportKey,this._report.key,_loc5_,_loc4_,_loc3_,_loc9_,this.onPenaltyApplied);
      }
      
      private function onPenaltyApplied(param1:ServerResp) : void
      {
         var _loc2_:String = null;
         var _loc3_:ProfileSwfDialog = null;
         var _loc4_:MessageDialog = null;
         var _loc5_:ErrorResp = param1 as ErrorResp;
         if(_loc5_ != null)
         {
            switch(_loc5_.descr)
            {
               case EErrorType.USER_IS_BIG_SPENDER.toString():
                  _loc2_ = EStringType.EST_MESSAGE_USER_IS_BIG_SPENDER;
            }
         }
         else
         {
            _loc2_ = EStringType.EST_MESSAGE_BAN_APPLIED;
            _loc3_ = GameSwf.profileSwfDialog;
            if(_loc3_ != null)
            {
               _loc3_.close();
            }
         }
         if(_loc2_ != "")
         {
            _loc4_ = app.dialogFactory.getMessageDialog();
            _loc4_.closeOnOk = true;
            _loc4_.setText(I18n.get(_loc2_));
            _loc4_.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.OK_BUTTON;
            _loc4_.show();
         }
         if(_loc2_ == "" || _loc2_ == EStringType.EST_MESSAGE_BAN_APPLIED)
         {
            close();
         }
         if(this.handlerReportSuccess != null)
         {
            this.handlerReportSuccess();
         }
      }
      
      public function showReport(param1:ReportItemVO) : void
      {
         this._report = param1;
         show();
      }
      
      override public function activate() : void
      {
         var _loc1_:Vector.<String> = null;
         super.activate();
         actionDropdown.selectedItemIndex = -1;
         periodDropdown.selectedItemIndex = -1;
         userDropdown.selectedItemIndex = -1;
         if(this._report.status == ReportStatusType.CLOSED)
         {
            userDropdown.create(new <String>[this._report.abuserUsername]);
            userDropdown.selectedItemIndex = 0;
         }
         else
         {
            _loc1_ = new Vector.<String>();
            if(this._report.abuserUsername != null)
            {
               if(this._report.reporterUsername != null)
               {
                  _loc1_.push(this._report.abuserUsername + " (" + I18n.get("abuser") + ")");
               }
               else
               {
                  _loc1_.push(this._report.abuserUsername);
               }
            }
            if(this._report.reporterUsername != null)
            {
               _loc1_.push(this._report.reporterUsername + " (" + I18n.get("reporter") + ")");
            }
            userDropdown.create(_loc1_);
         }
         actionDropdown.create(this.getAllActions());
         actionDropdown.addEventListener(Event.CHANGE,this.onActionTypeChange);
         periodDropdown.create(getAllPeriods());
      }
      
      override public function showByDialogManager() : void
      {
         _app.dialogManager.showDialogWithOverlay(this);
      }
   }
}

