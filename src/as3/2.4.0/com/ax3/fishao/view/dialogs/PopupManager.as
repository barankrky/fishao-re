package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.display.dialog.LoadingScreenLayer;
   import com.ax3.events.GameResizeEvent;
   import com.ax3.events.Listeners;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.core.ICharacterEditor;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   import com.ax3.utils.Input;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   public class PopupManager
   {
      
      public static var TOP_LAYER:TopPopupGroup = new TopPopupGroup(1);
      
      public static var LOADING_SCREEN:LoadingScreenLayer = new LoadingScreenLayer();
      
      public static var DIALOG_LAYER:DialogPopupGroup = new DialogPopupGroup(3);
      
      public static var GAME_FIELD_LAYER:FieldPopupGroup = new FieldPopupGroup(4);
      
      public static var TUTORIAL_LAYER:Sprite = new Sprite();
      
      private static var _instance:PopupManager = null;
      
      private static var _visibleDialogs:int = 0;
      
      private var _layerByDialog:Dictionary = new Dictionary(true);
      
      private var _currentDialog:IBaseDialog;
      
      public function PopupManager()
      {
         super();
         if(_instance != null)
         {
            throw new Error("Use getInstance() method");
         }
         LOADING_SCREEN.hide();
         TOP_LAYER.closeAnimationCompleteHandler = this.onCloseAnimationComplete;
         DIALOG_LAYER.closeAnimationCompleteHandler = this.onCloseAnimationComplete;
      }
      
      public static function getInstance() : PopupManager
      {
         if(_instance == null)
         {
            _instance = new PopupManager();
         }
         return _instance;
      }
      
      public static function isAnyDialogVisible() : Boolean
      {
         return _visibleDialogs > 0;
      }
      
      public static function isDialogLayerHasChild() : Boolean
      {
         return DIALOG_LAYER.numChildren > 0;
      }
      
      public static function closeAllDialogs(param1:Array = null) : void
      {
         TOP_LAYER.closeAllExcept(param1);
         DIALOG_LAYER.closeAllExcept();
         GAME_FIELD_LAYER.closeAllExcept();
         var _loc2_:Sprite = TUTORIAL_LAYER;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
      }
      
      public function get isDialogBaseOpen() : Boolean
      {
         return this._currentDialog != null && this._currentDialog is DialogBase;
      }
      
      private function onCloseAnimationComplete(param1:IPopupGroup, param2:IBaseDialog) : void
      {
         this.updateFrontDialog();
      }
      
      private function onKeyPress(param1:KeyboardEvent) : void
      {
         if(param1.keyCode != Keyboard.ESCAPE)
         {
            return;
         }
         if(this._currentDialog == null || !this._currentDialog.canClosedByEsc)
         {
            return;
         }
         this._currentDialog.close();
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ESCAPE && this._currentDialog != null && this._currentDialog.canClosedByEsc)
         {
            param1.preventDefault();
         }
      }
      
      public function init(param1:IEventDispatcher) : void
      {
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_1S).addFunction(this.update1S);
         param1.addEventListener(GameResizeEvent.RESIZE,this.onGameResize);
         Listeners.addEventListener(this,GameSwf.stage,KeyboardEvent.KEY_UP,this.onKeyPress);
         Listeners.addEventListener(this,GameSwf.stage,KeyboardEvent.KEY_DOWN,this.onKeyDown);
      }
      
      private function update1S(param1:uint, param2:uint) : void
      {
         this.onUpdate();
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         TOP_LAYER.update();
         DIALOG_LAYER.update();
         if(DIALOG_LAYER.stage !== null && DIALOG_LAYER.stage.focus != null && DIALOG_LAYER.stage.focus.stage == null)
         {
            DIALOG_LAYER.stage.focus = null;
         }
      }
      
      public function showTop(param1:IBaseDialog) : void
      {
         this.showAt(TOP_LAYER,param1);
      }
      
      public function showDialog(param1:IBaseDialog) : void
      {
         this.showAt(DIALOG_LAYER,param1);
      }
      
      public function showAt(param1:IPopupGroup, param2:IBaseDialog) : void
      {
         Input.clear();
         var _loc3_:Boolean = param2 in this._layerByDialog;
         this._layerByDialog[param2] = param1;
         this._currentDialog = param2 as IBaseDialog;
         if(param1 != GAME_FIELD_LAYER && param1 != LOADING_SCREEN && !_loc3_)
         {
            ++_visibleDialogs;
            this.inspectVisibleDialogSound();
         }
         param1.show(param2);
         this.updateFrontDialog();
         this.inspectVisibleDialogSound();
      }
      
      private function updateFrontDialog() : void
      {
         var _loc1_:IBaseDialog = null;
         if(_loc1_ == null)
         {
            _loc1_ = DIALOG_LAYER.getFrontDialog();
         }
         if(_loc1_ == null)
         {
            _loc1_ = GAME_FIELD_LAYER.getFrontDialog();
         }
         if(this._currentDialog != null)
         {
            this._currentDialog.onLostFrontPosition();
         }
         this._currentDialog = _loc1_;
         if(this._currentDialog != null)
         {
            this._currentDialog.onSetFrontPosition();
         }
      }
      
      private function dialogClass(param1:IBaseDialog) : Class
      {
         var _loc2_:String = getQualifiedClassName(param1);
         return getDefinitionByName(_loc2_) as Class;
      }
      
      public function showDialogWithOverlay(param1:IBaseDialog) : void
      {
         this._layerByDialog[param1] = DIALOG_LAYER;
         ++_visibleDialogs;
         this.inspectVisibleDialogSound();
         DIALOG_LAYER.showWithOverlay(param1);
         this.updateFrontDialog();
      }
      
      public function close(param1:IBaseDialog) : void
      {
         var _loc2_:BasePopupGroup = this._layerByDialog[param1];
         if(_loc2_)
         {
            _loc2_.close(param1);
            if(this._layerByDialog[param1] != GAME_FIELD_LAYER && this._layerByDialog[param1] != LOADING_SCREEN)
            {
               --_visibleDialogs;
               this.inspectVisibleDialogSound();
            }
            this._layerByDialog[param1] = null;
            delete this._layerByDialog[param1];
         }
         this._currentDialog = null;
         this.updateFrontDialog();
      }
      
      private function onGameResize(param1:GameResizeEvent) : void
      {
         TOP_LAYER.screenSizeChanged();
         DIALOG_LAYER.screenSizeChanged();
         GAME_FIELD_LAYER.screenSizeChanged();
         LOADING_SCREEN.screenSizeChanged();
      }
      
      public function isAnyDialogVisible() : Boolean
      {
         return TOP_LAYER.isAnyDialogVisible() || DIALOG_LAYER.isAnyDialogVisible();
      }
      
      public function removeAll() : void
      {
         var _loc1_:Object = null;
         for(_loc1_ in this._layerByDialog)
         {
            if(_loc1_ is IBaseDialog)
            {
               this.close(IBaseDialog(_loc1_));
            }
            this._layerByDialog[_loc1_] = null;
            delete this._layerByDialog[_loc1_];
         }
         _visibleDialogs = 0;
         this.inspectVisibleDialogSound();
         this._currentDialog = null;
      }
      
      private function inspectVisibleDialogSound() : void
      {
         if(_visibleDialogs >= 1 && !(this._currentDialog is SettingsSwfDialog))
         {
            FishaoSoundManager.lowerBgSound();
         }
         if(_visibleDialogs == 0 && !(this._currentDialog is SettingsSwfDialog) || (this._currentDialog is ICharacterEditor || this._currentDialog is TimezoneSwfDialog) && _visibleDialogs == 1)
         {
            FishaoSoundManager.upperBgSound();
         }
      }
      
      public function currentDialog() : IBaseDialog
      {
         return this._currentDialog;
      }
      
      public function getDialogByType(param1:String) : DialogBase
      {
         var _loc2_:Object = null;
         var _loc3_:DialogBase = null;
         var _loc4_:DialogBase = null;
         for(_loc2_ in this._layerByDialog)
         {
            _loc3_ = _loc2_ as DialogBase;
            if(!(_loc3_ == null || _loc3_.type != param1))
            {
               _loc4_ = _loc3_;
            }
         }
         return _loc4_;
      }
      
      public function showMessageDialog(param1:String) : void
      {
         var _loc2_:MessageDialog = app.dialogFactory.getMessageDialog();
         _loc2_.setText(I18n.get(param1));
         _loc2_.buttons = MessageDialog.OK_BUTTON;
         _loc2_.closeOnOk = true;
         _loc2_.show();
      }
      
      public function tryUpdateCurrentDialog(param1:String, param2:String = null) : void
      {
         if(this._currentDialog == null || !(this._currentDialog is DialogBase))
         {
            return;
         }
         var _loc3_:DialogBase = this._currentDialog as DialogBase;
         if(param2 == null || param2 != null && _loc3_.type == param2)
         {
            _loc3_.update(param1);
         }
      }
   }
}

