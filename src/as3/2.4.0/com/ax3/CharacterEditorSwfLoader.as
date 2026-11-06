package com.ax3
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.core.FishaoApp;
   import com.ax3.fishao.core.ICEditor;
   import com.ax3.fishao.core.ICharacterEditor;
   import com.ax3.fishao.display.dialogs.LoadingScreen;
   import com.ax3.fishao.model.InventoryModel;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.model.info.BuildConfig;
   import com.ax3.fishao.tutorial.ManagerTutorial;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.net.BinaryLoaderRepeatable;
   import com.ax3.net.LoadingIndicator;
   import com.ax3.utils.empty;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.setTimeout;
   import protocol.sr.GetDataResp;
   
   public class CharacterEditorSwfLoader extends EventDispatcher
   {
      
      private var _characterEditor:ICharacterEditor;
      
      private var _showed:Boolean;
      
      private var _loader:BinaryLoaderRepeatable;
      
      private var _tempContainer:DisplayObjectContainer;
      
      private var _isNew:Boolean = true;
      
      private var _colors:Object;
      
      private var _loadingIndicator:LoadingIndicator;
      
      private var _isLoaded:Boolean;
      
      private var _extraClothesItems:Array;
      
      public function CharacterEditorSwfLoader(param1:String)
      {
         var url:String = param1;
         this._extraClothesItems = [];
         super();
         this._loader = new BinaryLoaderRepeatable(3);
         this._loader.addEventListener(Event.COMPLETE,this.onGameSwfLoadComplete);
         this._loader.addEventListener(IOErrorEvent.IO_ERROR,this.onGameSwfLoadError);
         Cc.log("Load " + url);
         this._loader.load(new URLRequest(url),new LoaderContext(false,ApplicationDomain.currentDomain));
         this._loadingIndicator = new LoadingIndicator(LoadingScreen.TYPE_TIPS);
         this._loadingIndicator.progressHandler = this.loadingProgress;
         this._loadingIndicator.start();
         if(BuildConfig.isLocal() && false)
         {
            setTimeout(function():void
            {
               _loader.load(new URLRequest(url),new LoaderContext(false,ApplicationDomain.currentDomain));
            },5000);
         }
         else
         {
            this._loader.load(new URLRequest(url),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this._isLoaded = false;
      }
      
      private function onGameSwfLoadError(param1:IOErrorEvent) : void
      {
         Cc.error("CharacterEditor Loading Error",param1.toString());
      }
      
      private function loadingProgress() : Number
      {
         var _loc1_:Number = 0;
         if(Boolean(this._loader) && this._loader.bytesTotal > 0)
         {
            _loc1_ = this._loader.bytesLoaded / this._loader.bytesTotal;
         }
         return _loc1_;
      }
      
      private function onGameSwfLoadComplete(param1:Event = null) : void
      {
         this._loader.removeEventListener(Event.COMPLETE,this.onGameSwfLoadComplete);
         this._loader.removeEventListener(IOErrorEvent.IO_ERROR,this.onGameSwfLoadError);
         var _loc2_:DisplayObject = this._loader.content;
         this._characterEditor = _loc2_ as ICharacterEditor;
         this._characterEditor.setI18Conv(I18n.get);
         if(this._tempContainer != null)
         {
            this.show(this._tempContainer,this._isNew,this._colors);
            this._tempContainer = null;
         }
         this.setLoadComplete();
      }
      
      public function show(param1:DisplayObjectContainer, param2:Boolean, param3:Object) : void
      {
         var _loc4_:CharViewConfig = CharViewConfig.fromObject(FishaoApp(app).char);
         if(this._characterEditor != null)
         {
            this._characterEditor.setI18Conv(I18n.get);
            this._characterEditor.setDefault(_loc4_,this.onOkClick,this.onCloseClick,this.onLoginNowButtonClick,param3,param2,app.user.isGuest,app.user.isModerator,false);
            this._characterEditor.updateCharacter(_loc4_);
            Cc.log("app.user : " + app.user);
            PopupManager.getInstance().showAt(PopupManager.DIALOG_LAYER,this._characterEditor);
            PopupManager.LOADING_SCREEN.removeIndicator(this._loadingIndicator);
            if(!empty(app.sid))
            {
               FishaoFscModelManager.updateExtension.getCharacterEditorLockedItems(this.onLockedItemsReceived);
            }
            this._extraClothesItems = app.user.inventory.extraClothesItems;
            this._characterEditor.setExtraList(this._extraClothesItems);
            this._characterEditor.setActiveTab(InventoryModel.currentLookIdForCharEditor);
            this._showed = true;
         }
         else
         {
            PopupManager.LOADING_SCREEN.addIndicator(this._loadingIndicator);
            this._tempContainer = param1;
            this._isNew = param2;
            this._colors = param3;
         }
      }
      
      private function onLockedItemsReceived(param1:GetDataResp) : void
      {
         var _loc2_:Array = null;
         if(param1.data.hasOwnProperty("closedClothing"))
         {
            _loc2_ = JSON.parse(param1.data.closedClothing) as Array;
            if(_loc2_ != null)
            {
               this._characterEditor.setLockedList(_loc2_);
            }
         }
      }
      
      private function onCloseClick(param1:MouseEvent) : void
      {
         this.close();
         InventoryModel.currentLookIdForCharEditor = 0;
      }
      
      private function onOkClick(param1:MouseEvent) : void
      {
         FishaoFscModelManager.updateExtension.update(ICEditor(this._characterEditor).getCharacter(),app.sid);
         this.close();
         var _loc2_:ManagerTutorial = GameSwf.instance.managerTutorial;
         if(!_loc2_.isTutorialCommonComplete)
         {
            _loc2_.tryStartTutorialCommon();
         }
      }
      
      public function updateCharacterEditor() : void
      {
         FishaoFscModelManager.updateExtension.update(ICEditor(this._characterEditor).getCharacter(),app.sid);
      }
      
      public function close() : void
      {
         this._isNew = false;
         if(!this._showed)
         {
            return;
         }
         PopupManager.getInstance().close(this._characterEditor);
         this._showed = false;
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function getCharacterBitmapDataByViewConfig(param1:CharViewConfig) : BitmapData
      {
         return this._characterEditor.getCharacterBitmapDataByViewConfig(param1);
      }
      
      private function setLoadComplete() : void
      {
         this._isLoaded = true;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function onLoginNowButtonClick(param1:MouseEvent) : void
      {
         PopupManager.LOADING_SCREEN.removeIndicator(this._loadingIndicator);
      }
      
      public function get isLoaded() : Boolean
      {
         return this._isLoaded;
      }
      
      public function get isShowed() : Boolean
      {
         return this._showed;
      }
   }
}

