package com.ax3.fishao.managers
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.core.FishaoApp;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.events.CharManagerEvent;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.model.character.CharLevelConfig;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.vars.app;
   import com.ax3.jss.model.FishaoFscModel;
   import com.ax3.utils.Callback;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import protocol.sr.CharViewUpdResp;
   
   public class CharManager extends EventDispatcher
   {
      
      private var _fscModel:FishaoFscModel;
      
      private var _charViewConfigByUsername:Dictionary = new Dictionary();
      
      private var _charLevelConfigByUsername:Dictionary = new Dictionary();
      
      private var _charConfigCallbackForByLogin:Dictionary = new Dictionary();
      
      private var _characterEditorLoadingCallbacks:Vector.<Callback>;
      
      public function CharManager()
      {
         super();
      }
      
      public function init(param1:FishaoFscModel) : void
      {
         this._fscModel = param1;
         this._fscModel.addRequestHandler(CharViewUpdResp,this.onCharViewUpdResp);
      }
      
      private function onCharViewUpdResp(param1:CharViewUpdResp) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:LocationDialog = null;
         var _loc5_:LocationUser = null;
         var _loc6_:Boolean = false;
         for(_loc2_ in param1.views)
         {
            _loc3_ = JSON.parse(param1.views[_loc2_]);
            _loc4_ = GameSwf.currentLocationDialog;
            if(_loc4_ != null && _loc4_.locationModel != null)
            {
               _loc5_ = _loc4_.locationModel.getLocationUser(_loc2_);
               _loc6_ = false;
               if(_loc5_ != null)
               {
                  _loc6_ = _loc5_.isModerator;
               }
               _loc3_ = CharViewConfig.reviewCharForModeratorSuit(CharViewConfig.fromObject(_loc3_),_loc6_);
               _loc3_.isModerator = _loc6_;
            }
            this.setCharView(_loc2_,CharViewConfig.fromObject(_loc3_));
            if(_loc2_ == app.user.username)
            {
               FishaoApp(app).char = CharViewConfig.fromObject(_loc3_);
            }
         }
      }
      
      private function setCharView(param1:String, param2:CharViewConfig) : void
      {
         var _loc3_:Array = null;
         var _loc4_:Callback = null;
         this._charViewConfigByUsername[param1] = param2;
         this.setCharViewConfigByUsername(param2,param1);
         if(param1 in this._charConfigCallbackForByLogin)
         {
            _loc3_ = this._charConfigCallbackForByLogin[param1] as Array;
            for each(_loc4_ in _loc3_)
            {
               _loc4_.call(this);
            }
            this._charConfigCallbackForByLogin[param1] = null;
            delete this._charConfigCallbackForByLogin[param1];
         }
      }
      
      private function setCharViewConfigByUsername(param1:Object, param2:String) : void
      {
         if(this._charViewConfigByUsername[param2] == null)
         {
            this._charViewConfigByUsername[param2] = CharViewConfig.fromObject(param1);
         }
         else
         {
            CharViewConfig(this._charViewConfigByUsername[param2]).fromObject(param1);
         }
         dispatchEvent(new CharManagerEvent(CharManagerEvent.UPDATE_CHAR_VIEW,param2));
      }
      
      public function isLastViewCRC(param1:String, param2:String) : Boolean
      {
         return false;
      }
      
      public function loadCharViews(param1:Vector.<String>) : void
      {
         this._fscModel.charExtension.loadCharViews(param1);
      }
      
      public function getViewForCallback(param1:String, param2:Function, ... rest) : void
      {
         var _loc4_:Callback = null;
         var _loc5_:CharViewConfig = this._charViewConfigByUsername[param1];
         if(_loc5_ != null)
         {
            rest.push(_loc5_);
            param2.apply(this,rest);
         }
         else
         {
            _loc4_ = new Callback(param2);
            _loc4_.args = rest;
            this.pushToCharConfigQueue(param1,_loc4_);
         }
      }
      
      public function initAvatarBitmap(param1:Bitmap, param2:String) : void
      {
         var _loc3_:BitmapData = null;
         var _loc4_:CharViewConfig = this._charViewConfigByUsername[param2];
         if(_loc4_ == null)
         {
            this.pushToCharConfigQueue(param2,new Callback(this.initAvatarBitmap,param1,param2));
            GameSwf.charsManager.loadCharViews(new <String>[param2]);
         }
         else
         {
            _loc3_ = this.getAvatarBitmapDataByViewConfig(_loc4_);
            if(_loc3_ == null)
            {
               if(this._characterEditorLoadingCallbacks == null)
               {
                  this._characterEditorLoadingCallbacks = new Vector.<Callback>();
               }
               this._characterEditorLoadingCallbacks.push(new Callback(this.initAvatarBitmap,param1,param2));
            }
            else
            {
               param1.bitmapData = _loc3_;
            }
         }
      }
      
      private function onCharEditorLoadingComplete(param1:Event) : void
      {
         var _loc2_:Callback = null;
         if(this._characterEditorLoadingCallbacks != null)
         {
            for each(_loc2_ in this._characterEditorLoadingCallbacks)
            {
               _loc2_.call();
            }
            this._characterEditorLoadingCallbacks.length = 0;
         }
      }
      
      private function pushToCharConfigQueue(param1:String, param2:Callback) : void
      {
         if(this._charConfigCallbackForByLogin[param1] == null)
         {
            this._charConfigCallbackForByLogin[param1] = [];
         }
         (this._charConfigCallbackForByLogin[param1] as Array).push(param2);
      }
      
      public function setCharLevelConfigByUsername(param1:String, param2:int, param3:String) : void
      {
         if(this._charLevelConfigByUsername[param3] == null)
         {
            this._charLevelConfigByUsername[param3] = new CharLevelConfig();
         }
         this._charLevelConfigByUsername[param3][param1] = param2;
      }
      
      public function getLevelInfo(param1:String) : CharLevelConfig
      {
         return this._charLevelConfigByUsername[param1];
      }
      
      public function getFieldCharBitmapDataByViewConfig(param1:CharViewConfig) : BitmapData
      {
         if(GameSwf.instance.animatedCharacter.isLoaded)
         {
            return GameSwf.instance.animatedCharacter.getBitmapDataByCharacterConfig(param1);
         }
         return null;
      }
      
      public function getAvatarBitmapDataByViewConfig(param1:CharViewConfig) : BitmapData
      {
         if(GameSwf.instance.charEditorLoader == null)
         {
            GameSwf.instance.initCharacterEditor(Config.CHARACTER_EDITOR_URL);
            GameSwf.instance.charEditorLoader.addEventListener(Event.COMPLETE,this.onCharEditorLoadingComplete);
            return null;
         }
         if(GameSwf.instance.charEditorLoader != null && GameSwf.instance.charEditorLoader.isLoaded)
         {
            return GameSwf.instance.charEditorLoader.getCharacterBitmapDataByViewConfig(param1);
         }
         return null;
      }
      
      public function getCharViewConfigByUsername(param1:String) : CharViewConfig
      {
         return this._charViewConfigByUsername[param1];
      }
   }
}

