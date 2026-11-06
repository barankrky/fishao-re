package com.ax3.fishao.view.wrappers.communication
{
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.control.managers.FontManager;
   import com.ax3.fishao.model.types.PrivateMessageType;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.communication.helpers.base.FactoryHelpersMessage;
   import com.ax3.fishao.view.wrappers.communication.helpers.base.HelperMessageBase;
   import com.ax3.fishao.view.wrappers.impl.CheckBoxState;
   import com.ax3.fishao.view.wrappers.impl.FishaoCheckboxWrapper;
   import com.ax3.utils.empty;
   import com.ax3.utils.math.limit;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   
   public class CommunicateBlockWrapper extends Sprite
   {
      
      public var type:String;
      
      public var originalSubject:String;
      
      private var _asset:MovieClip;
      
      private var _subject:TextField;
      
      private var _body:String;
      
      private var _sender:TextField;
      
      private var _checkbox:FishaoCheckboxWrapper;
      
      private var _date:TextField;
      
      private var _timeAgoSec:int;
      
      private var _dateFieldContainer:ToolTipTargetMovieClip;
      
      private var _id:int;
      
      private var _clickHandler:Function;
      
      private var _senderContainer:MovieClip;
      
      private var _isNew:Boolean;
      
      private var _isDeleted:Boolean;
      
      private var _subjectText:String;
      
      private var _isInbox:Boolean;
      
      private var _helpersMap:Dictionary;
      
      public function CommunicateBlockWrapper(param1:Class)
      {
         super();
         this._asset = new param1();
         addChild(this._asset);
         MovieClip(this._asset.getChildByName("subjectContainer")).buttonMode = true;
         MovieClip(this._asset.getChildByName("subjectContainer")).useHandCursor = true;
         this._subject = TextField(MovieClip(this._asset.getChildByName("subjectContainer")).getChildByName("subject"));
         this._subject.mouseEnabled = false;
         this._senderContainer = MovieClip(this._asset.getChildByName("senderContainer"));
         this._senderContainer.buttonMode = true;
         this._senderContainer.useHandCursor = true;
         this._senderContainer.addEventListener(MouseEvent.CLICK,this.showSenderProfile);
         this._sender = TextField(MovieClip(this._asset.getChildByName("senderContainer")).getChildByName("sender"));
         this._sender.mouseEnabled = false;
         MovieClip(this._asset.getChildByName("dateContainer")).buttonMode = true;
         MovieClip(this._asset.getChildByName("dateContainer")).useHandCursor = true;
         this._date = TextField(MovieClip(this._asset.getChildByName("dateContainer")).getChildByName("date"));
         this._date.mouseEnabled = true;
         this._dateFieldContainer = new ToolTipTargetMovieClip();
         this._dateFieldContainer.tooltipConfig = {"text":""};
         this._dateFieldContainer.mouseChildren = false;
         ShiftWrapper.shiftDisplayObject(this._date,this._dateFieldContainer,true);
         this._checkbox = new FishaoCheckboxWrapper();
         this._checkbox.process(this._asset.getChildByName("checkThis"));
         buttonMode = true;
         useHandCursor = true;
         this.initHelpersMap();
      }
      
      private function initHelpersMap() : void
      {
         var _loc1_:String = null;
         var _loc2_:Array = [PrivateMessageType.EVENT_END,PrivateMessageType.CLUB_TOURNAMENT_END,PrivateMessageType.CLUB_GOAL_COMPLETED,PrivateMessageType.CLUB_MEMBER_KICKED,PrivateMessageType.CLUB_MEMBER_APPROVED,PrivateMessageType.CLUB_MEMBER_REJECTED,PrivateMessageType.CLUB_FISH_UNLOCKED];
         this._helpersMap = new Dictionary(true);
         for each(_loc1_ in _loc2_)
         {
            this._helpersMap[_loc1_] = FactoryHelpersMessage.createHelper(_loc1_);
         }
      }
      
      public function set handler(param1:Function) : void
      {
         if(param1 != null)
         {
            this._clickHandler = param1;
            MovieClip(this._asset.getChildByName("subjectContainer")).addEventListener(MouseEvent.CLICK,this._clickHandler);
            MovieClip(this._asset.getChildByName("dateContainer")).addEventListener(MouseEvent.CLICK,this._clickHandler);
         }
         else
         {
            MovieClip(this._asset.getChildByName("subjectContainer")).removeEventListener(MouseEvent.CLICK,this._clickHandler);
            MovieClip(this._asset.getChildByName("dateContainer")).removeEventListener(MouseEvent.CLICK,this._clickHandler);
            this._clickHandler = param1;
         }
      }
      
      public function update(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Object, param7:Boolean) : void
      {
         this._id = param1;
         this.isNew = param6.isNew;
         this._isDeleted = param6.isDeleted;
         this.originalSubject = param2;
         this.type = param6.hasOwnProperty("type") ? param6["type"] : PrivateMessageType.USUAL;
         this.subject = "";
         this._subject.width = 273;
         if(this.type in this._helpersMap)
         {
            this.handleWithHelper(param2,param4);
         }
         else
         {
            this.handleWithoutHelper(param2,param4,param3,param6);
         }
         this._sender.text = param3;
         if(this._sender.text == "" && this._sender.text.toLowerCase() == "fishao")
         {
            this._senderContainer.useHandCursor = false;
            this._senderContainer.mouseEnabled = false;
         }
         this._sender.width = limit(this._sender.textWidth + 5,0,156);
         this._date.text = I18n.formatShortTimestamp(param5);
         this._timeAgoSec = param5;
         this._date.width = limit(this._date.textWidth + 5,0,104);
         this._dateFieldContainer.tooltipConfig = {"text":I18n.formatFullTimestamp(param5,true)};
         this._checkbox.state = CheckBoxState.UNSELECTED;
         this._checkbox.visible = !this._isDeleted;
         this._subject.width = limit(this._subject.textWidth + 5,100,273);
         this._isInbox = param7;
      }
      
      private function handleWithHelper(param1:String, param2:String) : void
      {
         var _loc3_:HelperMessageBase = this._helpersMap[this.type];
         _loc3_.handleMessage(param1,param2);
         this.subject = _loc3_.subject;
         this._body = _loc3_.body;
      }
      
      private function handleWithoutHelper(param1:String, param2:String, param3:String, param4:Object) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:String = param4.to;
         switch(this.type)
         {
            case PrivateMessageType.FRIENDSHIP:
               if(param1 == "invite")
               {
                  this.subject = I18n.template("friendshipSubject",{"sender":param3});
                  this._body = I18n.template("friendshipBody",{"sender":param3});
               }
               else if(param1 == "accepted")
               {
                  this.subject = I18n.template("friendshipAcceptedSubject",{"sender":param3});
                  this._body = I18n.template("friendshipAcceptedBody",{"sender":param3});
               }
               this._senderContainer.useHandCursor = true;
               this._senderContainer.mouseEnabled = true;
               break;
            case PrivateMessageType.ADMIN_MSG:
               this.subject = param1;
               _loc5_ = JSON.parse(param2);
               this._body = I18n.get(_loc5_.template).replace("#MSG#",_loc5_.msg);
               break;
            case PrivateMessageType.BAN_MSG:
               if(this.subject == "")
               {
                  this.subject = I18n.get("adminMsgSubj_" + param1);
               }
               _loc6_ = JSON.parse(param2);
               this._body = I18n.get(_loc6_.template);
               if(empty(_loc8_))
               {
                  this._body = this._body.replace("#USERNAME#",app.user.username);
               }
               else
               {
                  this._body = this._body.replace("#USERNAME#",_loc8_);
               }
               this._senderContainer.useHandCursor = this._senderContainer.mouseEnabled = false;
               for(_loc7_ in _loc6_)
               {
                  if(_loc7_ == "userDateTime")
                  {
                     _loc6_[_loc7_] = I18n.formatTimestamp(_loc6_[_loc7_]);
                  }
                  this._body = this._body.replace("#" + _loc7_.toUpperCase() + "#",_loc6_[_loc7_]);
               }
               break;
            case PrivateMessageType.FISHCOINS:
               this.subject = param1;
               this._body = param2;
               this._senderContainer.useHandCursor = false;
               this._senderContainer.mouseEnabled = false;
               break;
            default:
               this.subject = param1;
               this._body = param2;
               this._senderContainer.useHandCursor = true;
               this._senderContainer.mouseEnabled = true;
         }
      }
      
      public function get isSelected() : Boolean
      {
         return this._checkbox.isSelected;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get subject() : String
      {
         return this._subject.text;
      }
      
      private function showSenderProfile(param1:MouseEvent) : void
      {
         if(this._sender.text != "" && this._sender.text.toLowerCase() != "fishao")
         {
            UtilsDialog.showProfileDialog(this._sender.text);
         }
      }
      
      public function get body() : String
      {
         return this._body;
      }
      
      public function get sender() : String
      {
         return this._sender.text;
      }
      
      public function get timeAgo() : String
      {
         return this._date.text;
      }
      
      public function get checkbox() : FishaoCheckboxWrapper
      {
         return this._checkbox;
      }
      
      public function get isNew() : Boolean
      {
         return this._isNew;
      }
      
      public function set isNew(param1:Boolean) : void
      {
         this._isNew = param1;
         this.updateSubjectFont();
      }
      
      public function set subject(param1:String) : void
      {
         this._subjectText = param1;
         this.updateSubjectFont();
      }
      
      public function get timeAgoSec() : int
      {
         return this._timeAgoSec;
      }
      
      private function updateSubjectFont() : void
      {
         this._subject.text = (this._isDeleted ? "[DEL] " : "") + this._subjectText;
         var _loc1_:TextFormat = this._subject.defaultTextFormat;
         _loc1_.font = this._isNew ? FontManager.IS_NEW_MESSAGE_FONT : FontManager.IS_READED_MESSAGE_FONT;
         this._subject.defaultTextFormat = _loc1_;
      }
      
      public function updateAsEmpty() : void
      {
         this._id = -1;
      }
      
      public function get isDeleted() : Boolean
      {
         return this._isDeleted;
      }
      
      public function get isInbox() : Boolean
      {
         return this._isInbox;
      }
      
      public function set isDeleted(param1:Boolean) : void
      {
         this._isDeleted = param1;
         this.updateSubjectFont();
      }
   }
}

