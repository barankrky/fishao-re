package com.ax3.fishao.view.dialogs.events
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import com.ax3.fishao.view.dialogs.events.controllers.ControllerEventInfo;
   import com.ax3.fishao.view.dialogs.events.controllers.ControllerMembers;
   import com.ax3.fishao.view.dialogs.events.model.ManagerEvents;
   import com.ax3.fishao.view.dialogs.events.views.ViewNoEvent;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.MovieClip;
   import flash.events.Event;
   import protocol.api.events.data.EventInfo;
   
   public class DialogEvents extends DialogEventsAsset
   {
      
      private var _managerEvents:ManagerEvents;
      
      private var _controllerMembers:ControllerMembers;
      
      private var _controllerEventInfo:ControllerEventInfo;
      
      private var _viewTitle:ViewTitleAutosized;
      
      private var _viewNoEvent:IView;
      
      private var _buttonUpcoming:FrameButtonWrapper;
      
      public function DialogEvents()
      {
         super();
         this.init();
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_EVENTS;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         var _loc1_:EventInfo = this._managerEvents.eventCurrent;
         this._controllerEventInfo = new ControllerEventInfo(Debug.assertProperty(_asset,"viewEventInfo"));
         this._controllerEventInfo.entity = this._managerEvents.eventCurrent == null ? this._managerEvents.eventFirst : _loc1_;
         this._controllerMembers = new ControllerMembers(Debug.assertProperty(_asset,"viewMembers"));
         _asset.addChild(this._controllerMembers.view.source);
         this._viewNoEvent = new ViewNoEvent(this,Debug.assertProperty(_asset,"viewNoEvent"));
         this._viewTitle = new ViewTitleAutosized(this,Debug.assertProperty(_asset,"viewTitle"));
         this._viewTitle.text = I18n.get(EStringType.EST_DIALOG_EVENTS_TITLE);
         var _loc2_:MovieClip = Debug.assertProperty(_asset,"buttonUpcoming");
         this._buttonUpcoming = new FrameButtonWrapper();
         this._buttonUpcoming.process(_loc2_);
         this._buttonUpcoming.label = I18n.get(EStringType.EST_DIALOG_EVENTS_BUTTON_UPCOMING);
         this._buttonUpcoming.handler = this.onClickButtonUpcoming;
         super.onAssetCreationComplete();
      }
      
      private function onClickButtonUpcoming(param1:Event) : void
      {
         this.close();
         var _loc2_:DialogEventsUpcoming = app.dialogFactory.getDialogEventsUpcoming();
         _loc2_.show();
      }
      
      private function init() : void
      {
         this._managerEvents = Debug.assertNotEqual(GameSwf.instance.managerEvents,null);
      }
      
      override public function redraw() : void
      {
         var _loc1_:EventInfo = this._managerEvents.eventCurrent;
         if(_loc1_ != null)
         {
            this._controllerMembers.update(EControllerUpdate.ECU_EVENTS_EVENT_START);
            if(!_loc1_.isShown)
            {
               this._managerEvents.onEventShown(_loc1_);
            }
            this._managerEvents.updateMembers(0,15);
         }
         this.updateView();
         super.redraw();
      }
      
      private function updateView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         _loc1_ = false;
         _loc2_ = this._managerEvents.eventCurrent != null;
         _loc1_ = this._managerEvents.eventFirst != null;
         this._controllerEventInfo.view.source.visible = _loc1_;
         this._viewNoEvent.source.visible = !_loc1_;
         this._controllerMembers.view.source.visible = _loc2_;
         _viewLogo.visible = !_loc2_;
         this._buttonUpcoming.visible = _loc1_;
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:EventInfo = null;
         var _loc3_:EventInfo = null;
         switch(param1)
         {
            case EControllerUpdate.ECU_EVENTS_NEW_EVENTS_RECEIVED:
               _loc2_ = this._managerEvents.eventFirst;
               this._controllerEventInfo.entity = _loc2_;
               _loc2_.onEventShown();
               this.updateView();
               break;
            case EControllerUpdate.ECU_EVENTS_EVENT_START:
               this._controllerEventInfo.entity = this._managerEvents.eventCurrent;
               this._controllerMembers.update(param1);
               this.updateView();
               break;
            case EControllerUpdate.ECU_EVENTS_EVENT_END:
               _loc3_ = this._managerEvents.eventFirst;
               if(_loc3_ != null)
               {
                  this._controllerEventInfo.entity = _loc3_;
               }
               this.updateView();
               break;
            case EControllerUpdate.ECU_EVENTS_EVENT_MEMBERS:
               this._controllerMembers.update(param1);
               break;
            default:
               Debug.assert(false);
         }
      }
      
      override public function close() : void
      {
         this._viewTitle.cleanup();
         this._viewTitle = null;
         this._viewNoEvent.cleanup();
         this._viewNoEvent = null;
         this._controllerEventInfo.cleanup();
         this._controllerEventInfo = null;
         this._controllerMembers.cleanup();
         this._controllerMembers = null;
         super.close();
      }
   }
}

