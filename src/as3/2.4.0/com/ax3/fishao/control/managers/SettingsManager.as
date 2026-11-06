package com.ax3.fishao.control.managers
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.display.dialogs.ReloadDialog;
   import com.ax3.fishao.model.SettingsModel;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.DateUtils;
   import com.ax3.utils.string.zeroPad;
   import flash.events.DataEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import protocol.sr.ErrorResp;
   import protocol.sr.RegisterErrorResp;
   import protocol.sr.SettingsSaveSuccessResp;
   
   public class SettingsManager extends EventDispatcher
   {
      
      public static const MUSIC_VOLUME:String = "music_volume";
      
      public static const SFX_VOLUME:String = "sfx_volume";
      
      public static const FLOAT_CHANGE:String = "float_change";
      
      public static const CHANGE_PREV_EMAIL:String = "changePrevEmail";
      
      private var _settingsEntity:SettingsModel = new SettingsModel();
      
      public function SettingsManager()
      {
         super();
      }
      
      public function init() : void
      {
      }
      
      public function getSettings() : SettingsModel
      {
         return this._settingsEntity;
      }
      
      public function updateByResponse(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         for(_loc2_ in param1)
         {
            if(_loc2_ == "birthDate")
            {
               _loc3_ = int(String(param1["birthDate"]).substr(0,4));
               _loc4_ = int(String(param1["birthDate"]).substr(5,2));
               _loc5_ = int(String(param1["birthDate"]).substr(8,2));
               this._settingsEntity.birthDate = new Date(_loc3_,_loc4_ - 1,_loc5_);
            }
            else if(_loc2_ == "bobber")
            {
               this._settingsEntity["float"] = param1["bobber"];
            }
            else if(this._settingsEntity.hasOwnProperty(_loc2_))
            {
               if(this._settingsEntity[_loc2_] != param1[_loc2_])
               {
                  this._settingsEntity[_loc2_] = param1[_loc2_];
                  this.handleSettingChange(_loc2_,this._settingsEntity[_loc2_]);
               }
            }
         }
      }
      
      private function handleSettingChange(param1:String, param2:*) : void
      {
         switch(param1)
         {
            case "float":
               dispatchEvent(new DataEvent(FLOAT_CHANGE,false,false,this.floatNumber));
               break;
            case "backMusic":
               dispatchEvent(new DataEvent(MUSIC_VOLUME,false,false,String(this._settingsEntity.backMusic)));
               break;
            case "soundEffects":
               dispatchEvent(new DataEvent(SFX_VOLUME,false,false,String(this._settingsEntity.soundEffects)));
               break;
            case "units":
               I18n.unitName = this._settingsEntity.units;
               break;
            case "timeFormat":
               I18n.timeFormat = this._settingsEntity.timeFormat;
               break;
            case "country":
               app.user.country = String(param2);
         }
      }
      
      public function saveSettings(param1:Object) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in param1)
         {
            if(this._settingsEntity.hasOwnProperty(_loc2_))
            {
               if(this._settingsEntity[_loc2_] != param1[_loc2_])
               {
                  this._settingsEntity[_loc2_] = param1[_loc2_];
                  this.handleSettingChange(_loc2_,this._settingsEntity[_loc2_]);
               }
            }
         }
         this.saveSettingsToServer();
      }
      
      private function saveSettingsToServer() : void
      {
         var _loc1_:Object = this._settingsEntity.toObject();
         if(_loc1_.hasOwnProperty("birthDate"))
         {
            _loc1_["birthDate"] = DateUtils.toServerString(_loc1_["birthDate"]);
         }
         if(_loc1_.hasOwnProperty("float"))
         {
            _loc1_["bobber"] = _loc1_["float"];
            _loc1_["float"] = null;
            delete _loc1_["float"];
         }
         FishaoFscModelManager.profileExtension.getGameSettings(_loc1_,this.onSaveGameSettingsResp);
      }
      
      private function saveOnlySoundSettings(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         for(_loc2_ in param1)
         {
            if(this._settingsEntity.hasOwnProperty(_loc2_))
            {
               if(this._settingsEntity[_loc2_] != param1[_loc2_])
               {
                  this._settingsEntity[_loc2_] = param1[_loc2_];
                  this.handleSettingChange(_loc2_,this._settingsEntity[_loc2_]);
               }
            }
         }
         _loc3_ = {};
         _loc3_.backMusic = this._settingsEntity.backMusic;
         _loc3_.soundEffects = this._settingsEntity.soundEffects;
         FishaoFscModelManager.profileExtension.getGameSoundSettings(_loc3_);
      }
      
      private function onSaveGameSettingsResp(param1:ServerResp) : void
      {
         var _loc2_:MessageDialog = null;
         if(param1 is ErrorResp)
         {
            this._settingsEntity.email = this._settingsEntity.prevEmail;
            dispatchEvent(new Event(CHANGE_PREV_EMAIL));
         }
         if(param1 is RegisterErrorResp)
         {
            _loc2_ = app.dialogFactory.getMessageDialog();
            _loc2_.setText(I18n.get("reg_error_" + RegisterErrorResp(param1).descr),false);
            _loc2_.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.OK_BUTTON;
            _loc2_.closeOnOk = true;
            _loc2_.show();
         }
         else if(param1 is SettingsSaveSuccessResp)
         {
            if((param1 as SettingsSaveSuccessResp).emailChanged)
            {
               app.user.emailActivation = 0;
               app.user.emailActivationSent = false;
               new ReloadDialog("settings_email_changed").show();
            }
            GameSwf.instance.closeSettingsDialog();
         }
      }
      
      public function get floatNumber() : String
      {
         return zeroPad(this._settingsEntity.float,2);
      }
      
      public function get music() : Boolean
      {
         return this._settingsEntity.backMusic > FishaoSoundManager.MUTE_VOLUME;
      }
      
      public function set music(param1:Boolean) : void
      {
         if(param1)
         {
            if(this._settingsEntity.backMusic > FishaoSoundManager.MUTE_VOLUME)
            {
               this.saveOnlySoundSettings({"backMusic":Math.abs(this._settingsEntity.backMusic)});
            }
            else
            {
               this.saveOnlySoundSettings({"backMusic":Math.abs(SettingsModel.DEFAULT_BACKGROUND_MUSIC_VOLUME)});
            }
         }
         else
         {
            this.saveOnlySoundSettings({"backMusic":-Math.abs(this._settingsEntity.backMusic)});
         }
      }
      
      public function get sfx() : Boolean
      {
         return this._settingsEntity.soundEffects > FishaoSoundManager.MUTE_VOLUME;
      }
      
      public function set sfx(param1:Boolean) : void
      {
         if(param1)
         {
            if(Math.abs(this._settingsEntity.soundEffects) > FishaoSoundManager.MUTE_VOLUME)
            {
               this.saveOnlySoundSettings({"soundEffects":Math.abs(this._settingsEntity.soundEffects)});
            }
            else
            {
               this.saveOnlySoundSettings({"soundEffects":Math.abs(SettingsModel.DEFAULT_SFX_VOLUME)});
            }
         }
         else
         {
            this.saveOnlySoundSettings({"soundEffects":-Math.abs(this._settingsEntity.soundEffects)});
         }
      }
      
      public function changeMusicVolumeWithoutSaving(param1:Number) : void
      {
         this._settingsEntity.backMusic = param1;
         dispatchEvent(new DataEvent(MUSIC_VOLUME,false,false,String(this._settingsEntity.backMusic)));
      }
      
      public function changeSfxVolumeWithoutSaving(param1:Number) : void
      {
         this._settingsEntity.soundEffects = param1;
         dispatchEvent(new DataEvent(SFX_VOLUME,false,false,String(this._settingsEntity.soundEffects)));
      }
      
      public function setEmail(param1:String) : void
      {
         this._settingsEntity["email"] = param1;
      }
   }
}

